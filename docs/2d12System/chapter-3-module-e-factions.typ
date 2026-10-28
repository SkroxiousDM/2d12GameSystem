#import "common.typ": *

== Module E — Factions, Standing & Obligations

#columns(2, gutter: 6mm)[
Organizations have ambitions, resources, loyalties, and limits. This module connects their struggles to the party's adventures: factions provide opportunities and assistance; the party's actions determine what those factions can accomplish.

Use this module when alliances, patronage, collective action, or political consequences matter. It is optional and remains setting-neutral. These rules are a playtest draft, not tested balance claims.

When enabled, this module replaces the faction action procedure in Module C.5. Retain the rest of Module C. Use the core rules for PC checks, Effects, Truths, clocks, and conflicts except where an explicit organizational exception appears below.

=== E.1 Faction Records

A faction is an organized group pursuing a shared purpose: a household, village council, guild, temple, company of soldiers, criminal network, or administration.

Record:
- Name, purpose, and long-term ambition.
- Operational reach: the places and communities where it can act.
- Five Qualities, each rated 0 to +4.
- Two or three assets and one vulnerability.
- Standing toward the party, from −3 to +3.
- A representative who can explain or authorize requests.
- One current project and its clock.
- An important ally and rival, where relevant.
- Outstanding favors, obligations, offices, and personal exceptions.

Prepare full records only for active factions. A name, purpose, and Standing suffice for a background group. Begin with three active factions; normally track no more than five at once.

The party may found or lead a faction. Give it ratings justified by its actual people and resources; do not purchase a second character sheet with personal pool points. Leadership grants only the authority its governing structure recognizes.

#include "drafts/module-e-1a-starting-cluster.typ"

=== E.2 Organizational Qualities

#table(columns: (26%, 74%),
  table.header([Quality], [Measures]),
  [Might], [Organized force, military readiness, and coercive capacity.],
  [Treasure], [Accessible wealth, credit, and financial organization.],
  [Influence], [Information networks and ability to shape outside decisions.],
  [Territory], [Productive infrastructure, population, holdings, transport, and logistical reach.],
  [Cohesion], [Internal loyalty, legitimacy, discipline, and shared identity.],
)

#table(columns: (22%, 78%),
  table.header([Rating], [Capability]),
  [0], [No independent organized capability in this field.],
  [+1], [Limited.],
  [+2], [Established.],
  [+3], [Strong.],
  [+4], [Exceptional.],
)

Qualities measure capability, not fixed population or geographical size. A small veteran force can have strong Might. A mobile caravan can have Territory through its vehicles, workforce, and supply arrangements.

Explain every nonzero rating through concrete assets. Influence +3 might mean couriers, shipping agents, and sympathetic officials. It does not mean the faction knows every secret.

A Quality of 0 does not prohibit its members from acting as individuals. It means the organization cannot independently mount a major action in that field without establishing the missing capability or securing outside support.

A permanent Cohesion of 0 is a #emph[crisis] when a faction has fallen to it (E.12). A faction built at Cohesion 0 begins with its Fracture clock created and no automatic tick that turn.

==== Assets and reach

Assets determine what the faction can actually do. A treasury cannot occupy a town without personnel; soldiers cannot cross a sea without transport. A rating never creates an unstated army, fleet, office, or network.

When an asset matters mechanically, record a Truth with scope, rank, and removal condition. Use its concrete additional advantage, not a second bonus merely restating the Quality. Might already includes the ordinary readiness of the force that justifies its rating.

Record a distant branch separately when local capabilities matter. The imperial institution's full resources are not automatically available to every provincial official.

==== Changing Qualities

Change a permanent rating only after a lasting change to the capacity it represents. Losing one shipment normally changes an asset, creates Strain, or sets back a project. Losing the principal treasury and credit network may reduce Treasure.

An improvement normally requires an appropriate 8- or 12-segment project, a concrete new resource, and an outcome large enough to justify the next rating. Repetitive minor jobs cannot manufacture permanent growth. No Quality exceeds +4.

=== E.3 Standing

Standing measures the faction's normal policy toward the party, not the feelings of every member.

#table(columns: (13%, 24%, 63%),
  table.header([Score], [Relationship], [Normal treatment]),
  [−3], [Enemy], [Actively seeks the party's capture, expulsion, destruction, or lasting defeat.],
  [−2], [Hostile], [Obstructs the party and supports credible action against its interests.],
  [−1], [Distrustful], [Demands safeguards, compensation, or supervision.],
  [0], [Uncommitted], [Judges requests on their immediate merits.],
  [+1], [Welcoming], [Offers ordinary hospitality, introductions, and opportunities.],
  [+2], [Trusted], [Shares sensitive information and considers meaningful assistance.],
  [+3], [Allied], [Treats the party's welfare as an organizational interest within agreed limits.],
)

Standing is not membership, command, fear, or internal unity. A faction may be cohesive and hate the party, or welcome the party while suffering mutiny. A feared enemy can comply with a threat without becoming friendly.

==== Relationship Truths

When identity is known and the relationship materially affects cooperation, access, or credibility, use one relationship Truth:

#table(columns: (20%, 56%, 24%),
  table.header([Standing], [Truth], [Rank]),
  [−3 / −2], [Enemies of the Faction / Hostile Reception], [2 adverse],
  [−1], [Distrusted by the Faction], [1 adverse],
  [0], [None], [—],
  [+1], [Welcome Among the Faction], [1 helpful],
  [+2 / +3], [Trusted by the Faction / Bound by Alliance], [2 helpful],
)

Each relevant rank shifts Difficulty one step (3 points), following Core Rules §8. Helpful and adverse Truths cancel normally; the net shift remains capped at three steps. Relationship Truths do not automatically modify combat, technical work, stealth, or deception.

Scope: recognized dealings with this faction where the relationship affects the request. Removal: replace the Truth when Standing changes or the relevant relationship ends. A personal exception replaces this Truth for its subject; it never stacks with it.

Trust does not compel obedience. Even an ally may refuse something beyond its means, authority, commitments, or capacity to survive. Ordinary assistance already willingly available needs no roll.

==== Changing Standing

Change Standing for consequential deeds the faction learns about and attributes to the party:
- +1: complete important work, protect a valued asset, uphold a difficult agreement, or make a meaningful sacrifice.
- +2: avert an organizational catastrophe or deliver a transformative victory.
- −1: cause significant avoidable loss, break a meaningful agreement, or seriously undermine the faction.
- −2: betray it, destroy an irreplaceable asset, or deliberately deliver it into an enemy's hands.

Apply changes once per undertaking, normally at its conclusion or when the consequences become known. Usually apply a net change of at most one step per faction per adventure; reserve two steps for decisive events. Clamp Standing between −3 and +3.

Paid work may demonstrate reliability. Honest failure is not betrayal. Declining an ordinary job is not an automatic penalty. Trivial gifts and repeated errands do not improve Standing indefinitely.

Secret deeds create no immediate public change. Record pending exposure when necessary. False accusations may change treatment; record the accusation as a Truth so disproving it offers a route to repair.

Helping one faction does not automatically offend every rival. Change another faction's Standing only when its interests were meaningfully affected and it knows whom to credit or blame.

=== E.4 Personal Exceptions and Authority

Use party Standing by default. Record an individual exception only when a particular relationship matters: an estranged child of the leader, a sworn member, an acknowledged oathbreaker, or someone who saved a representative's life.

Give the character an effective Standing for that relationship when needed. Party +1 and a character's temple exception −2 means the temple normally welcomes the group but treats that character as hostile in relevant dealings.

An exception applies to its subject, not automatically to everyone standing beside them. A trusted member can arrange an audience for companions without making them trusted members. Personal deeds change the exception unless the faction reasonably holds the whole party responsible.

==== Membership and office

Record membership, commissions, and offices as scoped Truths, not another numerical Influence track. Examples include Sworn Member, Commissioned Envoy, Licensed Supplier, and Captain of the Northern Watch.

State the permissions, jurisdiction, duration, duties, and removal conditions. Authority requires appointment, election, sponsorship, initiation, or another established process. Standing may open that opportunity; it does not replace it.

A legitimate seal may make access possible. It does not substitute Standing or a faction Quality for Persuade or another PC Skill.

==== Patronage

Record what a patron supplies, the service expected, what lies outside the arrangement, and what ends it. Routine agreed service is not a new favor each time. Refusal matters according to the actual agreement, not an unlimited claim on the character.

=== E.5 Seeking Aid

+ State the assistance, timing, location, authorizing representative, burden, and offered compensation.
+ Check capability, reach, available assets, and the representative's authority.
+ Grant willing, available, inconsequential assistance without a roll.
+ Use a single core check for limited uncertainty; use an Argument or Negotiation conflict when the core conflict criteria are met.
+ If the request is impossible now, explain what would have to change.

For a single request check, establish burden before applying relationship and other Truths:

#table(columns: (29%, 71%),
  table.header([Base Difficulty], [Burden]),
  [Easy 12], [Minor inconvenience or readily available assistance.],
  [Standard 15], [Meaningful expense, limited exposure, or diverted personnel.],
  [Hard 18], [Serious expense, danger, secrecy, or political embarrassment.],
  [Formidable 21], [A major commitment threatening an important interest.],
  [Heroic 24], [An extraordinary but still possible commitment.],
)

PCs roll normal Skills. Pools pay for Effort and Resistance; do not add a pool as an attribute. Persuade, Deceive, and Intimidate reflect different methods and consequences. Evidence, compensation, leverage, and timing can change the request's feasibility or relevant Truths.

Use normal core outcomes, Power, doubles, and currencies. A Success at a Cost grants the agreed help with the normal consequence-or-Woe choice. Failure does not secure the help and produces an appropriate move. A failed request cannot be repeated unchanged: introduce materially new terms or circumstances.

Extra Power can improve agreed scope, speed, or discretion where normal Effects and the fiction support it. It cannot buy permanent Standing or unlimited resources.

=== E.6 Faction Support in Party Scenes

A Quality establishes what support the faction can organize; Standing, authority, and obligations govern whether it is provided. No faction Quality is added directly to a PC roll.

Support has one concrete application:
- Permission: equipment, credentials, transport, or access makes the action possible, or removes the need for a particular roll.
- A scoped Truth: actual conditions change Difficulty under Core Rules §8.
- Active Help: a participating ally uses the core Help procedure, pays its normal cost, and shares the risk. A faction's accompanying NPC pays the Help cost from its own pools if it is built with them. An ordinary NPC has no pools and cannot Help (§6.1); an ally who can is a named NPC built with pools. Qualities are not personal pools.

Do not award all three for the same contribution. Stronger Qualities increase feasible reach, reliability, and scale, not an automatic numerical bonus. Might +4 can organize support beyond Might +1; it does not grant +4 Fight.

An escort may make a friendly checkpoint automatic. It cannot make every later negotiation easier simply because it exists. Personnel face the real risks of deployment, and a borrowed resource is not freely duplicable or permanently transferred.

#include "chapter-3-module-e.7-favours.typ"
]
