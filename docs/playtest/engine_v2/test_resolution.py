"""Deterministic kernel fixtures. No production cards are marked reviewed."""
import unittest
from copy import deepcopy
from dataclasses import replace
from itertools import product
from core import Action, Roll, SideState
from encounters import collectors_encounter
from state import ActorState, Side, create_conflict
from resolution import (ActionRequest, Pending, PowerPlan, ResolutionContext,
                        resolve_rolls, resolve_volley)


def reviewed_fixture(action=Action.MANEUVER, *, volley=0, configuration='G9-MMM'):
    draft = collectors_encounter(configuration)
    encounter = replace(draft, cards=tuple(replace(c, reviewed=True) for c in draft.cards))
    order = ('fixture-A', 'fixture-B', 'fixture-C')
    hunters = Side(SideState(20, 20), {a: ActorState(a) for a in order}, order)
    state = create_conflict(encounter, hunters, seed=12345)
    actions = action if isinstance(action, tuple) else (action,)*3
    state.set_script('hunters', tuple(zip(order, actions)))
    state.volley = volley
    for side in state.sides.values():
        side.last_actor = side.order[volley-1] if volley else None
        side.revealed = {v: side.script[v] for v in range(volley)}
    return ResolutionContext(state)


def requests_for(context, *, hunter_roll=None, npc_roll=None, hunter=None, npc=None):
    s = context.state
    raw = {'hunters': hunter_roll or Roll((9, 6)), 'opposition': npc_roll or Roll((8, 7))}
    for sid in raw:
        if context.pending[sid].position:
            raw[sid] = Roll(raw[sid].dice+(1,), raw[sid].modifier)
    actions = tuple(Action(s.sides[sid].script[s.volley][1]) for sid in ('hunters', 'opposition'))
    from core import interaction
    modes = interaction(*actions)
    effective = tuple(None if mode == 'trumped' else
        Roll(raw[sid].dice, raw[sid].modifier-3*context.pending[sid].impede)
        for sid, mode in zip(('hunters', 'opposition'), modes))
    guard = next(c.package.guard for c in s.encounter.cards
                 if c.actor == s.sides['opposition'].script[s.volley][0])
    _, outcomes = resolve_rolls(actions, effective, (15+guard, 15))
    result = {}
    for i, sid in enumerate(('hunters', 'opposition')):
        power = outcomes[i].power
        plan = PowerPlan()
        if sid == 'opposition' and actions[i] == Action.MANEUVER:
            plan = PowerPlan(impede=power >= 1, position=power >= 2)
        result[sid] = ActionRequest(None if modes[i] == 'trumped' else raw[sid], plan,
            success_cost='woe' if outcomes[i].result == 'cost' else None,
            complication='buyoff' if outcomes[i].complication else None)
    if hunter is not None:
        result['hunters'] = hunter
    if npc is not None:
        result['opposition'] = npc
    return result


def run(context, **kwargs):
    return resolve_volley(context, requests_for(context, **kwargs), basic_only=True)


class ResolutionTests(unittest.TestCase):
    def test_all_sixteen_interactions(self):
        expected = [
            [('independent','independent'),('versus','versus'),('independent','trumped'),('versus','versus')],
            [('versus','versus'),('independent','independent'),('trumped','independent'),('versus','versus')],
            [('trumped','independent'),('independent','trumped'),('versus','versus'),('independent','independent')],
            [('versus','versus'),('versus','versus'),('independent','independent'),('independent','independent')]]
        for i, left in enumerate(Action):
            for j, right in enumerate(Action):
                modes = expected[i][j]
                rolls = tuple(None if m == 'trumped' else Roll((9, 6)) for m in modes)
                with self.subTest(left=left,right=right):
                    actual, outcomes = resolve_rolls((left,right), rolls)
                    self.assertEqual(actual,modes)
                    for mode,outcome in zip(modes,outcomes):
                        self.assertEqual(outcome.power, 1 if mode == 'independent' else 0)

    def test_versus_tie_has_no_power_or_normal_effect(self):
        c = reviewed_fixture(Action.ATTACK)
        r = run(c)
        self.assertEqual([o.power for o in r.outcomes.values()],[0,0])
        self.assertEqual(c.state.sides['hunters'].shared.disposition,20)
        self.assertEqual(c.state.sides['opposition'].shared.resources['Woe'],6)

    def test_versus_loss_by_one_is_not_success_at_cost(self):
        c = reviewed_fixture(Action.ATTACK)
        r = run(c,hunter_roll=Roll((8,6)))
        self.assertEqual(r.outcomes['hunters'].result,'failure')
        self.assertEqual(c.state.sides['opposition'].shared.resources['Woe'],6)

    def test_versus_winner_can_bank_all_power_without_primary(self):
        c = reviewed_fixture(Action.ATTACK)
        r = run(c,hunter_roll=Roll((10,6)),hunter=ActionRequest(Roll((10,6)),PowerPlan(primary=0)))
        self.assertEqual(r.outcomes['hunters'].result,'success')
        self.assertEqual(r.loss_inflicted['hunters'],0)
        self.assertEqual(c.state.sides['hunters'].shared.resources['Momentum'],2)
        self.assertEqual(c.state.sides['hunters'].shared.disposition,20)

    def test_attack_power_plus_one_once(self):
        c = reviewed_fixture(Action.ATTACK,volley=1)
        r = run(c,hunter_roll=Roll((11,7)))
        self.assertEqual(r.outcomes['hunters'].power,2)
        self.assertEqual(r.loss_inflicted['hunters'],3)

    def test_feint_uses_attack_loss(self):
        c = reviewed_fixture(Action.FEINT,volley=2)
        r = run(c)
        self.assertEqual(r.loss_inflicted['hunters'],2)
        self.assertEqual(r.outcomes['opposition'].result,'trumped')

    def test_no_power_committed_no_base_loss(self):
        c = reviewed_fixture(Action.ATTACK,volley=1)
        r = run(c,hunter=ActionRequest(Roll((9,6)),PowerPlan(primary=0)))
        self.assertEqual(r.loss_inflicted['hunters'],0)

    def test_defend_recovery_capped(self):
        c = reviewed_fixture(Action.DEFEND,volley=2)
        c.state.sides['hunters'].shared.disposition=19
        r=run(c,hunter_roll=Roll((11,7)))
        self.assertEqual(r.recovered['hunters'],1)
        self.assertEqual(c.state.sides['hunters'].shared.disposition,20)

    def test_defend_never_reduces_reinforced_total(self):
        c = reviewed_fixture(Action.DEFEND,volley=2)
        c.state.sides['hunters'].shared.disposition=25
        r=run(c)
        self.assertEqual(r.recovered['hunters'],0)
        self.assertEqual(c.state.sides['hunters'].shared.disposition,25)

    def test_independent_failure_generates_woe_symmetrically(self):
        c=reviewed_fixture()
        run(c,hunter_roll=Roll((3,2)),npc_roll=Roll((4,2)))
        self.assertEqual(c.state.sides['opposition'].shared.resources['Woe'],8)
        self.assertEqual(sum(e.kind=='ordinary_failure_woe' for e in c.state.events()),2)

    def test_success_at_cost_woe_is_not_also_failure_woe(self):
        c=reviewed_fixture()
        run(c,hunter_roll=Roll((7,6)),npc_roll=Roll((8,5)))
        self.assertEqual(c.state.sides['opposition'].shared.resources['Woe'],8)
        self.assertFalse(any(e.kind=='ordinary_failure_woe' for e in c.state.events()))

    def test_success_at_cost_narrative_has_no_automatic_harm(self):
        c=reviewed_fixture()
        run(c,hunter=ActionRequest(Roll((7,6)),success_cost='consequence',success_consequence='The quiet approach is exposed.'))
        self.assertEqual(c.state.sides['opposition'].shared.resources['Woe'],6)
        self.assertFalse(any(a.statuses for a in c.state.sides['hunters'].actors.values()))

    def test_cost_choice_required_and_transactional(self):
        c=reviewed_fixture();before=deepcopy(c)
        with self.assertRaises(ValueError):
            run(c,hunter=ActionRequest(Roll((7,6))))
        self.assertEqual(c,before)

    def test_hunter_double_failure_costs_three_woe_with_buyoff(self):
        c=reviewed_fixture()
        run(c,hunter_roll=Roll((1,1)))
        self.assertEqual(c.state.sides['opposition'].shared.resources['Woe'],9)

    def test_npc_double_failure_generates_one_then_spends_two(self):
        c=reviewed_fixture()
        run(c,npc_roll=Roll((1,1)))
        self.assertEqual(c.state.sides['opposition'].shared.resources['Woe'],5)

    def test_successful_double_ones_gain_power_and_complication(self):
        c=reviewed_fixture()
        r=run(c,hunter_roll=Roll((1,1),13))
        self.assertEqual(r.outcomes['hunters'].power,2)
        self.assertTrue(r.outcomes['hunters'].complication)
        self.assertEqual(c.state.sides['opposition'].shared.resources['Woe'],8)

    def test_double_twelves_do_not_override_versus_loss_or_tie(self):
        for opponent,result in [(Roll((12,11),2),'failure'),(Roll((12,11),1),'tie')]:
            _, outcomes=resolve_rolls((Action.ATTACK,Action.DEFEND),(Roll((12,12)),opponent))
            self.assertEqual(outcomes[0].result,result)
            self.assertEqual(outcomes[0].power,0)

    def test_independent_double_twelves_ignore_high_target(self):
        _, outcomes=resolve_rolls((Action.ATTACK,Action.ATTACK),(Roll((12,12)),Roll((9,6))),(100,15))
        self.assertEqual(outcomes[0].power,3)

    def test_missing_complication_choice_rolls_back(self):
        c=reviewed_fixture();before=deepcopy(c)
        with self.assertRaises(ValueError):run(c,hunter=ActionRequest(Roll((1,1))))
        self.assertEqual(c,before)

    def test_both_independent_attacks_complete_before_mutual_defeat(self):
        c=reviewed_fixture(Action.ATTACK,volley=1)
        for side in c.state.sides.values():side.shared.disposition=1
        r=run(c)
        self.assertEqual(r.terminal,'mutual_defeat')
        self.assertEqual(r.loss_inflicted,{'hunters':1,'opposition':1})
        self.assertEqual(sum(e.kind=='basic_effects' for e in c.state.events()),2)

    def test_cannot_resolve_after_terminal(self):
        c=reviewed_fixture(Action.ATTACK,volley=1)
        c.state.sides['opposition'].shared.disposition=1
        run(c);before=deepcopy(c)
        with self.assertRaises(ValueError):run(c)
        self.assertEqual(c,before)

    def test_guard_applies_only_to_independent_roll(self):
        c=reviewed_fixture(configuration='G11-MME')
        r=run(c)
        self.assertEqual(r.outcomes['hunters'].result,'cost')
        c=reviewed_fixture(Action.ATTACK,configuration='G11-MME')
        r=run(c,npc_roll=Roll((8,6)))
        self.assertEqual(r.outcomes['hunters'].result,'success')

    def test_no_difficulty_floor(self):
        c=reviewed_fixture()
        r=run(c,hunter=ActionRequest(Roll((3,2)),independent_adjustment=-15))
        self.assertEqual(r.outcomes['hunters'].result,'success')

    def test_impede_and_position_apply_to_next_not_current_action(self):
        c=reviewed_fixture()
        r=run(c,hunter=ActionRequest(Roll((11,7)),PowerPlan(impede=True,position=True)))
        self.assertEqual(r.rolls['opposition'].total,15)
        self.assertTrue(c.pending['hunters'].position)
        self.assertTrue(c.pending['hunters'].impede)
        r=run(c)
        self.assertEqual(len(r.rolls['hunters'].dice),3)
        self.assertEqual(r.rolls['hunters'].total,12)
        self.assertFalse(c.pending['hunters'].position)

    def test_trumped_action_expires_pending_effects_and_consumes_turn(self):
        c=reviewed_fixture(Action.FEINT,volley=1)
        c.pending['hunters']=Pending(True,True)
        woe=c.state.sides['opposition'].shared.resources['Woe']
        r=run(c)
        self.assertIsNone(r.rolls['hunters'])
        self.assertEqual(c.pending['hunters'],Pending())
        self.assertEqual(c.state.sides['hunters'].last_actor,'fixture-B')
        self.assertEqual(c.state.sides['opposition'].shared.resources['Woe'],woe)

    def test_trumped_action_cannot_submit_roll(self):
        c=reviewed_fixture(Action.FEINT,volley=1);before=deepcopy(c)
        with self.assertRaises(ValueError):run(c,hunter=ActionRequest(Roll((9,6))))
        self.assertEqual(c,before)

    def test_two_momentum_dice_cost_three_even_on_loss(self):
        c=reviewed_fixture(Action.ATTACK)
        c.state.sides['hunters'].shared.resources['Momentum']=3
        r=run(c,hunter=ActionRequest(Roll((3,2,1,1)),bonus_sources=('momentum','momentum')),npc=ActionRequest(Roll((4,2)),PowerPlan(impede=True)))
        self.assertEqual(r.outcomes['hunters'].power,0)
        self.assertEqual(c.state.sides['hunters'].shared.resources['Momentum'],0)

    def test_npc_woe_dice_paid_on_failure(self):
        c=reviewed_fixture()
        run(c,npc=ActionRequest(Roll((7,4,3,2)),bonus_sources=('woe','woe')))
        self.assertEqual(c.state.sides['opposition'].shared.resources['Woe'],5)

    def test_hunter_give_woe_die_cost(self):
        c=reviewed_fixture()
        run(c,hunter=ActionRequest(Roll((9,6,1)),bonus_sources=('give_woe',)))
        self.assertEqual(c.state.sides['opposition'].shared.resources['Woe'],7)

    def test_unaffordable_debit_rolls_back_all_events_and_rotation(self):
        c=reviewed_fixture();before=deepcopy(c)
        with self.assertRaises(ValueError):run(c,hunter=ActionRequest(Roll((9,6,2,1)),bonus_sources=('momentum','momentum')))
        self.assertEqual(c,before)

    def test_position_included_in_bonus_cap(self):
        c=reviewed_fixture();c.pending['hunters'].position=True;before=deepcopy(c)
        with self.assertRaises(ValueError):run(c,hunter=ActionRequest(Roll((9,6,2,1)),bonus_sources=('momentum','give_woe')))
        self.assertEqual(c,before)

    def test_late_invalid_allocation_rolls_back_earlier_effects(self):
        c=reviewed_fixture(Action.ATTACK,volley=1);before=deepcopy(c)
        with self.assertRaises(ValueError):run(c,npc=ActionRequest(Roll((8,7)),PowerPlan(primary=2)))
        self.assertEqual(c,before)

    def test_maneuver_purchases_cannot_appear_on_attack(self):
        c=reviewed_fixture(Action.ATTACK,volley=1)
        with self.assertRaises(ValueError):run(c,hunter=ActionRequest(Roll((9,6)),PowerPlan(impede=True)))

    def test_unused_hunter_power_caps_momentum(self):
        c=reviewed_fixture();c.state.sides['hunters'].shared.resources['Momentum']=6
        run(c)
        self.assertEqual(c.state.sides['hunters'].shared.resources['Momentum'],6)

    def test_npc_unspent_power_fails_explicitly(self):
        c=reviewed_fixture();before=deepcopy(c)
        with self.assertRaises(NotImplementedError):run(c,npc=ActionRequest(Roll((8,7))))
        self.assertEqual(c,before)

    def test_exchange_boundary_preserves_pending_and_scene_uses(self):
        c=reviewed_fixture(Action.MANEUVER,volley=2)
        c.state.sides['hunters'].actors['fixture-C'].scene_uses['fixture']=1
        c.state.sides['hunters'].actors['fixture-C'].exchange_uses['fixture']=1
        run(c,hunter_roll=Roll((10,6)),npc_roll=Roll((8,7)),hunter=ActionRequest(Roll((10,6)),PowerPlan(position=True)))
        self.assertEqual((c.state.exchange,c.state.volley),(1,0))
        self.assertTrue(c.pending['hunters'].position)
        self.assertIsNone(c.state.sides['hunters'].script)
        self.assertEqual(c.state.sides['hunters'].revealed,{})
        actor=c.state.sides['hunters'].actors['fixture-C']
        self.assertEqual(actor.scene_uses,{'fixture':1})
        self.assertEqual(actor.exchange_uses,{})
        c.state.set_script('hunters',tuple(zip(c.state.sides['hunters'].order,(Action.MANEUVER,)*3)))
        c.state.set_script('opposition',c.state.encounter.spec.opposition_script)
        r=run(c)
        self.assertEqual(r.actors['hunters'],'fixture-A')
        self.assertEqual(len(r.rolls['hunters'].dice),3)

    def test_only_current_assignments_are_revealed(self):
        c=reviewed_fixture();run(c)
        view=c.state.knowledge_view('hunters')
        self.assertEqual(set(view['sides']['opposition']['revealed']),{0})
        self.assertNotIn('opposition_script',view)

    def test_rollout_uses_same_kernel_without_actual_event_leak(self):
        c=reviewed_fixture();clone=c.fork('fixture-1')
        parent=deepcopy(c)
        r1=run(c);r2=run(clone)
        self.assertEqual(r1,r2)
        self.assertEqual(clone.state.actual_events(),())
        self.assertTrue(all(e.namespace!='actual' for e in clone.state.events()))
        self.assertEqual(parent.state.events(),())
        clone.state.sides['hunters'].shared.disposition=1
        self.assertNotEqual(c.state.sides['hunters'].shared.disposition,1)

    def test_unreviewed_production_cards_stay_blocked(self):
        c=reviewed_fixture();c.state.encounter=collectors_encounter();before=deepcopy(c)
        with self.assertRaisesRegex(ValueError,'unreviewed'):run(c)
        self.assertEqual(c,before)
        self.assertTrue(all(not card.reviewed for card in collectors_encounter().cards))

    def test_unsupported_features_are_not_silently_ignored(self):
        for feature in ('Volley','Hit and Run','Effort','injury trade','Discover','automatic success'):
            c=reviewed_fixture();before=deepcopy(c)
            with self.assertRaises(NotImplementedError):run(c,hunter=ActionRequest(Roll((9,6)),required_features=(feature,)))
            self.assertEqual(c,before)

    def test_scope_opt_in_is_required(self):
        c=reviewed_fixture()
        with self.assertRaises(NotImplementedError):resolve_volley(c,requests_for(c))

    def test_invalid_rotation_and_reveal_history_rejected(self):
        for change in ('rotation','reveal'):
            c=reviewed_fixture()
            if change=='rotation':c.state.sides['hunters'].last_actor='fixture-A'
            else:c.state.sides['hunters'].revealed[1]=c.state.sides['hunters'].script[1]
            before=deepcopy(c)
            with self.assertRaises(ValueError):run(c)
            self.assertEqual(c,before)

    def test_ordinary_loss_does_not_remove_actor_or_reduce_pools(self):
        c=reviewed_fixture(Action.ATTACK,volley=1)
        c.state.sides['hunters'].actors['fixture-B'].pools={'Soma':5}
        c.state.sides['hunters'].actors['fixture-B'].pool_caps={'Soma':5}
        r=run(c)
        a=c.state.sides['hunters'].actors['fixture-B']
        self.assertEqual(a.pools,{'Soma':5})
        self.assertTrue(a.available)
        self.assertEqual(a.statuses,[])

    def test_invalid_boolean_power_and_duplicate_maneuver_counts(self):
        for plan in (PowerPlan(primary=True),PowerPlan(impede=2),PowerPlan(primary=-1)):
            c=reviewed_fixture();before=deepcopy(c)
            with self.assertRaises(ValueError):run(c,hunter=ActionRequest(Roll((9,6)),plan))
            self.assertEqual(c,before)


    def test_missing_versus_opponent_roll_is_validation_error(self):
        with self.assertRaises(ValueError):
            resolve_rolls((Action.ATTACK,Action.DEFEND),(Roll((9,6)),None))

    def test_unaffordable_npc_complication_payment_rolls_back(self):
        c=reviewed_fixture();c.state.sides['opposition'].shared.resources['Woe']=0
        before=deepcopy(c)
        with self.assertRaises(ValueError):run(c,npc_roll=Roll((1,1)))
        self.assertEqual(c,before)

    def test_no_same_stage_cross_funding_of_npc_bonus_debit(self):
        c=reviewed_fixture();c.state.sides['opposition'].shared.resources['Woe']=0
        before=deepcopy(c)
        with self.assertRaises(ValueError):
            run(c,hunter=ActionRequest(Roll((9,6,1)),bonus_sources=('give_woe',)),
                npc=ActionRequest(Roll((8,7,1)),PowerPlan(impede=True),bonus_sources=('woe',)))
        self.assertEqual(c,before)

    def test_previously_paid_cost_is_not_refunded_when_trumped(self):
        c=reviewed_fixture(Action.FEINT,volley=1)
        c.state.sides['hunters'].shared.resources['Momentum']=0
        run(c)
        self.assertEqual(c.state.sides['hunters'].shared.resources['Momentum'],0)

    def test_result_dictionaries_do_not_alias_live_state(self):
        c=reviewed_fixture();identity=c.state
        r=run(c)
        r.actors['hunters']='not-an-actor'
        r.loss_inflicted['hunters']=999
        self.assertIs(c.state,identity)
        self.assertEqual(c.state.sides['hunters'].last_actor,'fixture-A')
        self.assertEqual(c.state.sides['opposition'].shared.disposition,9)

    def test_ordinary_loss_does_not_use_armour_or_shrugs(self):
        c=reviewed_fixture(Action.FEINT,volley=2,configuration='G11-MEM')
        r=run(c)
        self.assertEqual(r.loss_inflicted['hunters'],1+1)
        self.assertEqual(c.state.sides['opposition'].actors['Edda Pike'].shrugs,1)


if __name__=='__main__':
    unittest.main()
