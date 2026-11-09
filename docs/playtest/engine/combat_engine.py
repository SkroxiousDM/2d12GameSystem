"""Sealed Gate engine with approved B01-B03 clarifications.
Loads a hash-pinned legacy checkpoint without editing it. Not a full rules engine.
"""
from pathlib import Path
import ast
import hashlib
import copy

LEGACY = Path(__file__).resolve().parents[1] / 'checkpoints/2026-11-09-legacy-guardian-engine/combat_engine_legacy.py'
EXPECTED_LEGACY_BLOB = '619bd7381b98cce4fe6b0f1251c1f5d9e2d23ac7'
raw = LEGACY.read_bytes()
if hashlib.sha1(b'blob '+str(len(raw)).encode()+b'\0'+raw).hexdigest() != EXPECTED_LEGACY_BLOB:
    raise RuntimeError('Legacy checkpoint changed; review integration instead of silently loading it')
text = raw.decode()

def replace_once(old, new):
    global text
    if text.count(old) != 1:
        raise RuntimeError('Legacy integration anchor missing or duplicated: '+old[:70])
    text = text.replace(old, new, 1)

replace_once("    def dice(side,n,re=0):\n", "    begin_exchange(s, ex)\n    if a == 'Ione' and act == 'Attack' and not s.get('working_scope_permitted', True):\n        raise ValueError('Working is not fictionally permitted')\n    def dice(side,n,re=0):\n        fixed = s.get('fixed_dice', {}).get((side, re))\n        if fixed is not None:\n            if len(fixed) != n or any(not 1 <= d <= 12 for d in fixed):\n                raise ValueError('Fixed dice must match the requested dice count')\n            return list(fixed), sorted(fixed, reverse=True)[:2]\n")
replace_once("        if a=='Mara':n+=1", "        if a=='Mara' and not s.get('test_no_bonus_spending', False):n+=1")
replace_once("        if a=='Tavi' and act=='Maneuver':", "        if a=='Tavi' and act=='Maneuver' and not s.get('test_no_bonus_spending', False):")
replace_once("        elif a in ('Mara','Tavi'):", "        elif a in ('Mara','Tavi') and not s.get('test_no_bonus_spending', False):")
replace_once("        elif a=='Ione' and act in ('Maneuver','Feint'):", "        elif a=='Ione' and act in ('Maneuver','Feint') and not s.get('test_no_bonus_spending', False):")
replace_once("        while n<4:", "        while n<4 and not s.get('test_no_bonus_spending', False):")
replace_once("        if total<threshold and s['tyche'][a]>0:", "        if total<threshold and s['tyche'][a]>0 and not s.get('test_no_bonus_spending', False):")
replace_once("        if na=='Sentinel' and nact=='Attack' and not s['dead']:", "        if na=='Sentinel' and nact=='Attack' and not s['dead'] and not s.get('test_no_bonus_spending', False):")
replace_once("        if nact=='Attack' and ind and s['woe']>=2:", "        if nact=='Attack' and ind and s['woe']>=2 and not s.get('test_no_bonus_spending', False):")
replace_once("        if n<4 and s['woe']>0:", "        if n<4 and s['woe']>0 and not s.get('test_no_bonus_spending', False):")
replace_once("\n    target=15+(2 if na=='Gatekeeper' else 1)+(3 if s['truth'] and act=='Attack' else 0)", "\n    target=conflict_target(s, act, na, a)")
replace_once("    if a=='Ione' and act=='Attack' and pp>0 and not pr['effort'] and s['pool']['IonePne']>2:", "    if a=='Ione' and act=='Attack' and pp>0 and not pr['effort'] and s['pool']['IonePne']>2 and not s.get('test_no_bonus_spending', False):")
replace_once("            if a=='Ione' and not s['unleash'] and s['pool']['IonePne']>3:", "            if a=='Ione' and not s['unleash'] and s['pool']['IonePne']>3 and not s.get('test_no_bonus_spending', False):")
old_repair="""        if s['woe']>=1 and s['npc']<13:
            s['woe']-=1
            before=s['npc']
            s['npc']=min(13,s['npc']+2)
            s['repairs']+=1
            s['repairpoints']+=s['npc']-before
"""
replace_once(old_repair, '')
replace_once("    return {'pc_dice':", "    repair_info = finish_self_repair(s, ex, v, na, bool(nr is not None and (ns or nc)))\n    return {'repair':repair_info,'pc_dice':")
replace_once("                return {'model':model,", "                s['outcome_finalized'] = True\n                return {'model':model,")
replace_once("    for ex in range(40):\n", "    for ex in range(40):\n        begin_exchange(s, ex)\n        commit_exchange(s, ex)\n")
replace_once("            def answer_provider(ee,na):return [(j,ac) for j,(who,ac) in enumerate(true_script(ee)) if who==na]", "            def answer_provider(ee,na):return reveal_protocol(s, ee, na)")
replace_once("            na,nact=true_script(ex)[v]", "            na,nact=reveal_committed_action(s, ex, v)")
tree = ast.parse(text)
tree.body = [node for node in tree.body if not (isinstance(node, ast.If) and isinstance(node.test, ast.Compare) and any(isinstance(x, ast.Constant) and x.value == '__main__' for x in node.test.comparators))]
exec(compile(tree, str(LEGACY), 'exec'), globals())
_legacy_initial = initial


def initial(seed):
    s = _legacy_initial(seed)
    s.update(repair_exchange=None, repair_used=set(), repair_events=[], npc_available={}, npc_statuses={}, committed={}, revealed=set(), knowledge_history=[], script_change_events=[], outcome_finalized=False)
    return s


def begin_exchange(s, ex):
    if s.get('repair_exchange') != ex:
        s['repair_exchange'] = ex
        s['repair_used'] = set()


def conflict_target(s, action, target, actor=None):
    guard = s.get('guard_overrides', {}).get(target, 2 if target == 'Gatekeeper' else 1)
    adjustment = s.get('explicit_scope_adjustment', 0) if actor == 'Ione' and action == 'Attack' else 0
    return 15 + guard + (3 if s['truth'] and action == 'Attack' else 0) + adjustment


def finish_self_repair(s, ex, volley, guardian, success, choice=None, status_name=None):
    begin_exchange(s, ex)
    event = {'guardian':guardian, 'exchange':ex, 'volley':volley, 'applied':False, 'stage':'after_independent_actions_before_outcome'}
    if not success or guardian in s['repair_used'] or s['woe'] < 1 or not s.get('npc_available', {}).get(guardian, True) or s.get('outcome_finalized', False):
        return event
    choice = choice or s.get('repair_choices', {}).get(guardian, 'disposition')
    if choice == 'disposition':
        if s.get('disposition_recovery_prohibited', False) or s['npc'] >= 13:
            return event
        before = s['npc']
        s['npc'] = min(13, s['npc']+2)
        event['recovered'] = s['npc']-before
        s['repairpoints'] += event['recovered']
    elif choice == 'status':
        statuses = s.get('npc_statuses', {}).get(guardian, {})
        status = statuses.get(status_name)
        if not status or not status.get('repairable', False) or status['tier'] <= 0:
            return event
        status['tier'] = max(0, status['tier']-2)
        event['status_tier_after'] = status['tier']
    else:
        raise ValueError('Unknown repair choice')
    s['woe'] -= 1
    s['repair_used'].add(guardian)
    s['repairs'] += 1
    event['applied'] = True
    s['repair_events'].append(copy.deepcopy(event))
    return event


def commit_exchange(s, ex):
    for v, entry in enumerate(true_script(ex)):
        s['committed'].setdefault((ex,v), tuple(entry))


def reveal_protocol(s, ex, target):
    entries = []
    for v, default in enumerate(true_script(ex)):
        who, action = s['committed'].get((ex,v), default)
        if who == target:
            s['committed'].setdefault((ex,v), (who,action))
            s['known'][(ex,v)] = action
            entries.append((v,action))
    s['knowledge_history'].append({'exchange':ex,'target':target,'entries':copy.deepcopy(entries)})
    return entries


def change_npc_action(s, ex, volley, action, actor=None):
    if action not in ('Attack','Defend','Feint','Maneuver'):
        raise ValueError('Unknown action')
    if (ex,volley) in s['revealed'] or s.get('outcome_finalized', False):
        raise ValueError('Cannot change a revealed action or finalized outcome')
    who, old = s['committed'].get((ex,volley), true_script(ex)[volley])
    if actor is not None and actor != who:
        raise ValueError('No actor reassignment permission')
    if who == 'Sentinel' and action == 'Feint':
        raise ValueError('Simple Sentinel has no Feint')
    cost = 2 if s.get('eligible_leader_active', False) else 3
    if s['woe'] < cost:
        raise ValueError('Insufficient Woe')
    s['woe'] -= cost
    s['committed'][(ex,volley)] = (who,action)
    s['script_change_events'].append({'exchange':ex,'volley':volley,'actor':who,'old':old,'new':action,'cost':cost})


def reveal_committed_action(s, ex, volley):
    entry = s['committed'].get((ex,volley), true_script(ex)[volley])
    s['committed'].setdefault((ex,volley), tuple(entry))
    s['revealed'].add((ex,volley))
    return entry


def hunter_information(s):
    return copy.deepcopy({key:s[key] for key in ('known','knowledge_history','lastN','trans')})


if __name__ == '__main__':
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument('--count', type=int, default=100)
    parser.add_argument('--output', default='revised-results')
    args = parser.parse_args()
    dest = Path(args.output)
    dest.mkdir(parents=True, exist_ok=True)
    results = run_batch(args.count)
    results.to_csv(dest/'combat-results.csv', index=False)
    pd.DataFrame(LOG).to_csv(dest/'volley-log.csv', index=False)
    print(pd.crosstab(results.model, results.winner).to_string())
