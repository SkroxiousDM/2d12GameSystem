"""Conflict-state containers and authorization; no volley or Special resolver."""
from dataclasses import dataclass, field
from copy import deepcopy
import re
from core import Action, DiceStream, SideState
from encounters import CollectorsEncounter


def nonnegative(value, label):
    if type(value) is not int or value < 0:
        raise ValueError(label + ' must be a nonnegative integer')


@dataclass(frozen=True)
class Status:
    name: str
    tier: int
    source: str = ''

    def __post_init__(self):
        if not isinstance(self.name, str) or not self.name.strip() or type(self.tier) is not int or self.tier < 1:
            raise ValueError('A named positive-tier status is required')


@dataclass
class ActorState:
    actor_id: str
    pools: dict[str, int] = field(default_factory=dict)
    pool_caps: dict[str, int] = field(default_factory=dict)
    edges: dict[str, int] = field(default_factory=dict)
    tyche: int = 0
    statuses: list[Status] = field(default_factory=list)
    shrugs: int = 0
    injury_trade_used: bool = False
    available: bool = True
    scene_uses: dict[str, int] = field(default_factory=dict)
    exchange_uses: dict[str, int] = field(default_factory=dict)

    def validate(self):
        if not isinstance(self.actor_id, str) or not self.actor_id:
            raise ValueError('Actor identity required')
        if set(self.pools) != set(self.pool_caps):
            raise ValueError('Every pool needs a cap')
        for label, values in (('pool', self.pools), ('cap', self.pool_caps), ('Edge', self.edges),
                              ('scene uses', self.scene_uses), ('exchange uses', self.exchange_uses)):
            for key, value in values.items():
                if not isinstance(key, str) or not key:
                    raise ValueError('Nonempty resource or usage key required')
                nonnegative(value, label)
        if any(self.pools[k] > self.pool_caps[k] for k in self.pools):
            raise ValueError('Pool exceeds cap')
        nonnegative(self.tyche, 'Tychē')
        nonnegative(self.shrugs, 'Shrugs')
        if type(self.available) is not bool or type(self.injury_trade_used) is not bool:
            raise ValueError('Boolean participation and injury marker required')
        if any(not isinstance(s, Status) for s in self.statuses):
            raise ValueError('Use Status records; stacking not implemented')

    def record_use(self, name, *, scope='scene'):
        if not isinstance(name, str) or not name or scope not in ('scene', 'exchange'):
            raise ValueError('Named scene/exchange usage required')
        uses = self.scene_uses if scope == 'scene' else self.exchange_uses
        uses[name] = uses.get(name, 0) + 1


@dataclass
class Side:
    shared: SideState
    actors: dict[str, ActorState]
    order: tuple[str, ...]
    last_actor: str | None = None
    script: tuple[tuple[str, Action], ...] | None = None
    revealed: dict[int, tuple[str, Action]] = field(default_factory=dict)
    knowledge: dict = field(default_factory=dict)

    def validate(self):
        self.shared.__post_init__()
        if not isinstance(self.order, tuple) or not self.order or len(set(self.order)) != len(self.order):
            raise ValueError('Unique immutable roster required')
        if set(self.order) != set(self.actors):
            raise ValueError('Roster and actor snapshots differ')
        for actor_id, actor in self.actors.items():
            actor.validate()
            if actor.actor_id != actor_id:
                raise ValueError('Actor identity mismatch')
        if self.last_actor is not None and self.last_actor not in self.actors:
            raise ValueError('Unknown rotation cursor')

    def projected_actors(self, count=3):
        nonnegative(count, 'Count')
        if count == 0:
            return ()
        if not any(a.available for a in self.actors.values()):
            raise ValueError('No eligible participants')
        cursor = -1 if self.last_actor is None else self.order.index(self.last_actor)
        result = []
        while len(result) < count:
            cursor = (cursor + 1) % len(self.order)
            actor = self.order[cursor]
            if self.actors[actor].available:
                result.append(actor)
        return tuple(result)

    def take_turn(self):
        actor = self.projected_actors(1)[0]
        self.last_actor = actor
        return actor

    def set_available(self, actor, available):
        if actor not in self.actors or type(available) is not bool:
            raise ValueError('Known actor and boolean participation required')
        self.actors[actor].available = available

    def validate_script(self, script):
        if not isinstance(script, tuple) or len(script) != 3:
            raise ValueError('Exactly three immutable assignments required')
        normalized = []
        for item in script:
            if not isinstance(item, tuple) or len(item) != 2:
                raise ValueError('Actor/action pairs required')
            normalized.append((item[0], Action(item[1])))
        normalized = tuple(normalized)
        if tuple(a for a, _ in normalized) != self.projected_actors():
            raise ValueError('Script does not follow eligible continuous rotation')
        return normalized


@dataclass(frozen=True)
class Event:
    namespace: str
    exchange: int
    volley: int
    kind: str
    payload: dict


@dataclass
class ConflictState:
    encounter: CollectorsEncounter
    sides: dict[str, Side]
    seed: int
    namespace: str = 'actual'
    exchange: int = 0
    volley: int = 0
    _events: list[Event] = field(default_factory=list, repr=False)
    _rollout_ids: set[str] = field(default_factory=set, repr=False)

    @property
    def dice(self):
        return DiceStream(self.seed, self.namespace)

    def authorize(self, side, operation):
        if side not in self.sides or operation not in ('information', 'paid_script_change'):
            raise ValueError('Unknown side or operation')
        if side == 'opposition':
            permitted = (self.encounter.spec.opposition_information if operation == 'information'
                         else self.encounter.spec.opposition_paid_changes)
            if not permitted:
                raise PermissionError('Collectors may not purchase ' + operation)
        # Hunter permission is not a purchase implementation or a Protocol exemption.

    def set_script(self, side, script):
        if side not in self.sides:
            raise ValueError('Unknown side')
        normalized = self.sides[side].validate_script(script)
        if side == 'opposition' and normalized != self.encounter.spec.opposition_script:
            raise PermissionError('Collectors must use the approved fixed assignments')
        self.sides[side].script = normalized

    def emit(self, kind, payload):
        if not isinstance(kind, str) or not kind or not isinstance(payload, dict):
            raise ValueError('Named event with dictionary payload required')
        self._events.append(Event(self.namespace, self.exchange, self.volley, kind, deepcopy(payload)))

    def events(self):
        return deepcopy(tuple(self._events))

    def actual_events(self):
        if self.namespace != 'actual':
            return ()
        return deepcopy(tuple(e for e in self._events if e.namespace == 'actual'))

    def fork(self, rollout_id):
        if not isinstance(rollout_id, str) or not re.fullmatch(r'[A-Za-z0-9_.-]+', rollout_id) or rollout_id == 'actual':
            raise ValueError('Explicit non-actual rollout identifier required')
        if rollout_id in self._rollout_ids:
            raise ValueError('Rollout identifier already used on this state')
        self._rollout_ids.add(rollout_id)
        clone = deepcopy(self)
        clone.namespace = self.namespace + '/rollout:' + rollout_id
        clone._events = []
        clone._rollout_ids = set()
        return clone

    def knowledge_view(self, viewer):
        if viewer not in self.sides:
            raise ValueError('Unknown viewer')
        public = {}
        for side_id, side in self.sides.items():
            public[side_id] = {
                'starting_disposition': side.shared.starting_disposition,
                'disposition': side.shared.disposition,
                'resources': deepcopy(side.shared.resources),
                'participants': {key: {'available': a.available, 'statuses': deepcopy(a.statuses)}
                                 for key, a in side.actors.items()},
                'revealed': deepcopy(side.revealed)}
        own = self.sides[viewer]
        return {'viewer': viewer, 'exchange': self.exchange, 'volley': self.volley,
                'sides': public, 'own_actors': deepcopy(own.actors),
                'own_script': deepcopy(own.script), 'knowledge': deepcopy(own.knowledge)}


def create_conflict(encounter, hunter_side, *, seed):
    encounter.validate_for_run()
    if type(seed) is not int:
        raise ValueError('Integer seed required')
    hunters = deepcopy(hunter_side)
    hunters.validate()
    if hunters.shared.disposition != hunters.shared.starting_disposition:
        raise ValueError('Supply a fresh starting hunter snapshot')
    if hunters.last_actor is not None or hunters.script is not None or hunters.revealed:
        raise ValueError('Fresh hunter rotation and unrevealed script required')
    hunters.shared.resources['Momentum'] = encounter.starting_momentum
    opposition_actors = {c.actor: ActorState(c.actor, shrugs=c.package.shrugs) for c in encounter.cards}
    opposition = Side(SideState(encounter.starting_disposition, encounter.starting_disposition,
                               {'Woe': encounter.starting_woe}), opposition_actors,
                      encounter.spec.opposition_order)
    opposition.validate()
    state = ConflictState(deepcopy(encounter), {'hunters': hunters, 'opposition': opposition}, seed)
    state.set_script('opposition', encounter.spec.opposition_script)
    return state
