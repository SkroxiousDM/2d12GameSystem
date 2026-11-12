"""Proposed Collectors data and run gates; no combat execution."""
from dataclasses import dataclass, replace
from core import Action, EncounterSpec

BASE_REVISION = '69f2dee73ea0ab757c1c34d50fc10ae3ca14417e'
CARD_SOURCE = 'docs/playtest/tollhouse-collectors-calibration-cards-proposed.md'
CARD_SOURCE_BLOB = '3907e37afd770737311a5d81b6d603774f75325a'
ORIGINAL_SOURCE = 'docs/playtest/tollhouse-collectors-cards.md'
ORDER = ('Noll Sable', 'Venn Carrow', 'Edda Pike')
SCRIPT = ((ORDER[0], Action.MANEUVER), (ORDER[1], Action.ATTACK), (ORDER[2], Action.DEFEND))


@dataclass(frozen=True)
class RankPackage:
    grit: int
    best: int
    fair: int
    weak: int
    guard: int
    shrugs: int
    power_tags: int
    special_limit: int
    weakness_tags: int = 1


RANKS = {'Minor': RankPackage(3, 5, 3, 1, 0, 0, 2, 1),
         'Established': RankPackage(5, 6, 4, 2, 1, 1, 3, 2)}
ROLES = {'Venn Carrow': ('Shooter', 'Dead Aim', 'Volley', 2, Action.ATTACK, Action.FEINT),
         'Edda Pike': ('Bulwark', 'Interpose', 'Dirty Trick', 1, Action.DEFEND, Action.FEINT),
         'Noll Sable': ('Skirmisher', 'Hit and Run', 'Dirty Trick', 1, Action.MANEUVER, Action.DEFEND)}


@dataclass(frozen=True)
class AbilityPermission:
    name: str
    cost_woe: int
    trigger: str
    limit: str
    effect_contract: str


ABILITIES = {
 'Dead Aim': AbilityPermission('Dead Aim', 0, 'first Attack each scene', 'once/scene',
     'one free bonus die, included in the normal +2 bonus-dice cap'),
 'Hit and Run': AbilityPermission('Hit and Run', 0, 'successful Maneuver', 'each legal trigger',
     'one additional opposing shared Disposition loss; not Power or status'),
 'Interpose': AbilityPermission('Interpose', 0, 'eligible allied status before reduction', 'once/exchange',
     'status redirection only; fiction required; no protected payments or area affecting both'),
 'Volley': AbilityPermission('Volley', 2, 'permitted Attack with established area', 'each legal trigger',
     'explicit affected participants; shared area loss once; no automatic status'),
 'Dirty Trick': AbilityPermission('Dirty Trick', 1, 'eligible successful action', 'nonstacking pending Impede',
     'next scripted action -3; carries across exchanges; expires without a roll')}


@dataclass(frozen=True)
class Card:
    actor: str
    rank: str
    role: str
    ratings: tuple[tuple[Action, int], ...]
    other: int | None
    armour: int | None
    equipment: tuple[str, ...]
    harm: str
    power_tags: tuple[str, ...]
    weakness_tags: tuple[str, ...]
    role_trait: str
    specials: tuple[str, ...]
    tell: str
    objective: str
    kind: str = 'Human'
    reviewed: bool = False
    source: str = CARD_SOURCE
    source_revision: str = BASE_REVISION
    source_blob: str = CARD_SOURCE_BLOB
    historical_fields: tuple[str, ...] = ('Minor action ratings', 'role', 'role_trait', 'selected Special')
    proposed_fields: tuple[str, ...] = ('equipment', 'armour', 'harm', 'tags', 'other', 'tell', 'objective')

    @property
    def package(self):
        return RANKS[self.rank]

    def rating(self, action):
        return dict(self.ratings)[Action(action)]

    @property
    def special_limit(self):
        return self.package.special_limit

    def errors(self, *, require_review=True):
        errors = []
        if self.actor not in ROLES or self.rank not in RANKS:
            return ['Unknown Collector or rank']
        role, trait, special, _, best, weak = ROLES[self.actor]
        p = self.package
        if self.kind != 'Human' or (self.role, self.role_trait, self.specials) != (role, trait, (special,)):
            errors.append('Role, Kind, trait or selected Special mismatch')
        expected = tuple((a, p.best if a == best else p.weak if a == weak else p.fair) for a in Action)
        if self.ratings != expected:
            errors.append('Action assignments or rank ratings mismatch')
        if type(self.other) is not int or self.other != p.fair:
            errors.append('Other must equal proposed Fair rating')
        if type(self.armour) is not int or self.armour != (1 if self.actor == 'Edda Pike' else 0):
            errors.append('Missing or mismatched proposed Armour')
        for field in ('equipment', 'power_tags', 'weakness_tags'):
            value = getattr(self, field)
            if not isinstance(value, tuple) or not value or any(not isinstance(v, str) or not v.strip() for v in value):
                errors.append('Missing or invalid ' + field)
        if not isinstance(self.power_tags, tuple) or len(self.power_tags) != p.power_tags or len(set(self.power_tags)) != len(self.power_tags):
            errors.append('Power tag allowance mismatch')
        if not isinstance(self.weakness_tags, tuple) or len(self.weakness_tags) != p.weakness_tags:
            errors.append('Weakness tag allowance mismatch')
        for field in ('harm', 'tell', 'objective', 'source', 'source_revision', 'source_blob'):
            value = getattr(self, field)
            if not isinstance(value, str) or not value.strip():
                errors.append('Missing ' + field)
        if type(self.reviewed) is not bool or (require_review and not self.reviewed):
            errors.append('Card is unreviewed')
        return errors

    def validate(self, *, require_review=True):
        errors = self.errors(require_review=require_review)
        if errors:
            raise ValueError(f'{self.actor} ({self.rank}): ' + '; '.join(errors))


_DETAILS = {
 'Venn Carrow': (
  ('Repeating carbine', 'ammunition pouch', 'utility knife', 'heavy road coat'),
  'wounded — carbine shot; utility knife when an appropriate close-range Attack is established',
  ('practised carbine aim', 'steady firing stance', 'disciplined fields of fire'),
  'protects his gun before his post',
  'He settles the stock against his shoulder and lets his breath out.',
  'Keep the approach covered until the travellers surrender a supply pack.'),
 'Edda Pike': (
  ('Short spear', 'timber-faced shield', 'patched mail vest', 'tollhouse keys'),
  'wounded — spear thrust',
  ('shield braced at the threshold', 'refuses to yield ground', 'reads the next rush'),
  'will not abandon the crossing',
  'She lowers her weight behind the shield and plants its edge against the ground.',
  'Keep the barrier standing and the crew together until the toll is secured.'),
 'Noll Sable': (
  ('Long knife', 'short hooked staff', 'weighted cord', 'soft boots', 'road leathers'),
  'wounded — knife or hooked-staff strike',
  ('quick through broken ground', 'hooked staff catches loose gear', 'always finds the open flank'),
  'needs an escape route',
  'He glances behind the travellers, shifts sideways, and lets the staff’s hook dip.',
  'Disorganise the travellers and expose a supply pack without becoming trapped.')}


def collector_card(actor, rank='Minor'):
    if actor not in ROLES or rank not in RANKS:
        raise ValueError('Unknown Collector or rank')
    role, trait, special, _, best, weak = ROLES[actor]
    equipment, harm, tags, weakness, tell, objective = _DETAILS[actor]
    p = RANKS[rank]
    card = Card(actor, rank, role,
        tuple((a, p.best if a == best else p.weak if a == weak else p.fair) for a in Action),
        p.fair, 1 if actor == 'Edda Pike' else 0, equipment, harm,
        tags[:p.power_tags], (weakness,), trait, (special,), tell, objective)
    if rank == 'Established':
        card = replace(card, historical_fields=('role', 'role_trait', 'selected Special'),
                       proposed_fields=card.proposed_fields + ('rank promotion', 'action ratings'))
    card.validate(require_review=False)
    return card


CONFIGURATIONS = {
 'G9-MMM': ('Minor', 'Minor', 'Minor'),
 'G11-EMM': ('Established', 'Minor', 'Minor'),
 'G11-MEM': ('Minor', 'Established', 'Minor'),
 'G11-MME': ('Minor', 'Minor', 'Established'),
 'G13-EEM': ('Established', 'Established', 'Minor'),
 'G13-EME': ('Established', 'Minor', 'Established'),
 'G13-MEE': ('Minor', 'Established', 'Established')}


@dataclass(frozen=True)
class CollectorsEncounter:
    configuration: str
    cards: tuple[Card, ...]
    spec: EncounterSpec
    opposition_objective: str = 'Hold the crossing and seize one supply pack as the unpaid toll.'
    hunter_objective: str = 'Force passage with the party and its supplies intact.'
    stakes: str = 'Capture, confiscation or forced retreat within declared intent; no automatic killing.'
    starting_woe: int = 6
    starting_momentum: int = 1
    use_legal_specials: bool = True
    target_selection: str = 'not applicable'
    superiority: bool = False
    reinforcements: bool = False
    voluntary_concessions: bool = False

    @property
    def starting_disposition(self):
        return sum(card.package.grit for card in self.cards)

    def validate_for_run(self):
        if self.configuration not in CONFIGURATIONS:
            raise ValueError('Unknown configuration')
        if tuple(c.actor for c in self.cards) != ('Venn Carrow', 'Edda Pike', 'Noll Sable'):
            raise ValueError('Cards must be Venn/Edda/Noll, exactly once')
        if tuple(c.rank for c in self.cards) != CONFIGURATIONS[self.configuration]:
            raise ValueError('Configuration rank mismatch')
        for card in self.cards:
            card.validate()
        if (self.spec.opposition_order != ORDER or self.spec.opposition_script != SCRIPT
            or self.spec.opposition_information or self.spec.opposition_paid_changes):
            raise ValueError('Approved fixed policy mismatch')
        if (self.starting_woe != 6 or self.starting_momentum != 1
            or self.use_legal_specials is not True or self.target_selection != 'not applicable'
            or self.superiority or self.reinforcements or self.voluntary_concessions):
            raise ValueError('Calibration controls mismatch')
        if not self.opposition_objective or not self.hunter_objective or not self.stakes:
            raise ValueError('Missing encounter objectives or stakes')


def collectors_encounter(configuration='G9-MMM'):
    if configuration not in CONFIGURATIONS:
        raise ValueError('Unknown configuration')
    cards = tuple(collector_card(a, r) for a, r in zip(
        ('Venn Carrow', 'Edda Pike', 'Noll Sable'), CONFIGURATIONS[configuration]))
    spec = EncounterSpec(configuration, BASE_REVISION, ORDER, SCRIPT)
    return CollectorsEncounter(configuration, cards, spec)
