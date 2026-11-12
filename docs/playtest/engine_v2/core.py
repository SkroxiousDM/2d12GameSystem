"""Independent conflict primitives. No legacy engine imports or batch runner."""
from dataclasses import dataclass, field
from enum import Enum
import copy
import hashlib
import json
import random


class Action(str, Enum):
    ATTACK = 'Attack'
    DEFEND = 'Defend'
    FEINT = 'Feint'
    MANEUVER = 'Maneuver'


def interaction(left, right):
    """Return each actor's resolution mode; this does not resolve effects."""
    left, right = Action(left), Action(right)
    if left == Action.FEINT and right == Action.ATTACK:
        return 'trumped', 'independent'
    if left == Action.ATTACK and right == Action.FEINT:
        return 'independent', 'trumped'
    if left == Action.DEFEND and right == Action.FEINT:
        return 'trumped', 'independent'
    if left == Action.FEINT and right == Action.DEFEND:
        return 'independent', 'trumped'
    if left == right and left != Action.FEINT:
        return 'independent', 'independent'
    if {left, right} == {Action.FEINT, Action.MANEUVER}:
        return 'independent', 'independent'
    return 'versus', 'versus'


@dataclass(frozen=True)
class Roll:
    dice: tuple[int, ...]
    modifier: int = 0

    def __post_init__(self):
        if not isinstance(self.dice, tuple) or not 2 <= len(self.dice) <= 4:
            raise ValueError('Supply two to four dice as an immutable tuple')
        if any(type(d) is not int or not 1 <= d <= 12 for d in self.dice):
            raise ValueError('Each die must be an integer from 1 to 12')
        if type(self.modifier) is not int:
            raise ValueError('Modifier must be an integer')

    @property
    def kept(self):
        return tuple(sorted(self.dice, reverse=True)[:2])

    @property
    def total(self):
        return sum(self.kept) + self.modifier


@dataclass(frozen=True)
class Outcome:
    result: str
    power: int
    complication: bool


def evaluate(roll, target, *, versus=False):
    """Award Power only; cost choices, Woe and effects belong to resolution."""
    margin = roll.total - target
    double = roll.kept[0] == roll.kept[1]
    success = margin > 0 if versus else margin >= 0 or roll.kept == (12, 12)
    cost = not versus and not success and -3 <= margin < 0
    power = max(1, 1 + margin // 3) if success else int(cost)
    if success and double:
        power += 2 if roll.kept == (12, 12) else 1
    result = 'success' if success else 'cost' if cost else 'tie' if versus and margin == 0 else 'failure'
    return Outcome(result, power, roll.kept == (1, 1) or (double and not success))


@dataclass(frozen=True)
class DiceStream:
    seed: int
    namespace: str = 'actual'

    def roll(self, exchange, volley, side, *, bonus=0, attempt=0, modifier=0):
        if any(type(x) is not int or x < 0 for x in (exchange, volley, attempt)):
            raise ValueError('Exchange, volley and attempt must be nonnegative integers')
        if type(bonus) is not int or not 0 <= bonus <= 2:
            raise ValueError('At most two bonus dice, including free dice')
        if type(self.seed) is not int or not isinstance(side, str) or not side:
            raise ValueError('Supply an integer seed and nonempty side identifier')
        if not isinstance(self.namespace, str) or not self.namespace:
            raise ValueError('Supply an explicit stream namespace')
        key = json.dumps(['engine-v2-dice-1', self.seed, self.namespace, exchange, volley, side, attempt], separators=(',', ':'))
        rng = random.Random(int.from_bytes(hashlib.sha256(key.encode()).digest(), 'big'))
        return Roll(tuple(rng.randint(1, 12) for _ in range(2 + bonus)), modifier)


@dataclass(frozen=True)
class EncounterSpec:
    encounter_id: str
    rules_revision: str
    opposition_order: tuple[str, ...]
    opposition_script: tuple[tuple[str, Action], ...]
    opposition_information: bool = False
    opposition_paid_changes: bool = False

    def __post_init__(self):
        order = self.opposition_order
        if not isinstance(order, tuple) or not order or any(not isinstance(a, str) or not a for a in order):
            raise ValueError('An immutable nonempty actor order is required')
        if len(set(order)) != len(order):
            raise ValueError('Duplicate opposition actors')
        if not isinstance(self.opposition_script, tuple) or len(self.opposition_script) != 3:
            raise ValueError('An exchange requires three immutable assignments')
        for entry in self.opposition_script:
            if not isinstance(entry, tuple) or len(entry) != 2 or entry[0] not in order:
                raise ValueError('Script actor must belong to the encounter')
            Action(entry[1])
        if not self.encounter_id or not self.rules_revision:
            raise ValueError('Encounter identity and rules revision are required')

    def actors_after(self, last=None, count=3):
        if type(count) is not int or count < 0:
            raise ValueError('Count must be a nonnegative integer')
        if last is not None and last not in self.opposition_order:
            raise ValueError('Unknown actor')
        start = 0 if last is None else self.opposition_order.index(last) + 1
        return [self.opposition_order[(start + i) % len(self.opposition_order)] for i in range(count)]


@dataclass
class SideState:
    starting_disposition: int
    disposition: int
    resources: dict[str, int] = field(default_factory=dict)

    def __post_init__(self):
        if any(type(n) is not int or n < 0 for n in (self.starting_disposition, self.disposition)):
            raise ValueError('Disposition must be a nonnegative integer')
        if any(type(n) is not int or n < 0 for n in self.resources.values()):
            raise ValueError('Resources must be nonnegative integers')

    def restore(self, amount):
        if type(amount) is not int or amount < 0:
            raise ValueError('Recovery must be a nonnegative integer')
        recovered = min(amount, max(0, self.starting_disposition - self.disposition))
        self.disposition += recovered
        return recovered

    def spend(self, resource, amount):
        if type(amount) is not int or amount < 0:
            raise ValueError('Cost must be a nonnegative integer')
        if resource not in self.resources or self.resources[resource] < amount:
            raise ValueError('Unavailable resource or insufficient funds')
        self.resources[resource] -= amount

    def fork(self):
        return copy.deepcopy(self)
