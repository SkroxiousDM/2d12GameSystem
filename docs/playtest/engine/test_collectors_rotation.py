"""Targeted continuous-rotation regressions, not Collectors certification."""
import copy
import unittest
from unittest.mock import patch
import combat_engine as engine

COLLECTORS = ('Noll', 'Venn', 'Edda')
GUARDIANS = ('Gatekeeper', 'Sentinel')

class CollectorsRotationTests(unittest.TestCase):
    def test_opening_rotation(self):
        self.assertEqual(engine.actors_after(None, 3, rotation=COLLECTORS), list(COLLECTORS))

    def test_continuous_rotation(self):
        for last, expected in (
            ('Noll', ['Venn', 'Edda', 'Noll', 'Venn', 'Edda', 'Noll']),
            ('Venn', ['Edda', 'Noll', 'Venn', 'Edda', 'Noll', 'Venn']),
            ('Edda', ['Noll', 'Venn', 'Edda', 'Noll', 'Venn', 'Edda']),
        ):
            for n in range(7):
                with self.subTest(last=last, n=n):
                    self.assertEqual(engine.actors_after(last, n, rotation=COLLECTORS), expected[:n])

    def test_every_three_activations_include_each_collector_once(self):
        actors = engine.actors_after(None, 30, rotation=COLLECTORS)
        for start in range(28):
            self.assertEqual(set(actors[start:start + 3]), set(COLLECTORS))

    def test_guardian_default_is_unchanged(self):
        for last in (None, 'Gatekeeper', 'Sentinel'):
            first = 'Sentinel' if last == 'Gatekeeper' else 'Gatekeeper'
            other = 'Gatekeeper' if first == 'Sentinel' else 'Sentinel'
            for n in range(10):
                with self.subTest(last=last, n=n):
                    expected = [first if i % 2 == 0 else other for i in range(n)]
                    self.assertEqual(engine.actors_after(last, n), expected)

    def test_unknown_actor_is_not_silently_treated_as_a_guardian(self):
        with self.assertRaises(ValueError):
            engine.actors_after('Noll')

    def test_invalid_rotation(self):
        for rotation in ((), ('Noll', 'Noll'), ('', 'Venn')):
            with self.subTest(rotation=rotation), self.assertRaises(ValueError):
                engine.actors_after(None, rotation=rotation)
        with self.assertRaises(TypeError):
            engine.actors_after(None, rotation='Noll')

    def test_invalid_count(self):
        with self.assertRaises(ValueError):
            engine.actors_after(None, -1)
        for n in (True, 1.5):
            with self.subTest(n=n), self.assertRaises(TypeError):
                engine.actors_after(None, n)

    def test_two_exchange_forecasts_use_all_three_collectors(self):
        state = {'known': {}, 'lastN': {}, 'trans': {}, 'actor_rotation': COLLECTORS}
        before = copy.deepcopy(state)
        priors = {actor: {'Attack': 0.5, 'Maneuver': 0.5} for actor in COLLECTORS}
        with patch.dict(engine.PRIORS, priors):
            for last in COLLECTORS:
                actors = engine.actors_after(last, rotation=COLLECTORS)
                futures = engine.sample_futures(state, 0, actors, 43, n=4)
                expected = engine.actors_after(last, 6, rotation=COLLECTORS)
                for future, rollseed in futures:
                    self.assertEqual([actor for actor, action in future], expected)
        self.assertEqual(state, before)

    def test_forecasts_do_not_invent_known_actions(self):
        state = {'known': {(1, 0): 'Defend'}, 'lastN': {}, 'trans': {}, 'actor_rotation': COLLECTORS}
        priors = {actor: {'Attack': 1.0} for actor in COLLECTORS}
        with patch.dict(engine.PRIORS, priors):
            futures = engine.sample_futures(state, 0, list(COLLECTORS), 43, n=2)
        for future, rollseed in futures:
            self.assertEqual([action for actor, action in future], ['Attack', 'Attack', 'Attack', 'Defend', 'Attack', 'Attack'])
        self.assertEqual(state['known'], {(1, 0): 'Defend'})

if __name__ == '__main__':
    unittest.main()
