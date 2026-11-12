"""Transactional basic-volley kernel, not a production combat resolver.

Callers must explicitly pass basic_only=True. Cards still require review; this
flag does not bypass encounter validation. Prepared rolls supply base modifiers;
hunter builds, applicability of tags/statuses and roll preparation are not certified.

Supported: normal rolled interactions, Guard on independent hunter rolls, normal
Momentum/Woe bonus dice, restricted explicit cost choices, primary effects,
Maneuver Impede/Position, hunter unused Power, rotation and volley advancement.
Not supported: traits/Specials, area, Effort/running dry, Tychē, automatic success,
mechanical consequences, statuses/resistance, injury trades, other supplementary
effects, script changes, information purchases, finishing or compromise.

Narrative consequences are recorded obligations, never callbacks or inferred
mechanical effects. NPC unused-Power handling is deliberately unsupported.
Pre-roll debits reserve existing balances before incoming give-Woe payments;
cross-funding those debits within the same stage is not implemented.

Successful transactions retain the ConflictState object but replace its nested
snapshots: callers must reacquire Side/Actor references. Rejected transactions
leave state, pending effects, events, cursors and resources unchanged.
"""
from copy import deepcopy
from dataclasses import dataclass, field
from core import Action, Outcome, Roll, evaluate, interaction
from state import ConflictState

SIDES = ('hunters', 'opposition')


def _integer(value, name, minimum=0):
    if type(value) is not int or value < minimum:
        raise ValueError(name + ' must be an integer >= ' + str(minimum))


@dataclass(frozen=True)
class PowerPlan:
    primary: int | None = None
    impede: bool = False
    position: bool = False

    def validate(self):
        if self.primary is not None:
            _integer(self.primary, 'Committed Power')
        if type(self.impede) is not bool or type(self.position) is not bool:
            raise ValueError('Impede and Position are single boolean purchases')


@dataclass(frozen=True)
class ActionRequest:
    roll: Roll | None
    plan: PowerPlan = field(default_factory=PowerPlan)
    bonus_sources: tuple[str, ...] = ()
    independent_adjustment: int = 0
    success_cost: str | None = None
    success_consequence: str = ''
    complication: str | None = None
    complication_consequence: str = ''
    required_features: tuple[str, ...] = ()

    def validate(self):
        if self.roll is not None:
            if not isinstance(self.roll, Roll):
                raise ValueError('Use a prepared Roll or None for a trumped action')
            self.roll.__post_init__()
        if not isinstance(self.plan, PowerPlan):
            raise ValueError('PowerPlan required')
        self.plan.validate()
        if not isinstance(self.bonus_sources, tuple) or any(not isinstance(s, str) for s in self.bonus_sources):
            raise ValueError('Immutable named bonus sources required')
        if type(self.independent_adjustment) is not int:
            raise ValueError('Explicit independent difficulty adjustment must be integer')
        if not isinstance(self.required_features, tuple) or any(not isinstance(s, str) for s in self.required_features):
            raise ValueError('Immutable feature names required')
        if self.required_features:
            raise NotImplementedError('Unsupported features: ' + ', '.join(self.required_features))
        if self.success_cost not in (None, 'woe', 'consequence'):
            raise ValueError('Choose woe or consequence for independent Success at a Cost')
        if self.complication not in (None, 'buyoff', 'consequence', 'fallback_woe'):
            raise ValueError('Unknown complication choice')
        for text in (self.success_consequence, self.complication_consequence):
            if not isinstance(text, str):
                raise ValueError('Narrative consequence must be text')


@dataclass
class Pending:
    impede: bool = False
    position: bool = False

    def validate(self):
        if type(self.impede) is not bool or type(self.position) is not bool:
            raise ValueError('Pending effects are nonstacking booleans')


@dataclass
class ResolutionContext:
    state: ConflictState
    pending: dict[str, Pending] = field(default_factory=lambda: {s: Pending() for s in SIDES})
    terminal: str | None = None

    def fork(self, label):
        return ResolutionContext(self.state.fork(label), deepcopy(self.pending), self.terminal)


@dataclass(frozen=True)
class VolleyResult:
    exchange: int
    volley: int
    actors: dict
    modes: dict
    outcomes: dict
    rolls: dict
    loss_inflicted: dict
    recovered: dict
    terminal: str | None
    scope: str = 'basic_actions_only'


def resolve_rolls(actions, rolls, targets=(15, 15)):
    """Pure rolled-interaction layer. No costs, effects, events or mutation."""
    if any(not isinstance(v, tuple) or len(v) != 2 for v in (actions, rolls, targets)):
        raise ValueError('Exactly two immutable actions, rolls and targets required')
    actions = tuple(Action(a) for a in actions)
    if any(type(t) is not int for t in targets):
        raise ValueError('Integer targets required; there is no difficulty floor')
    modes = interaction(*actions)
    for mode, roll in zip(modes, rolls):
        if mode != 'trumped':
            if not isinstance(roll, Roll):
                raise ValueError('A non-trumped action requires a Roll')
            roll.__post_init__()
    results = []
    for i, mode in enumerate(modes):
        roll = rolls[i]
        if mode == 'trumped':
            if roll is not None:
                raise ValueError('A trumped action must not roll')
            results.append(Outcome('trumped', 0, False))
        else:
            if not isinstance(roll, Roll):
                raise ValueError('A non-trumped action requires a Roll')
            roll.__post_init__()
            target = rolls[1-i].total if mode == 'versus' else targets[i]
            results.append(evaluate(roll, target, versus=mode == 'versus'))
    return modes, tuple(results)


def _validate_context(context):
    s = context.state
    if not isinstance(s, ConflictState) or set(s.sides) != set(SIDES):
        raise ValueError('Two-side engine-v2 ConflictState required')
    s.encounter.validate_for_run()
    if context.terminal is not None:
        raise ValueError('Conflict has already ended')
    _integer(s.exchange, 'Exchange')
    _integer(s.volley, 'Volley')
    if s.volley > 2 or set(context.pending) != set(SIDES):
        raise ValueError('Invalid volley or pending-effect sides')
    for side_id in SIDES:
        side = s.sides[side_id]
        side.validate()
        context.pending[side_id].validate()
        if side.shared.disposition == 0 or not any(a.available for a in side.actors.values()):
            raise ValueError('Already-defeated side requires outcome handling, not another volley')
        script = side.script
        if not isinstance(script, tuple) or len(script) != 3:
            raise ValueError('Both sides must commit full scripts')
        for item in script:
            if not isinstance(item, tuple) or len(item) != 2 or item[0] not in side.actors:
                raise ValueError('Invalid assignment')
            Action(item[1])
        if tuple(a for a, _ in script[s.volley:]) != side.projected_actors(3-s.volley):
            raise ValueError('Remaining script violates eligible rotation')
        if set(side.revealed) != set(range(s.volley)) or any(side.revealed[v] != script[v] for v in side.revealed):
            raise ValueError('Reveal history and committed script differ')
    if s.sides['opposition'].script != s.encounter.spec.opposition_script:
        raise PermissionError('Collectors fixed assignments cannot be rewritten')
    momentum = s.sides['hunters'].shared.resources.get('Momentum')
    _integer(momentum, 'Momentum')
    if momentum > 6:
        raise ValueError('Momentum exceeds cap')
    _integer(s.sides['opposition'].shared.resources.get('Woe'), 'Woe')


def _choices(s, requests, outcomes, modes):
    woe = s.sides['opposition'].shared
    for side_id in SIDES:
        outcome, request = outcomes[side_id], requests[side_id]
        if modes[side_id] == 'independent' and outcome.result == 'failure':
            woe.resources['Woe'] += 1
            s.emit('ordinary_failure_woe', {'side': side_id, 'amount': 1})
        if outcome.result == 'cost':
            if request.success_cost is None:
                raise ValueError('Success at a Cost requires an explicit choice')
            if request.success_cost == 'woe':
                if request.success_consequence:
                    raise ValueError('Unused Success-at-a-Cost narrative')
                woe.resources['Woe'] += 1
                s.emit('success_cost_woe', {'side': side_id, 'amount': 1})
            else:
                if not request.success_consequence.strip():
                    raise ValueError('Name the proportionate narrative cost')
                s.emit('narrative_success_cost', {'side': side_id, 'text': request.success_consequence})
        elif request.success_cost is not None or request.success_consequence:
            raise ValueError('Unused Success-at-a-Cost choice')
    # All independent failure/cost Woe is recorded before complication choices.
    for side_id in SIDES:
        outcome, request = outcomes[side_id], requests[side_id]
        if not outcome.complication:
            if request.complication is not None or request.complication_consequence:
                raise ValueError('Unused complication choice')
            continue
        choice = request.complication
        if choice is None:
            raise ValueError('A dice complication requires an explicit choice')
        if choice == 'consequence':
            if not request.complication_consequence.strip():
                raise ValueError('Name the fitting narrative complication')
            s.emit('narrative_complication', {'side': side_id, 'text': request.complication_consequence})
        else:
            if request.complication_consequence:
                raise ValueError('Unused complication narrative')
            if side_id == 'opposition':
                if choice != 'buyoff':
                    raise ValueError('NPCs have no gain-Woe fallback for a complication')
                woe.spend('Woe', 2)
                delta = -2
            else:
                woe.resources['Woe'] += 2
                delta = 2
            s.emit('complication_payment', {'side': side_id, 'choice': choice, 'woe_delta': delta})


def _apply_plan(context, side_id, action, outcome, plan):
    s = context.state
    own = s.sides[side_id]
    other_id = SIDES[1-SIDES.index(side_id)]
    other = s.sides[other_id]
    if action == Action.MANEUVER:
        if plan.primary not in (None, 0):
            raise ValueError('Maneuver has no primary Disposition purchase')
        committed = 0
    else:
        if plan.impede or plan.position:
            raise ValueError('Ordinary Impede/Position purchases require Maneuver')
        committed = outcome.power if plan.primary is None else plan.primary
    spent = committed + int(plan.impede) + int(plan.position)
    if spent > outcome.power:
        raise ValueError('Power budget exceeded')
    unused = outcome.power-spent
    if side_id == 'opposition' and unused:
        raise NotImplementedError('NPC unspent-Power handling is not implemented; allocate explicitly')
    loss = recovery = 0
    if action in (Action.ATTACK, Action.FEINT) and committed:
        loss = min(other.shared.disposition, committed+1)
        other.shared.disposition -= loss
    elif action == Action.DEFEND:
        recovery = own.shared.restore(committed)
    if plan.impede:
        context.pending[other_id].impede = True
    if plan.position:
        context.pending[side_id].position = True
    if side_id == 'hunters' and unused:
        own.shared.resources['Momentum'] = min(6, own.shared.resources['Momentum']+unused)
    s.emit('basic_effects', {'side': side_id, 'action': action.value,
        'power': outcome.power, 'primary_committed': committed, 'impede': plan.impede,
        'position': plan.position, 'unused_power': unused, 'loss_inflicted': loss,
        'recovered': recovery})
    return loss, recovery


def resolve_volley(context, requests, *, basic_only=False):
    """Commit one basic volley atomically. Never infer ability permissions."""
    if basic_only is not True:
        raise NotImplementedError('Full combat pipeline unavailable; basic_only=True is an explicit kernel-test scope')
    if not isinstance(context, ResolutionContext):
        raise ValueError('ResolutionContext required')
    if not isinstance(requests, dict) or set(requests) != set(SIDES):
        raise ValueError('Exactly one request per side required')
    trial = deepcopy(context)
    _validate_context(trial)
    for request in requests.values():
        if not isinstance(request, ActionRequest):
            raise ValueError('ActionRequest required')
        request.validate()
    s = trial.state
    ex, volley = s.exchange, s.volley
    actors = {sid: s.sides[sid].script[volley][0] for sid in SIDES}
    actions = {sid: Action(s.sides[sid].script[volley][1]) for sid in SIDES}
    modes = dict(zip(SIDES, interaction(*(actions[sid] for sid in SIDES))))
    s.emit('volley_revealed', {sid: (actors[sid], actions[sid].value) for sid in SIDES})
    effective = {}
    for sid in SIDES:
        side, request, pending = s.sides[sid], requests[sid], trial.pending[sid]
        side.revealed[volley] = side.script[volley]
        if side.take_turn() != actors[sid]:
            raise ValueError('Actor changed during transaction')
        if modes[sid] == 'trumped':
            if request.roll is not None or request.bonus_sources:
                raise ValueError('Trumped action cannot roll or buy roll dice')
            effective[sid] = None
        else:
            if request.roll is None:
                raise ValueError('Non-trumped action requires a prepared roll')
            allowed = {'momentum', 'give_woe'} if sid == 'hunters' else {'woe'}
            if any(src not in allowed for src in request.bonus_sources):
                raise NotImplementedError('Unsupported bonus source for ' + sid)
            bonus = len(request.bonus_sources)+int(pending.position)
            if bonus > 2 or len(request.roll.dice) != 2+bonus:
                raise ValueError('Dice count must match declared sources and pending Position, max +2')
            effective[sid] = Roll(request.roll.dice, request.roll.modifier-3*int(pending.impede))
        trial.pending[sid] = Pending()
    momentum_dice = requests['hunters'].bonus_sources.count('momentum')
    momentum_cost = 0 if momentum_dice == 0 else 1 if momentum_dice == 1 else 3
    woe_cost = len(requests['opposition'].bonus_sources)
    if momentum_cost:
        s.sides['hunters'].shared.spend('Momentum', momentum_cost)
    if woe_cost:
        s.sides['opposition'].shared.spend('Woe', woe_cost)
    incoming_woe = requests['hunters'].bonus_sources.count('give_woe')
    s.sides['opposition'].shared.resources['Woe'] += incoming_woe
    s.emit('roll_costs', {'Momentum': momentum_cost, 'Woe_debited': woe_cost, 'Woe_given': incoming_woe})
    guard = next(c.package.guard for c in s.encounter.cards if c.actor == actors['opposition'])
    targets = (15+guard+requests['hunters'].independent_adjustment,
               15+requests['opposition'].independent_adjustment)
    _, results = resolve_rolls(tuple(actions[sid] for sid in SIDES),
                              tuple(effective[sid] for sid in SIDES), targets)
    outcomes = dict(zip(SIDES, results))
    s.emit('roll_outcomes', {sid: {'mode': modes[sid], 'result': outcomes[sid].result,
        'power': outcomes[sid].power, 'complication': outcomes[sid].complication,
        'dice': effective[sid].dice if effective[sid] else (),
        'total': effective[sid].total if effective[sid] else None} for sid in SIDES})
    _choices(s, requests, outcomes, modes)
    losses, recoveries = {}, {}
    for sid in SIDES:
        losses[sid], recoveries[sid] = _apply_plan(trial, sid, actions[sid], outcomes[sid], requests[sid].plan)
    defeated = {sid: s.sides[sid].shared.disposition == 0 or
        not any(a.available for a in s.sides[sid].actors.values()) for sid in SIDES}
    trial.terminal = ('mutual_defeat' if all(defeated.values()) else
        'opposition' if defeated['hunters'] else 'hunters' if defeated['opposition'] else None)
    s.emit('volley_completed', {'terminal': trial.terminal,
        'disposition': {sid: s.sides[sid].shared.disposition for sid in SIDES}})
    result = VolleyResult(ex, volley, deepcopy(actors), deepcopy(modes), deepcopy(outcomes),
                          deepcopy(effective), deepcopy(losses), deepcopy(recoveries), trial.terminal)
    if trial.terminal is None:
        if volley < 2:
            s.volley += 1
        else:
            s.exchange += 1
            s.volley = 0
            for side in s.sides.values():
                side.script = None
                side.revealed.clear()
                for actor in side.actors.values():
                    actor.exchange_uses.clear()
    original_state = context.state
    original_state.__dict__.clear()
    original_state.__dict__.update(s.__dict__)
    context.pending = trial.pending
    context.terminal = trial.terminal
    return result
