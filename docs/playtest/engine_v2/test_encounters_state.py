"""Encounter/state regressions, not combat smoke fights or balance evidence."""
from dataclasses import replace
import unittest
from core import Action, SideState
from encounters import (ABILITIES, CONFIGURATIONS, ORDER, RANKS, SCRIPT,
                        collector_card, collectors_encounter)
from state import ActorState, Side, Status, create_conflict


def reviewed_fixture(configuration='G9-MMM'):
    encounter = collectors_encounter(configuration)
    return replace(encounter, cards=tuple(replace(c, reviewed=True) for c in encounter.cards))


def hunter_fixture():
    actors = {name: ActorState(name, pools={'Sōma': 8}, pool_caps={'Sōma': 10},
                               edges={'Sōma': 1}, tyche=2)
              for name in ('Tavi Reed', 'Mara Voss', 'Ione Bell')}
    return Side(SideState(10, 10), actors, tuple(actors))


def state_fixture():
    return create_conflict(reviewed_fixture(), hunter_fixture(), seed=43)


class EncounterTests(unittest.TestCase):
    def test_six_complete_but_unreviewed_cards(self):
        for actor in ('Venn Carrow', 'Edda Pike', 'Noll Sable'):
            for rank in RANKS:
                with self.subTest(actor=actor, rank=rank):
                    card = collector_card(actor, rank)
                    self.assertFalse(card.reviewed)
                    self.assertEqual(card.errors(require_review=False), [])
                    with self.assertRaises(ValueError):
                        card.validate()

    def test_all_seven_rank_configurations(self):
        self.assertEqual(len(CONFIGURATIONS), 7)
        for key, ranks in CONFIGURATIONS.items():
            encounter = collectors_encounter(key)
            self.assertEqual(tuple(c.rank for c in encounter.cards), ranks)
            self.assertEqual(encounter.starting_disposition, int(key.split('-')[0][1:]))
            self.assertEqual(encounter.spec.opposition_script, SCRIPT)
            self.assertEqual(encounter.spec.opposition_order, ORDER)

    def test_original_action_assignments(self):
        expected = {'Venn Carrow': (5, 3, 1, 3), 'Edda Pike': (3, 5, 1, 3),
                    'Noll Sable': (3, 1, 3, 5)}
        for actor, ratings in expected.items():
            self.assertEqual(tuple(collector_card(actor).rating(a) for a in Action), ratings)
            self.assertEqual(tuple(collector_card(actor, 'Established').rating(a) for a in Action),
                             tuple(n+1 for n in ratings))

    def test_rank_allowance_not_extra_selected_special(self):
        for actor in ORDER:
            minor, established = (collector_card(actor, r) for r in RANKS)
            self.assertEqual((minor.special_limit, established.special_limit), (1, 2))
            self.assertEqual(minor.specials, established.specials)
            self.assertEqual(len(established.specials), 1)
            self.assertEqual((minor.package.guard, established.package.guard), (0, 1))
            self.assertEqual((minor.package.shrugs, established.package.shrugs), (0, 1))

    def test_gear_armour_and_objectives_stable(self):
        for actor in ORDER:
            a, b = (collector_card(actor, r) for r in RANKS)
            for field in ('equipment', 'armour', 'harm', 'objective', 'tell', 'weakness_tags'):
                self.assertEqual(getattr(a, field), getattr(b, field))
            self.assertEqual(a.armour, int(actor == 'Edda Pike'))

    def test_review_flag_does_not_bypass_missing_fields(self):
        card = replace(collector_card('Venn Carrow'), reviewed=True)
        for field, missing in (('equipment', ()), ('armour', None), ('harm', ''), ('other', None),
                               ('power_tags', ()), ('weakness_tags', ()), ('tell', ''), ('objective', '')):
            with self.subTest(field=field), self.assertRaises(ValueError):
                replace(card, **{field: missing}).validate()

    def test_rank_role_and_trait_mismatches_rejected(self):
        card = replace(collector_card('Venn Carrow'), reviewed=True)
        for changes in ({'role_trait': 'Self-Repair'}, {'kind': 'Guardian'}, {'specials': ('Volley', 'Hostage')},
                        {'ratings': tuple((a, 9) for a in Action)}, {'other': 0}, {'reviewed': 'yes'}):
            with self.subTest(changes=changes), self.assertRaises(ValueError):
                replace(card, **changes).validate()

    def test_run_gate_rejects_unreviewed_factory(self):
        with self.assertRaises(ValueError):
            create_conflict(collectors_encounter(), hunter_fixture(), seed=43)

    def test_run_gate_checks_policy_and_composition(self):
        e = reviewed_fixture()
        e.validate_for_run()
        for changed in (replace(e, cards=e.cards[::-1]), replace(e, configuration='G11-EMM'),
                        replace(e, spec=replace(e.spec, opposition_information=True)),
                        replace(e, spec=replace(e.spec, opposition_paid_changes=True)),
                        replace(e, starting_woe=7), replace(e, starting_momentum=2),
                        replace(e, superiority=True), replace(e, reinforcements=True),
                        replace(e, voluntary_concessions=True)):
            with self.assertRaises(ValueError):
                changed.validate_for_run()

    def test_permission_contracts_are_not_resolvers(self):
        self.assertEqual(ABILITIES['Volley'].cost_woe, 2)
        self.assertEqual(ABILITIES['Dirty Trick'].cost_woe, 1)
        self.assertEqual(ABILITIES['Interpose'].limit, 'once/exchange')
        self.assertNotIn('Self-Repair', ABILITIES)
        self.assertNotIn('Protocol', ABILITIES)

    def test_source_and_proposal_provenance(self):
        a = collector_card('Venn Carrow')
        b = collector_card('Venn Carrow', 'Established')
        self.assertTrue(a.source.endswith('-proposed.md'))
        self.assertEqual(len(a.source_blob), 40)
        self.assertIn('armour', a.proposed_fields)
        self.assertIn('rank promotion', b.proposed_fields)
        self.assertNotIn('Minor action ratings', b.historical_fields)


class StateTests(unittest.TestCase):
    def test_factory_resources_and_no_human_pools(self):
        s = state_fixture()
        self.assertEqual(s.sides['opposition'].shared.resources, {'Woe': 6})
        self.assertEqual(s.sides['hunters'].shared.resources, {'Momentum': 1})
        self.assertEqual(s.sides['opposition'].shared.starting_disposition, 9)
        for actor in s.sides['opposition'].actors.values():
            self.assertEqual(actor.pools, {})
            self.assertEqual(actor.edges, {})

    def test_factory_copies_supplied_hunters(self):
        h = hunter_fixture()
        s = create_conflict(reviewed_fixture(), h, seed=43)
        s.sides['hunters'].actors['Tavi Reed'].pools['Sōma'] = 1
        s.sides['hunters'].shared.resources['Momentum'] = 0
        self.assertEqual(h.actors['Tavi Reed'].pools['Sōma'], 8)
        self.assertNotIn('Momentum', h.shared.resources)

    def test_continuous_rotation_and_projection(self):
        side = state_fixture().sides['opposition']
        self.assertEqual(side.projected_actors(6), ORDER * 2)
        self.assertIsNone(side.last_actor)
        self.assertEqual(tuple(side.take_turn() for _ in range(4)), ORDER + (ORDER[0],))
        self.assertEqual(side.projected_actors(), (ORDER[1], ORDER[2], ORDER[0]))

    def test_removal_return_does_not_change_shared_disposition(self):
        side = state_fixture().sides['opposition']
        side.take_turn()
        side.set_available('Venn Carrow', False)
        self.assertEqual(side.take_turn(), 'Edda Pike')
        side.set_available('Venn Carrow', True)
        self.assertEqual(side.projected_actors(), ORDER)
        self.assertEqual((side.shared.starting_disposition, side.shared.disposition), (9, 9))

    def test_sole_actor_can_repeat(self):
        side = state_fixture().sides['opposition']
        for actor in ('Venn Carrow', 'Edda Pike'):
            side.set_available(actor, False)
        self.assertEqual(side.projected_actors(), ('Noll Sable',) * 3)
        self.assertEqual(tuple(side.take_turn() for _ in range(3)), ('Noll Sable',) * 3)
        side.set_available('Noll Sable', False)
        with self.assertRaises(ValueError):
            side.projected_actors()
        self.assertEqual(side.projected_actors(0), ())

    def test_script_validation_is_nonconsuming(self):
        s = state_fixture()
        side = s.sides['opposition']
        s.set_script('opposition', SCRIPT)
        self.assertIsNone(side.last_actor)
        side.set_available('Venn Carrow', False)
        with self.assertRaises(ValueError):
            s.set_script('opposition', SCRIPT)
        self.assertIsNone(side.last_actor)

    def test_fixed_action_script_enforced_atomically(self):
        s = state_fixture()
        changed = tuple((actor, Action.FEINT) for actor, _ in SCRIPT)
        with self.assertRaises(PermissionError):
            s.set_script('opposition', changed)
        self.assertEqual(s.sides['opposition'].script, SCRIPT)
        self.assertIsNone(s.sides['opposition'].last_actor)

    def test_hunter_script_follows_projected_order(self):
        s = state_fixture()
        side = s.sides['hunters']
        script = tuple((a, Action.ATTACK) for a in side.order)
        s.set_script('hunters', script)
        with self.assertRaises(ValueError):
            s.set_script('hunters', script[::-1])
        self.assertEqual(side.script, script)
        self.assertIsNone(side.last_actor)

    def test_purchase_authorization_not_guardian_protocol(self):
        s = state_fixture()
        for operation in ('information', 'paid_script_change'):
            with self.assertRaises(PermissionError):
                s.authorize('opposition', operation)
            s.authorize('hunters', operation)
        with self.assertRaises(ValueError):
            s.authorize('hunters', 'Protocol')
        with self.assertRaises(ValueError):
            s.authorize('unknown', 'information')

    def test_knowledge_views_hide_other_script_and_private_fields(self):
        s = state_fixture()
        side = s.sides['hunters']
        s.set_script('hunters', tuple((a, Action.FEINT) for a in side.order))
        side.knowledge['secret'] = ['private hunter knowledge']
        view = s.knowledge_view('opposition')
        self.assertNotIn('script', view['sides']['hunters'])
        self.assertNotIn('pools', view['sides']['hunters']['participants']['Tavi Reed'])
        self.assertEqual(view['knowledge'], {})
        self.assertEqual(view['own_script'], SCRIPT)
        self.assertNotIn('secret', repr(view))

    def test_view_mutation_cannot_change_state(self):
        s = state_fixture()
        view = s.knowledge_view('hunters')
        view['own_actors']['Tavi Reed'].pools['Sōma'] = 0
        view['sides']['opposition']['resources']['Woe'] = 0
        self.assertEqual(s.sides['hunters'].actors['Tavi Reed'].pools['Sōma'], 8)
        self.assertEqual(s.sides['opposition'].shared.resources['Woe'], 6)

    def test_deep_rollout_copy_and_isolated_logs(self):
        s = state_fixture()
        s.emit('actual-fixture', {'nested': [1]})
        clone = s.fork('candidate-0')
        clone.sides['hunters'].actors['Tavi Reed'].statuses.append(Status('wounded', 2))
        clone.sides['opposition'].shared.spend('Woe', 1)
        clone.sides['opposition'].knowledge['x'] = [1]
        clone.emit('hypothetical-fixture', {'nested': [2]})
        self.assertEqual(len(s.actual_events()), 1)
        self.assertEqual(clone.actual_events(), ())
        self.assertEqual(len(clone.events()), 1)
        self.assertEqual(s.sides['hunters'].actors['Tavi Reed'].statuses, [])
        self.assertEqual(s.sides['opposition'].shared.resources['Woe'], 6)
        self.assertEqual(s.sides['opposition'].knowledge, {})
        self.assertNotEqual(s.dice.namespace, clone.dice.namespace)

    def test_unique_rollout_names_and_nested_namespaces(self):
        s = state_fixture()
        clone = s.fork('a')
        with self.assertRaises(ValueError):
            s.fork('a')
        nested = clone.fork('a')
        self.assertNotEqual(clone.namespace, nested.namespace)
        self.assertNotEqual(s.fork('b').namespace, clone.namespace)
        for invalid in ('actual', 'a/rollout:b', '', 'a:b'):
            with self.assertRaises(ValueError):
                s.fork(invalid)

    def test_event_payload_and_readback_are_copied(self):
        s = state_fixture()
        data = {'nested': [1]}
        s.emit('fixture', data)
        data['nested'].append(2)
        events = s.actual_events()
        events[0].payload['nested'].append(3)
        self.assertEqual(s.actual_events()[0].payload, {'nested': [1]})

    def test_usage_shrugs_and_injury_marker_copy(self):
        s = create_conflict(reviewed_fixture('G11-EMM'), hunter_fixture(), seed=43)
        actor = s.sides['opposition'].actors['Venn Carrow']
        self.assertEqual(actor.shrugs, 1)
        actor.record_use('Dead Aim')
        actor.record_use('Interpose-fixture', scope='exchange')
        actor.injury_trade_used = True
        clone = s.fork('usage')
        copied = clone.sides['opposition'].actors['Venn Carrow']
        copied.scene_uses['Dead Aim'] = 2
        copied.shrugs = 0
        self.assertEqual(actor.scene_uses['Dead Aim'], 1)
        self.assertEqual(actor.shrugs, 1)
        self.assertTrue(copied.injury_trade_used)
        self.assertEqual(copied.exchange_uses, {'Interpose-fixture': 1})

    def test_recovery_caps_after_participation_change(self):
        for key in CONFIGURATIONS:
            s = create_conflict(reviewed_fixture(key), hunter_fixture(), seed=43)
            side = s.sides['opposition']
            start = side.shared.starting_disposition
            side.shared.disposition = 1
            side.set_available('Noll Sable', False)
            self.assertEqual(side.shared.restore(100), start - 1)
            self.assertEqual(side.shared.disposition, start)

    def test_invalid_snapshots_and_statuses(self):
        for actor in (ActorState('x', tyche=-1), ActorState('x', pools={'Sōma': 1}),
                      ActorState('x', pools={'Sōma': 2}, pool_caps={'Sōma': 1}),
                      ActorState('x', shrugs=True), ActorState('x', statuses=['wounded'])):
            with self.assertRaises(ValueError):
                actor.validate()
        with self.assertRaises(ValueError):
            Status('wounded', 0)
        h = hunter_fixture()
        h.shared.disposition = 9
        with self.assertRaises(ValueError):
            create_conflict(reviewed_fixture(), h, seed=43)
        with self.assertRaises(ValueError):
            create_conflict(reviewed_fixture(), hunter_fixture(), seed=True)


if __name__ == '__main__':
    unittest.main()
