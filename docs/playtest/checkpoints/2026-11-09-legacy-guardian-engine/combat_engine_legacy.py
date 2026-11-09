"""Conversation reconstruction: legacy Sealed Gate three-way combat simulation.
This preserves historical simulation assumptions, not the later B01-B03 rules.
"""
import random
import itertools
import copy
import json
from functools import lru_cache
import numpy as np
import pandas as pd

RULES_BASELINE = '5ba56ae337cb8196b877b5ee4576907f32c90f80'
OPEN=[('Tavi','Maneuver'),('Mara','Attack'),('Ione','Attack')]
ACTIONS={'Mara':['Attack'],'Tavi':['Attack','Maneuver','Feint'],'Ione':['Attack','Maneuver','Feint']}
PRIORS={'Gatekeeper':{'Maneuver':.60,'Defend':.25,'Attack':.10,'Feint':.05},'Sentinel':{'Attack':.70,'Defend':.20,'Maneuver':.10}}
MODS={('Mara','Attack'):6,('Tavi','Maneuver'):6,('Tavi','Feint'):5,('Tavi','Attack'):4,('Ione','Attack'):6,('Ione','Maneuver'):3,('Ione','Feint'):1}
RATINGS={'Gatekeeper':{'Attack':5,'Defend':5,'Maneuver':8,'Feint':3},'Sentinel':{'Attack':6,'Defend':4,'Maneuver':4}}
LOG=[]

def true_script(ex):
    return [('Gatekeeper','Maneuver'),('Sentinel','Attack'),('Gatekeeper','Defend')] if ex%2==0 else [('Sentinel','Attack'),('Gatekeeper','Maneuver'),('Sentinel','Defend')]

def initial(seed):
    r=random.Random(seed)
    start=(sum(r.randint(1,12) for _ in range(2))+6)//3+2
    return {'pc':start,'start':start,'npc':13,'woe':6,'momentum':1,'pool':{'Mara':16,'Tavi':16,'IonePsy':9,'IonePne':16},'tyche':{'Mara':1,'Tavi':2,'Ione':1},'inj':set(),'trades':0,'unleash':False,'dead':False,'truth':False,'impP':False,'impN':False,'posP':False,'posN':False,'penN':{'Gatekeeper':0,'Sentinel':0},'known':{},'discoveries':0,'paid':0,'rescripts':0,'repairs':0,'repairpoints':0,'area':0,'lastN':{},'lastGuardian':None,'lastPC':None,'trans':{},'declined':0,'orderchanges':0,'info_evaluations':0}

@lru_cache(None)
def dist(n):
    a=np.indices((12,)*n).reshape(n,-1).T+1
    k=np.sort(a,axis=1)[:,-2:]
    sums=k.sum(axis=1)
    crit=np.where(k[:,0]==k[:,1],np.where(k[:,0]==12,2,1),0)
    vals,counts=np.unique(np.stack([sums,crit],axis=1),axis=0,return_counts=True)
    return vals[:,0],vals[:,1],counts/counts.sum()

def utility(s,a,act,na,nact,position=0):
    mod=MODS[(a,act)]-(4 if a in s['inj'] and (a!='Ione' or act=='Maneuver') else 0)
    if position==0 and s['impP']:mod-=3
    pn=2+int(a=='Mara')+int(a=='Tavi' or (a=='Ione' and act!='Attack' and s['pool']['IonePsy']>3))
    pn+=int(position==0 and s['posP'])
    pn+=int(s['momentum']>0)
    pn=min(4,pn)
    nn=min(4,2+int(s['woe']>0)+int(na=='Sentinel' and nact=='Attack' and not s['dead'])+int(position==0 and s['posN']))
    nm=RATINGS[na][nact]-s['penN'][na]-(3 if position==0 and s['impN'] else 0)
    px,pc,pw=dist(pn)
    nx,nc,nw=dist(nn)
    independent=(act==nact and act in ('Attack','Maneuver','Defend')) or {act,nact} in ({'Feint','Maneuver'},{'Feint','Attack'},{'Feint','Defend'})
    pt=act=='Feint' and nact=='Attack'
    nt=(act=='Feint' and nact=='Defend') or (act=='Attack' and nact=='Feint')
    if independent:
        target=15+(2 if na=='Gatekeeper' else 1)+(3 if s['truth'] and act=='Attack' else 0)
        pm=px+mod-target
        nmarg=nx+nm-15
        pp=np.where(pm>=0,1+pm//3+pc,np.where(pm>=-3,1,0))
        npow=np.where(nmarg>=0,1+nmarg//3+nc,np.where(nmarg>=-3,1,0))
        pp=pp[:,None]+np.zeros((1,len(nx)))
        npow=npow[None,:]+np.zeros((len(px),1))
        if pt:pp*=0
        if nt:npow*=0
    else:
        margin=px[:,None]+mod-nx[None,:]-nm
        pp=np.where(margin>0,1+margin//3+pc[:,None],0)
        npow=np.where(margin<0,1+(-margin)//3+nc[None,:],0)
    if a=='Ione' and act=='Attack' and s['pool']['IonePne']>2:pp=pp+(pp>0)
    if act in ('Attack','Feint'):
        pvalue=np.where(pp>0,pp+1,0)
        if a=='Ione' and not s['unleash'] and s['pool']['IonePne']>3:pvalue=pvalue+(pp>0)
    else:pvalue=1.0*(pp>=1)+1.2*(pp>=2)+.45*np.maximum(pp-2,0)
    if nact=='Attack':nvalue=np.where(npow>0,npow+1,0)+(2*(npow>0) if independent and s['woe']>=2 else 0)
    elif nact=='Defend':nvalue=np.minimum(npow,max(0,13-s['npc']))
    elif nact=='Maneuver':nvalue=1.0*(npow>=1)+1.2*(npow>=2)+(1.0*(npow>=1) if not s['truth'] and na=='Gatekeeper' else 0)
    else:nvalue=np.where(npow>0,npow+1,0)
    return float(np.sum((pvalue-nvalue)*pw[:,None]*nw[None,:]))

def predict_scenarios(s,actors,ex,offset=0):
    scenarios=[((),1.,dict(s['lastN']))]
    for j,na in enumerate(actors):
        new=[]
        for seq,p,last in scenarios:
            known=s['known'].get((ex,j+offset))
            if known:probs={known:1.}
            else:
                counts=s['trans'].get((na,last.get(na)),{})
                total=2+sum(counts.values())
                probs={ac:(2*pr+counts.get(ac,0))/total for ac,pr in PRIORS[na].items()}
            for ac,prob in probs.items():
                ll=dict(last)
                ll[na]=ac
                new.append((seq+(ac,),p*prob,ll))
        scenarios=new
    return [x[0] for x in scenarios],np.array([x[1] for x in scenarios])

def actors_after(last,n=3):
    first='Sentinel' if last=='Gatekeeper' else 'Gatekeeper'
    other='Gatekeeper' if first=='Sentinel' else 'Sentinel'
    return [first if i%2==0 else other for i in range(n)]

def plan_table(s,ex,actors,last_pc):
    seq,p=predict_scenarios(s,actors,ex)
    plans=[]
    for order in itertools.permutations(['Mara','Tavi','Ione']):
        if order[0]==last_pc:continue
        for acts in itertools.product(*(ACTIONS[a] for a in order)):plans.append(list(zip(order,acts)))
    scores={(v,a,ac,naction):utility(s,a,ac,na,naction,v) for v,na in enumerate(actors) for a in ACTIONS for ac in ACTIONS[a] for naction in PRIORS[na]}
    matrix=np.array([[sum(scores[(v,a,ac,sq[v])] for v,(a,ac) in enumerate(plan)) for sq in seq] for plan in plans])
    return plans,seq,p,matrix

def one_plan(s,ex,actors,last_pc):
    plans,seq,p,m=plan_table(s,ex,actors,last_pc)
    return plans[int(np.argmax(m@p))]

def one_voi(s,ex,actors,last_pc,guardian):
    plans,seq,p,m=plan_table(s,ex,actors,last_pc)
    before=float(np.max(m@p))
    groups={}
    idx=[j for j,a in enumerate(actors) if a==guardian]
    best0=int(np.argmax(m@p))
    after=0.
    changed=0.
    for i,sq in enumerate(seq):groups.setdefault(tuple(sq[j] for j in idx),[]).append(i)
    for ids in groups.values():
        mass=float(p[ids].sum())
        vals=m[:,ids]@p[ids]
        best=int(np.argmax(vals))
        after+=float(vals[best])
        changed+=mass*(best!=best0)
    return max(0.,after-before),changed

def battle_step(s,ex,v,a,act,na,nact,seed,info_hook=None,answer_provider=None):
    def dice(side,n,re=0):
        r=random.Random(seed+100000*(ex+1)+1000*(v+1)+100*side+10*re)
        d=[r.randint(1,12) for _ in range(n)]
        return d,sorted(d,reverse=True)[:2]
    def pcroll(target,opp=None):
        penalty=4 if a in s['inj'] and (a!='Ione' or act=='Maneuver') else 0
        mod=MODS[(a,act)]-penalty-(3 if s['impP'] else 0)
        s['impP']=False
        n=2+int(s['posP'])
        s['posP']=False
        eff=False
        if a=='Mara':n+=1
        if a=='Tavi' and act=='Maneuver':
            if n<4:n+=1;eff=True
        elif a in ('Mara','Tavi'):
            if n<4 and s['pool'][a]>1:s['pool'][a]-=1;n+=1;eff=True
        elif a=='Ione' and act in ('Maneuver','Feint'):
            if n<4 and s['pool']['IonePsy']>3:s['pool']['IonePsy']-=3;n+=1;eff=True
        bought=0
        while n<4:
            price=1 if bought==0 else 2
            if s['momentum']<price:break
            s['momentum']-=price
            n+=1
            bought+=1
        d,k=dice(0,n)
        total=sum(k)+mod
        threshold=target if opp is None else opp+1
        if total<threshold and s['tyche'][a]>0:
            if total+2>=threshold:total+=2;s['tyche'][a]-=1
            elif 24+mod>=threshold:s['tyche'][a]-=1;d,k=dice(0,n,1);total=sum(k)+mod
        return {'dice':d,'kept':k,'total':total,'effort':eff}
    def npcroll(ind):
        mod=RATINGS[na][nact]-s['penN'][na]-(3 if s['impN'] else 0)
        s['impN']=False
        n=2+int(s['posN'])
        s['posN']=False
        if na=='Sentinel' and nact=='Attack' and not s['dead']:n+=1;s['dead']=True
        area=False
        if nact=='Attack' and ind and s['woe']>=2:s['woe']-=2;area=True;s['area']+=1
        if n<4 and s['woe']>0:s['woe']-=1;n+=1
        d,k=dice(1,n)
        return {'dice':d,'kept':k,'total':sum(k)+mod,'area':area}
    def power(r,target,versus=False):
        margin=r['total']-target
        success=margin>0 if versus else margin>=0
        cost=not versus and -3<=margin<0
        p=1+margin//3 if success else (1 if cost else 0)
        double=r['kept'][0]==r['kept'][1]
        if success and double:p+=2 if r['kept'][0]==12 else 1
        return p,success,cost,(double and not success) or r['kept']==[1,1]
    pt=(act=='Feint' and nact=='Attack')
    nt=(act=='Feint' and nact=='Defend') or (act=='Attack' and nact=='Feint')
    independent=(act==nact and act in ('Attack','Maneuver','Defend')) or {act,nact} in ({'Feint','Maneuver'},{'Feint','Attack'},{'Feint','Defend'})
    target=15+(2 if na=='Gatekeeper' else 1)+(3 if s['truth'] and act=='Attack' else 0)
    if independent:
        pr=None if pt else pcroll(target)
        nr=None if nt else npcroll(True)
        if pr:pp,ps,pc,pcomp=power(pr,target)
        else:pp=0;ps=pc=pcomp=False;s['impP']=False;s['posP']=False
        if nr:npow,ns,nc,ncomp=power(nr,15)
        else:npow=0;ns=nc=ncomp=False;s['impN']=False;s['posN']=False
    else:
        nr=npcroll(False)
        pr=pcroll(target,nr['total'])
        pp,ps,pc,pcomp=power(pr,nr['total'],True)
        npow,ns,nc,ncomp=power(nr,pr['total'],True)
    if independent:
        if pr is not None and not ps:s['woe']+=1
        if nr is not None and not ns:s['woe']+=1
    if pcomp:s['woe']+=2
    if ncomp:
        if s['woe']>=2:s['woe']-=2
        else:s['penN'][na]+=1
    if a=='Ione' and act=='Attack' and pp>0 and not pr['effort'] and s['pool']['IonePne']>2:s['pool']['IonePne']-=2;pp+=1
    old=s['lastN'].get(na)
    counts=s['trans'].setdefault((na,old),{})
    counts[nact]=counts.get(nact,0)+1
    s['lastN'][na]=nact
    s['lastGuardian']=na
    s['lastPC']=a
    discovered=False
    detail={}
    if pp>0 and info_hook:
        buy,detail=info_hook(s,pp,a,act,na,ex,v)
        if buy:
            pp-=1
            s['discoveries']+=1
            discovered=True
            for j,ac in answer_provider(ex+1,na):s['known'][(ex+1,j)]=ac
    if pp>0:
        if act in ('Attack','Feint'):
            damage=pp+1
            if a=='Ione' and not s['unleash'] and s['pool']['IonePne']>3:s['unleash']=True;s['pool']['IonePne']-=3;damage+=1
            s['npc']=max(0,s['npc']-damage)
        elif act=='Maneuver':
            if pp>=1:s['posP']=True;pp-=1
            if pp>=1:s['impN']=True;pp-=1
            s['momentum']=min(6,s['momentum']+pp)
    if npow>0:
        if nact in ('Attack','Feint'):
            damage=npow+1+(2 if nr.get('area',False) else 0)
            if damage>=s['pc'] and damage-3<s['pc']:
                for who in [a]+[x for x in ['Mara','Tavi','Ione'] if x!=a]:
                    if who not in s['inj']:s['inj'].add(who);s['trades']+=1;damage=max(0,damage-3);break
            s['pc']=max(0,s['pc']-damage)
        elif nact=='Defend':s['npc']=min(13,s['npc']+npow)
        elif nact=='Maneuver':
            if not s['truth'] and na=='Gatekeeper':s['truth']=True;npow-=1
            if npow>=1:s['posN']=True;npow-=1
            if npow>=1:s['impP']=True;npow-=1
        if s['woe']>=1 and s['npc']<13:
            s['woe']-=1
            before=s['npc']
            s['npc']=min(13,s['npc']+2)
            s['repairs']+=1
            s['repairpoints']+=s['npc']-before
    return {'pc_dice':pr['dice'] if pr else [],'pc_total':pr['total'] if pr else None,'npc_dice':nr['dice'] if nr else [],'npc_total':nr['total'] if nr else None,'discovered':discovered,**detail}

def sample_futures(s,ex,actors,seed,n=12):
    out=[]
    for k in range(n):
        r=random.Random(seed+7919*k)
        ss=copy.deepcopy(s)
        future=[]
        order=[actors[0] if j%2==0 else actors[1] for j in range(6)]
        for j,na in enumerate(order):
            ee=ex+j//3
            vv=j%3
            known=ss['known'].get((ee,vv))
            if known:ac=known
            else:
                counts=ss['trans'].get((na,ss['lastN'].get(na)),{})
                total=2+sum(counts.values())
                acs=list(PRIORS[na])
                weights=[(2*PRIORS[na][ac]+counts.get(ac,0))/total for ac in acs]
                ac=r.choices(acs,weights)[0]
            counts=ss['trans'].setdefault((na,ss['lastN'].get(na)),{})
            counts[ac]=counts.get(ac,0)+1
            ss['lastN'][na]=ac
            future.append((na,ac))
        out.append((future,seed+10000000+104729*k))
    return out

def terminal_value(s):
    injuries=len(s['inj'])
    hp=s['pc']/s['start']
    if s['pc']==0 and s['npc']==0:return -90-3*injuries
    if s['pc']==0:return -100-3*injuries
    if s['npc']==0:return 100+10*hp-3*injuries
    resources=sum(s['pool'].values())/57
    return 60*(hp-s['npc']/13)-8*injuries+8*sum(s['tyche'].values())/4+5*resources-3*s['woe']/6

def second_plan(s,ex,actors,order):
    seq,p=predict_scenarios(s,actors,ex)
    result=[]
    for j,a in enumerate(order):
        if a=='Mara':ac='Attack'
        else:
            probs={x:sum(float(w) for sq,w in zip(seq,p) if sq[j]==x) for x in PRIORS[actors[j]]}
            pred=max(probs,key=probs.get)
            ac={'Attack':'Maneuver','Maneuver':'Attack','Defend':'Feint','Feint':'Attack'}[pred]
        result.append((a,ac))
    return result

def rollout_table(s,ex,actors,last_pc,seed,n=12):
    plans,seq,p,m=plan_table(s,ex,actors,last_pc)
    shortlist=list(np.argsort(m@p)[-6:])
    candidates=[plans[int(i)] for i in shortlist]
    for extra in [OPEN,[(a,'Attack' if a=='Mara' else 'Maneuver' if a=='Tavi' else 'Attack') for a,ac in OPEN]]:
        if extra[0][0]!=last_pc and extra not in candidates:candidates.append(extra)
    futures=sample_futures(s,ex,actors,seed,n)
    matrix=np.empty((len(candidates),n))
    for i,plan in enumerate(candidates):
        for k,(future,rollseed) in enumerate(futures):
            ss=copy.deepcopy(s)
            curplan=plan
            for j,(na,nact) in enumerate(future):
                if j==3:curplan=second_plan(ss,ex+1,[x[0] for x in future[3:]],[a for a,ac in plan])
                a,act=curplan[j%3]
                battle_step(ss,ex+j//3,j%3,a,act,na,nact,rollseed)
                if ss['pc']==0 or ss['npc']==0:break
            matrix[i,k]=terminal_value(ss)
    return candidates,futures,matrix

def risk_scores(matrix):
    return matrix.mean(axis=1)-.15*matrix.std(axis=1)

def long_plan(s,ex,actors,last_pc,seed):
    plans,futures,m=rollout_table(s,ex,actors,last_pc,seed)
    return plans[int(np.argmax(risk_scores(m)))]

def long_voi(s,ex,actors,last_pc,guardian,seed):
    plans,futures,m=rollout_table(s,ex,actors,last_pc,seed)
    base=risk_scores(m)
    b0=int(np.argmax(base))
    groups={}
    for k,(future,rollseed) in enumerate(futures):
        answer=tuple((j,ac) for j,(na,ac) in enumerate(future[:3]) if na==guardian)
        groups.setdefault(answer,[]).append(k)
    after=0.
    changed=0.
    for ids in groups.values():
        mass=len(ids)/len(futures)
        vals=risk_scores(m[:,ids])
        best=int(np.argmax(vals))
        after+=mass*float(vals[best])
        changed+=mass*(best!=b0)
    return max(0.,after-float(base[b0])),changed

def run(model,seed,trial):
    s=initial(seed)
    for ex in range(40):
        if ex==0 or model=='Fixed':script=list(OPEN)
        elif model=='One exchange':script=one_plan(s,ex,actors_after(s['lastGuardian']),s['lastPC'])
        else:script=long_plan(s,ex,actors_after(s['lastGuardian']),s['lastPC'],seed+1000000000+ex*1009)
        if ex>0:
            s['rescripts']+=sum(pair!=OPEN[v] for v,pair in enumerate(script))
            s['orderchanges']+=int([a for a,ac in script]!=[a for a,ac in OPEN])
        assert len({a for a,ac in script})==3 and script[0][0]!=s['lastPC']
        for v in range(3):
            a,act=script[v]
            paid=False
            if model!='Fixed' and v>0:
                actors=actors_after(s['lastGuardian'],3-v)
                seq,p=predict_scenarios(s,actors,ex,offset=v)
                vals={ac:sum(float(w)*utility(s,a,ac,actors[0],sq[0],0) for sq,w in zip(seq,p)) for ac in ACTIONS[a]}
                new=max(vals,key=vals.get)
                cost=1 if a=='Tavi' else 2
                if new!=act and s['momentum']>=cost and vals[new]-vals[act]>.9*cost:s['momentum']-=cost;act=new;s['paid']+=1;paid=True
            def info_hook(state,power,a,act,target,ee,vv):
                remaining=2-vv
                last=target if remaining%2==0 else ('Sentinel' if target=='Gatekeeper' else 'Gatekeeper')
                futureactors=actors_after(last)
                eligible=any((ee+1,j) not in state['known'] for j,na in enumerate(futureactors) if na==target)
                if not eligible:return False,{}
                marginal=(2+(1 if a=='Ione' and not state['unleash'] and state['pool']['IonePne']>3 else 0)) if act in ('Attack','Feint') and power==1 else (1.0 if act in ('Attack','Feint') else (1.0 if power==1 else 1.2 if power==2 else .45))
                if model=='One exchange':voi,changed=one_voi(state,ee+1,futureactors,script[-1][0],target);threshold=marginal
                else:
                    voi,changed=long_voi(state,ee+1,futureactors,script[-1][0],target,seed+2000000000+ee*1009+vv*37)
                    threshold=100*marginal/(state['start']+13)
                state['info_evaluations']+=1
                buy=voi>threshold and changed>.1
                if not buy:state['declined']+=1
                return buy,{'information_value':voi,'information_threshold':threshold}
            def answer_provider(ee,na):return [(j,ac) for j,(who,ac) in enumerate(true_script(ee)) if who==na]
            na,nact=true_script(ex)[v]
            event=battle_step(s,ex,v,a,act,na,nact,seed,info_hook if model!='Fixed' else None,answer_provider)
            LOG.append({'model':model,'trial':trial,'exchange':ex+1,'volley':v+1,'actor':a,'action':act,'opponent':na,'opponent_action':nact,'hunter_disposition':s['pc'],'guardian_disposition':s['npc'],'paid_change':paid,**event})
            if s['pc']==0 or s['npc']==0:
                winner='Mutual defeat' if s['pc']==s['npc']==0 else 'Hunters' if s['npc']==0 else 'Guardians'
                rem=s['pc']/s['start'] if winner=='Hunters' else s['npc']/13 if winner=='Guardians' else 0
                grade='N/A' if winner=='Mutual defeat' else 'None' if rem>=1 else 'Minor' if rem>.5 else 'Significant' if rem>.25 else 'Major'
                return {'model':model,'trial':trial,'seed':seed,'winner':winner,'hunter_start':s['start'],'hunter_final':s['pc'],'guardian_final':s['npc'],'hunter_remaining_pct':100*s['pc']/s['start'],'guardian_remaining_pct':100*s['npc']/13,'compromise':grade,'volleys':ex*3+v+1,'injury_trades':s['trades'],'protocol_discovers':s['discoveries'],'info_evaluations':s['info_evaluations'],'info_declined':s['declined'],'actor_order_replans':s['orderchanges'],'paid_changes':s['paid'],'repair_uses':s['repairs'],'woe_final':s['woe']}
    raise RuntimeError('Exceeded exchange limit')

def run_batch(count=100):
    LOG.clear()
    return pd.DataFrame([run(model,260110800+i,i+1) for i in range(count) for model in ['Fixed','One exchange','Two exchanges']])

if __name__ == '__main__':
    import argparse
    from pathlib import Path
    parser=argparse.ArgumentParser()
    parser.add_argument('--count',type=int,default=100)
    parser.add_argument('--output',default='reconstruction-results')
    args=parser.parse_args()
    dest=Path(args.output)
    dest.mkdir(exist_ok=True,parents=True)
    results=run_batch(args.count)
    results.to_csv(dest/'combat-results.csv',index=False)
    pd.DataFrame(LOG).to_csv(dest/'volley-log.csv',index=False)
    counts=pd.crosstab(results.model,results.winner)
    counts.to_csv(dest/'outcome-counts.csv')
    print(counts.to_string())
