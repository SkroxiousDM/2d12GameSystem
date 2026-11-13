import numpy as np, json
rng = np.random.default_rng(20261113); N = 400_000; out = {}
def roll(n, extra=0):
    d = rng.integers(1, 13, size=(n, 2+extra)); d.sort(axis=1); k = d[:, -2:]
    return k.sum(1), k[:,0]==k[:,1], (k[:,0]==12)&(k[:,1]==12)
def indep(mod, diff, extra=0, n=N):
    s, dbl, d12 = roll(n, extra); t = s + mod
    succ = (t >= diff) | d12
    pw = np.where(succ, 1 + np.maximum(t-diff, 0)//3 + np.where(d12, 2, np.where(dbl, 1, 0)), 0)
    sac = (~succ) & (t >= diff-3)
    pw = np.where(sac, 1, pw)
    return succ, sac, pw
# A. one Difficulty step vs bonus die (skill +3, tag +1 = +4; and +6 expert)
A = {}
for mod in (4, 6):
    for name, diff in (("Standard 15",15),("Hard 18",18),("Formidable 21",21),("Heroic 24",24)):
        row = {}
        for lab, dd, ex in (("base",diff,0),("one step",diff-3,0),("bonus die",diff,1),("two steps",diff-6,0)):
            s, c, p = indep(mod, dd, ex); row[lab] = [round(s.mean()*100,1), round(p.mean(),2)]
        A[f"+{mod} vs {name}"] = row
out["A_difficulty"] = A
# B. +1 Disposition per successful Attack vs flat starting bonus (Attack-only duel, both +4, indep vs 15)
def duel(bonus_per_hit=0, flat=0, attack_share=1.0, n=100_000):
    s,_,_ = roll(n); DA = np.maximum((s+4)//3,1)+flat
    s,_,_ = roll(n); DB = np.maximum((s+4)//3,1)
    a, b = DA.astype(float), DB.astype(float); alive = np.ones(n,bool); winA = np.zeros(n,bool); vol = np.zeros(n)
    for v in range(40):
        for act in range(3):
            if not alive.any(): break
            sa, _, pa = indep(4, 15, n=n); sb, _, pb = indep(4, 15, n=n)
            ua = rng.random(n) < attack_share; ub = rng.random(n) < attack_share
            hitA = (pa>0) & ua; hitB = (pb>0) & ub
            lossB = np.where(hitA, pa+1 + np.where(sa, bonus_per_hit, 0), 0)
            lossA = np.where(hitB, pb+1, 0)
            b = np.where(alive, b-lossB, b); a = np.where(alive, a-lossA, a)
            dead = alive & ((a<=0)|(b<=0))
            winA |= dead & (b<=0) & (a>0); vol = np.where(dead, v+1, vol); alive &= ~dead
    tie = (a<=0)&(b<=0)
    return round(winA.mean()*100,1), round(tie.mean()*100,1), round(vol.mean(),2)
B = {}
for share in (1.0, 0.5):
    B[f"attack share {share}"] = {"even": duel(0,0,share), "+1 per hit": duel(1,0,share),
        "flat +1": duel(0,1,share), "flat +2": duel(0,2,share), "flat +3": duel(0,3,share)}
out["B_disposition"] = B
# starting Disposition distribution
s,_,_ = roll(N); out["start_disp_mean"] = round(np.maximum((s+4)//3,1).mean(),2)
# C. automatic 4 / 5 Power vs a rolled working (skill +4, Domain tag +1, other tag +1 = +6; with/without one Effort die)
C = {}
for name, diff in (("Standard 15",15),("Hard 18",18),("Formidable 21",21),("Heroic 24",24)):
    for ex in (0,1):
        s, c, p = indep(6, diff, ex)
        C[f"{name}, {'Effort die' if ex else 'no Effort'}"] = {"success%": round(s.mean()*100,1), "mean Power": round(p.mean(),2), "P(Power>=4)%": round((p>=4).mean()*100,1), "P(Power>=5)%": round((p>=5).mean()*100,1)}
out["C_auto"] = C
# D. Focused Channel: Pneuma budget per day (pool 12, Edge 2 -> Effort cost 1), rests 1-3 all to Pneuma
r1 = -(-rng.integers(1,13,N)//2); r2 = -(-rng.integers(1,13,N)//2)+1; r3 = -(-rng.integers(1,13,N)//2)+2
budget = 12 + r1 + r2 + r3
out["D_budget_mean"] = round(budget.mean(),2)
D = {}
for rolls in (8, 12, 16):
    for eff_share in (0.0, 0.25, 0.5):
        ne = round(rolls*(1-eff_share)); e = rolls-ne
        for lab, wc, fc in (("cost 1", 1, False), ("cost 1 + FC", 1, True), ("cost 2", 2, False), ("cost 2 + FC (to 1)", 2, True)):
            spend = ne*(0 if (fc and wc==1) else (1 if fc else wc)) + e*(wc+1)
            D.setdefault(f"{rolls} workings/day, {int(eff_share*100)}% with Effort", {})[lab] = [spend, round((budget-spend).mean(),1)]
out["D_spend"] = D
json.dump(out, open("results.json","w"), indent=1); print(json.dumps(out, indent=1))
