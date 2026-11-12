"""Foundation tests only: not full conflict or encounter certification."""
import unittest
from core import Action, DiceStream, EncounterSpec, Roll, SideState, evaluate, interaction


class FoundationTests(unittest.TestCase):
    def encounter(self):
        return EncounterSpec('collectors-fixture', 'test-rules', ('Noll', 'Venn', 'Edda'),
            (('Noll', Action.MANEUVER), ('Venn', Action.ATTACK), ('Edda', Action.DEFEND)))

    def test_all_sixteen_interactions(self):
        actions = list(Action)
        expected = [
            ['II', 'VV', 'IT', 'VV'],
            ['VV', 'II', 'TI', 'VV'],
            ['TI', 'IT', 'VV', 'II'],
            ['VV', 'VV', 'II', 'II'],
        ]
        code = {'independent': 'I', 'versus': 'V', 'trumped': 'T'}
        for i, left in enumerate(actions):
            for j, right in enumerate(actions):
                with self.subTest(left=left, right=right):
                    self.assertEqual(''.join(code[x] for x in interaction(left, right)), expected[i][j])

    def test_keeps_best_two(self):
        roll = Roll((1, 12, 3, 11), 4)
        self.assertEqual(roll.kept, (12, 11))
        self.assertEqual(roll.total, 27)

    def test_independent_power_and_cost(self):
        self.assertEqual(evaluate(Roll((8, 7)), 15).power, 1)
        self.assertEqual(evaluate(Roll((8, 7), 6), 15).power, 3)
        self.assertEqual(evaluate(Roll((8, 7)), 18).result, 'cost')
        self.assertEqual(evaluate(Roll((8, 7)), 19).power, 0)

    def test_independent_double_twelve_exception(self):
        self.assertEqual(evaluate(Roll((12, 12)), 40).power, 3)
        self.assertEqual(evaluate(Roll((12, 12)), 40).result, 'success')

    def test_versus_doubles_do_not_override_total(self):
        for target in (24, 25):
            self.assertEqual(evaluate(Roll((12, 12)), target, versus=True).power, 0)
        self.assertEqual(evaluate(Roll((12, 12)), 23, versus=True).power, 3)
        self.assertEqual(evaluate(Roll((8, 7)), 16, versus=True).result, 'failure')

    def test_double_ones_can_succeed_with_complication(self):
        result = evaluate(Roll((1, 1), 20), 15)
        self.assertEqual(result.power, 4)
        self.assertTrue(result.complication)

    def test_doubles_at_cost_are_complications_not_criticals(self):
        result = evaluate(Roll((6, 6)), 15)
        self.assertEqual(result.power, 1)
        self.assertTrue(result.complication)

    def test_dice_replay_and_matched_prefix(self):
        stream = DiceStream(43)
        first = stream.roll(0, 0, 'hunters')
        stream.roll(9, 2, 'opposition')
        self.assertEqual(first, stream.roll(0, 0, 'hunters'))
        self.assertEqual(first.dice, stream.roll(0, 0, 'hunters', bonus=2).dice[:2])
        self.assertNotEqual(first.dice, DiceStream(43, 'rollout:0').roll(0, 0, 'hunters').dice)

    def test_invalid_dice_and_bonus_counts(self):
        for dice in ((1,), (1, 13), (True, 2), (1, 2, 3, 4, 5)):
            with self.subTest(dice=dice), self.assertRaises(ValueError):
                Roll(dice)
        for bonus in (-1, 3, True):
            with self.subTest(bonus=bonus), self.assertRaises(ValueError):
                DiceStream(43).roll(0, 0, 'hunters', bonus=bonus)

    def test_collectors_continuous_rotation(self):
        encounter = self.encounter()
        self.assertEqual(encounter.actors_after(None, 6), ['Noll', 'Venn', 'Edda'] * 2)
        self.assertEqual(encounter.actors_after('Venn', 2), ['Edda', 'Noll'])
        self.assertFalse(encounter.opposition_information)
        self.assertFalse(encounter.opposition_paid_changes)
        with self.assertRaises(ValueError):
            encounter.actors_after('Gatekeeper')

    def test_recovery_uses_each_starting_total(self):
        for start in (9, 11, 13):
            state = SideState(start, start - 1)
            self.assertEqual(state.restore(3), 1)
            self.assertEqual(state.disposition, start)
            state.disposition = start + 2
            self.assertEqual(state.restore(3), 0)
            self.assertEqual(state.disposition, start + 2)

    def test_atomic_payment_and_fork_isolation(self):
        state = SideState(9, 9, {'Woe': 1})
        with self.assertRaises(ValueError):
            state.spend('Woe', 2)
        self.assertEqual(state.resources['Woe'], 1)
        clone = state.fork()
        clone.spend('Woe', 1)
        self.assertEqual(state.resources['Woe'], 1)
        self.assertEqual(clone.resources['Woe'], 0)


if __name__ == '__main__':
    unittest.main()
