// Module E — Factions, Standing & Obligations (REIGN)
// Include after Module D (or C), outside any columns block.
// Replaces the C.5 faction procedure; do not run both. Keep the rest of Module C.
// Update the Introduction's module count and Chapter III description.
// Lineage: original adaptation informed by Greg Stolze's REIGN Enchiridion
// (Companies chapter); not a conversion of ORE. Core 2d12 resolution takes
// precedence over legacy draft mechanics. Playtest draft; not compiler-validated.
== Module E --- Factions, Standing & Obligations (REIGN)
#columns(2, gutter: 6mm)[
Organizations have ambitions, resources, loyalties, and limits. This module connects their struggles to the party's adventures: factions offer opportunities and help, and the party's actions shape what they accomplish. Use it when alliances, patronage, collective action, or political consequences matter. It is setting-neutral, and its values are playtest values. Use the core rules for PC checks, Effects, Truths, clocks, and conflicts except where an explicit organizational exception appears.

=== E.1 Faction Records
A faction is an organized group with a shared purpose: a household, council, guild, temple, company, criminal network, or administration. Record:
- Name, purpose, long-term ambition, and operational reach.
- Five Qualities, each rated 0 to +4 (E.2).
- Two or three assets and one vulnerability.
- Standing toward the party, −3 to +3 (E.3).
- A representative who can explain or authorize requests.
- One current project and its clock.
- Key allies, rivals, favours, obligations, offices, and personal exceptions.

Prepare full records only for active factions; a background group needs a name, purpose, and Standing. Start with three active factions and normally track no more than five. If the party founds or leads a faction, rate it from its actual people and resources, without a second character sheet. Leadership grants only the authority its structure recognizes.

=== E.2 Organizational Qualities
#table(columns: (24%, 76%),
  table.header([Quality], [Measures]),
  [Might], [Organized force, readiness, and coercive capacity],
  [Treasure], [Accessible wealth, credit, and financial organization],
  [Influence], [Information networks and ability to shape outside decisions],
  [Territory], [Infrastructure, population, holdings, transport, and logistical reach],
  [Cohesion], [Internal loyalty, legitimacy, discipline, and shared identity],
)

#table(columns: (20%, 80%),
  table.header([Rating], [Capability]),
  [0], [No independent organized capability in this field],
  [+1], [Limited],
  [+2], [Established],
  [+3], [Strong],
  [+4], [Exceptional],
)

Qualities measure capability, not size. Back every nonzero rating with concrete assets: Influence +3 means couriers, shipping agents, and sympathetic officials, not knowing every secret. A Quality of 0 does not stop members acting as individuals; it means the organization cannot mount a major action in that field without new capability or outside support.

*Assets and reach.* Assets decide what a faction can do: a treasury cannot occupy a town without personnel. A rating never creates an unstated army or network. When an asset matters mechanically, record a Truth with scope, rank, and removal condition, and use its concrete advantage, not a second bonus restating the Quality. Record a distant branch separately; an institution's full resources are not automatically available to every provincial official.

*Changing Qualities.* Change a permanent rating only after a lasting change in the capacity it represents. Losing one shipment changes an asset, creates Strain, or sets back a project; losing the treasury and credit network may reduce Treasure. Improvement needs an 8- or 12-segment project, a concrete new resource, and an outcome large enough to justify it. No Quality exceeds +4.

=== E.3 Standing
Standing is the faction's normal policy toward the party, not every member's feelings. It is not membership, command, fear, or unity: a cohesive faction can hate the party, and a feared enemy can comply without becoming friendly.

#table(columns: (11%, 22%, 67%),
  table.header([Score], [Relationship], [Normal treatment]),
  [−3], [Enemy], [Seeks the party's capture, expulsion, destruction, or lasting defeat],
  [−2], [Hostile], [Obstructs the party and supports credible action against it],
  [−1], [Distrustful], [Demands safeguards, compensation, or supervision],
  [0], [Uncommitted], [Judges requests on their immediate merits],
  [+1], [Welcoming], [Offers hospitality, introductions, and opportunities],
  [+2], [Trusted], [Shares sensitive information and considers meaningful help],
  [+3], [Allied], [Treats the party's welfare as an organizational interest, within agreed limits],
)

*Relationship Truths.* When identity is known and the relationship matters, use one Truth:

#table(columns: (18%, 58%, 24%),
  table.header([Standing], [Truth], [Rank]),
  [−3 / −2], [Enemies of the Faction / Hostile Reception], [2 adverse],
  [−1], [Distrusted by the Faction], [1 adverse],
  [0], [None], [---],
  [+1], [Welcome Among the Faction], [1 helpful],
  [+2 / +3], [Trusted by the Faction / Bound by Alliance], [2 helpful],
)

Each rank shifts Difficulty one step (3 points), per Core Rules §8. Helpful and adverse Truths cancel, and the net shift is capped at three steps. They do not modify combat, technical work, stealth, or deception. Scope: recognized dealings with the faction. Replace the Truth when Standing changes. A personal exception replaces it for its subject and never stacks. Trust does not compel obedience: even an ally can refuse what is beyond its means, authority, or survival. Ordinary help already on offer needs no roll.

*Changing Standing.* Change it for consequential deeds the faction learns of and attributes to the party:
- +1: important work, protecting a valued asset, upholding a hard agreement, or a meaningful sacrifice.
- +2: averting an organizational catastrophe or delivering a transformative victory.
- −1: significant avoidable loss, breaking a meaningful agreement, or seriously undermining the faction.
- −2: betrayal, destroying an irreplaceable asset, or delivering it to an enemy.

Apply changes once per undertaking, at its end or when consequences become known. Usually net at most one step per faction per adventure; reserve two for decisive events. Clamp Standing between −3 and +3. Honest failure is not betrayal, declining an ordinary job costs nothing, and trivial errands never raise Standing indefinitely. Secret deeds change nothing until exposed; record pending exposure. Record false accusations as a Truth so disproving them offers a route to repair. Helping one faction offends a rival only if its interests were meaningfully affected and it knows whom to credit or blame.

=== E.4 Exceptions and Authority
Use party Standing by default. Record an individual exception only when a relationship matters: an estranged child of the leader, a sworn member, an oathbreaker, someone who saved a representative's life. Party +1 with a character's temple exception −2 means the temple welcomes the group but treats that character as hostile. An exception applies to its subject, not their companions. A trusted member can arrange an audience without making others trusted. Personal deeds change the exception unless the faction holds the whole party responsible.

*Membership, office, and patronage.* Record these as scoped Truths, not another Influence track (_Sworn Member_, _Commissioned Envoy_, _Captain of the Northern Watch_). State permissions, jurisdiction, duration, duties, and removal. Authority needs appointment, election, sponsorship, or initiation; Standing may open that door but does not replace it. A legitimate seal opens access but does not substitute for Persuade or another PC Skill. For a patron, record what it supplies, the service expected, what is outside the arrangement, and what ends it. Routine agreed service is not a new favour each time.

=== E.5 Seeking Aid
+ State the assistance, timing, location, authorizing representative, burden, and compensation.
+ Check capability, reach, assets, and the representative's authority.
+ Grant willing, available, inconsequential help without a roll.
+ Use one core check for limited uncertainty; use an Argument or Negotiation conflict when the core conflict criteria are met.
+ If the request is impossible now, say what would have to change.

For a single check, set the burden first, then apply relationship and other Truths:

#table(columns: (27%, 73%),
  table.header([Base Difficulty], [Burden]),
  [Easy 12], [Minor inconvenience or readily available help],
  [Standard 15], [Meaningful expense, limited exposure, or diverted personnel],
  [Hard 18], [Serious expense, danger, secrecy, or political embarrassment],
  [Formidable 21], [A major commitment threatening an important interest],
  [Heroic 24], [An extraordinary but possible commitment],
)

PCs roll normal Skills; pools pay for Effort and Resistance and are not added as attributes. Evidence, compensation, leverage, and timing can change feasibility or relevant Truths. Use normal core outcomes, Power, doubles, and currencies. Success at a Cost grants the help with the usual consequence-or-Woe choice. Failure denies it with an appropriate move, and the request cannot be repeated unchanged without new terms. Extra Power can improve scope, speed, or discretion, but it cannot buy permanent Standing or unlimited resources.

=== E.6 Faction Support in Party Scenes
A Quality sets what support the faction can organize; Standing, authority, and obligations decide whether it is given. No Quality is added to a PC roll. Support takes one form per contribution:
- *Permission:* equipment, credentials, transport, or access makes the action possible or removes a roll.
- *Scoped Truth:* actual conditions shift Difficulty under §8.
- *Active Help:* a participating ally uses the core Help procedure, pays its cost, and shares the risk. Define an accompanying NPC normally if pool spending needs tracking.

Never award more than one form for the same contribution. Stronger Qualities extend reach, reliability, and scale: Might +4 organizes more support than Might +1 but grants no +4 Fight. An escort may make a checkpoint automatic but does not ease every later negotiation. Personnel face real risks, and a borrowed resource is not duplicated or permanently transferred.

=== E.7 Favours and Obligations
A *favour* is a specific, acknowledged promise; an *obligation* is the same record from the debtor's side. Record debtor, creditor, service, limits, notice, deadline or duration, what settles it, and who can call it in. Agree scope when the promise is made: "you owe us something" is an unresolved negotiation, not a blank cheque.

Calling in a feasible favour within its terms needs no request check. Roll only for a separate uncertainty, such as evading inspection or locating a vessel. Broader or newly dangerous work needs renegotiation. Settlements include fulfilment, an accepted substitute, partial settlement, or an agreed delay. Genuine inability is not betrayal.

Knowingly refusing a feasible obligation costs 1 Standing (2 for severe betrayal). Owing a favour never removes a player's control of their character: state the consequences and let them choose. Calling in an earned favour costs no Standing, and repaying one does not raise it. Falling Standing does not erase promises. A favour transfers only with the debtor's consent.

=== E.8 Adventures and Strategic Advantages
Before an undertaking, explain its foreseeable strategic effect: "Secure the bridge and our forces cross this turn with a rank-1 advantage." Successful adventures may accomplish an objective outright, advance or obstruct a project with Advance, or establish a scoped Truth for a later faction action (_Enemy Deployment Exposed_, _Crossing Secured_, _Troops Paid Before the Muster_).

Record scope, rank, duration, and removal. Rank 1 is normal; rank 2 needs a decisive advantage. One-use preparation applies to the next relevant action and expires; persistent advantages last as long as their circumstances. Apply the core Truth cap. A successful roll does not itself create a lasting Truth: use the core Effect or the agreed outcome of the completed undertaking. Larger lasting changes need the project or milestone in C.6.

Never require a faction roll to confirm what the party already did; capturing a bridge does not call for a roll to see if it was captured. A separate roll may decide whether the army exploits it. Never award duplicate progress or modifiers for the same work, and one bad PC roll does not damage a whole faction.

=== E.9 Commitments and Strain
A faction normally takes one major project action per World Turn without Strain. Mark one relevant Quality *Strained* when it takes an additional major action, deploys exceptionally for the party, overextends to meet a deadline, or suffers an explicit exhaustion consequence. Hospitality, meals, and introductions do not qualify.

A Strained Quality works one rating lower (minimum 0). Strain does not stack and is not also an adverse Truth for the same exhaustion. At most one additional major action per turn: declare it and mark Strain before resolving it. It must strain that action's primary Quality, which cannot already be Strained. Clear Strain after one full World Turn without using that capability for a major action or exceptional commitment, if recovery is plausible. Strain that drops effective Cohesion to 0 does not trigger Fracture; E.12 uses permanent Cohesion. Exhaustion is not destruction: rest recovers tired guards but cannot rebuild a burned warehouse, so track persistent losses separately.

=== E.10 World Turns
Choose one cadence: each in-world week, between adventures, or another agreed interval. Do not take extra turns because a session ended. This procedure replaces C.5 while Module E is enabled.

+ Resolve known consequences of recent play; update Standing, obligations, assets, and exceptions.
+ Declare each active faction's project action, primary Quality, intended outcome, and any exceptional commitment.
+ Resolve actions and opposition using ratings at the start of the phase. Apply permanent changes after all declared actions resolve, so turn order cannot erase a declared action.
+ Resolve completed clocks, crises, and eligible Strain recovery.
+ Reveal observable developments through news, witnesses, altered conditions, or encounters. Secret projects need not reveal details, but consequential changes leave discoverable signs.

*Organizational resolution.* Roll 2d12 + the relevant effective Quality against Standard 15, adjusted by task difficulty and Truths. Use one primary Quality, never two. Other capabilities may be prerequisites but add no automatic modifier.
- *Success:* 1 Power, plus 1 per full 3 points over the target.
- *Success at a Cost* (miss by 1--3): 1 Power and a concrete setback.
- *Failure* (miss by 4+): no progress and a relevant setback.
- *Doubles* follow the core twist rules, including double 12s and double 1s.

Off-screen faction actions do not gain or spend Momentum, PC pools, or Tychē Points, and do not generate or spend Woe. Discard uncommitted Power and resolve twists narratively. PC scenes keep all normal currencies.

*Project clocks.* Commit Power at one segment per Power.

#table(columns: (20%, 80%),
  table.header([Segments], [Typical scope]),
  [4], [Limited local action with few obstacles],
  [6], [Substantial operation or contested local objective],
  [8], [Complex undertaking or lasting institutional change],
  [12], [Major regional transformation],
)

One faction action advances one declared project or yields one limited result. Cap progress at the remaining segments and discard overflow; link clocks for wider ambitions. Lasting Site, Region, and Campaign changes follow C.6 (8 segments, 12 segments, a major arc).

*Opposition.* A faction may spend its action obstructing a known project if it has a credible method. Roll its relevant Quality against Standard 15, adjusted by the target's concrete defences and Truths; the target's Quality is not an automatic Difficulty shift. On success, spend Power to remove uncompleted progress, 1 segment per Power. A defender may spend its own action on countermeasures; there is no free reaction roll. Apply all same-turn progress and disruption together before checking completion. A completed clock cannot be unticked: reversing it needs a new undertaking. PCs can use Advance to remove progress when sabotage or delay supports it, naming the project first. A played scene replaces the equivalent off-screen work, not the faction's unrelated activity.

*Completion.* A project grants its declared result and nothing more. Create, remove, or change a Truth when appropriate, recording scope, rank, and removal. Completion does not make a Truth rank 2 or raise a Quality.

=== E.11 Conflict, Objectives, and Pressure
Use core Argument, Negotiation, or Battle conflicts when the action deserves a played conflict, with normal Disposition, scripting, Power, concessions, and compromise. Do not import Levels of Success, legacy attributes, or spendable Social Superiority. Standing grants no automatic Superiority; insider intelligence, an arranged audience, or a secured guarantee can qualify as real preparation under the core's categories and cap. Combat receives no direct Standing modifier.

State strategic objectives separately:
- *Raid:* take or destroy specified resources.
- *Occupy:* hold a place.
- *Break resistance:* disable a specified fighting force.
- *Humiliate:* undermine prestige before a relevant audience.
- *Annex:* establish lasting control over a holding.
- *Reconcile:* restore cooperation between internal groups.

Winning a battle does not create stable government; occupation may open an integration project and the Truth _Population Rejects the Occupation_. A conflict grants only its stakes and compromise.

*Woe in faction scenes.* Use Woe normally in PC scenes for supported complications, reinforcements, or danger-clock progress. Hostility is a motive, not an unlimited Woe source. A completed World Turn project needs no extra Woe payment, and no event is charged twice. Woe cannot directly buy a Standing reduction, though it can expose evidence or create circumstances that cause one. Momentum and scene-scale Create effects cannot buy permanent reputation.

=== E.12 Damage, Crisis, and Reorganization
Target the capability actually harmed: payroll loss hits Treasure, exposed agents hit Influence, a lost estate hits Territory, defeat hits Might, betrayal provokes a Cohesion crisis. Use an asset loss, setback, adverse Truth, or Strain for limited harm. Permanent rating loss needs a lasting reduction in capacity, never just a lost roll.

*Fracture.* When permanent Cohesion reaches 0, establish an internal crisis and start a 4-segment Fracture clock. Advance it once at the end of each later World Turn that ends with permanent Cohesion still 0 (not in the creation turn). Explicit consequences may advance it further. Restoring Cohesion stops automatic progress but not existing fractures; reconciliation or another concrete undertaking removes progress. When it fills, the faction splits, disbands, loses central authority, or transforms. Its people and assets do not vanish.

*Branches, alliances, and mergers.* Separate a branch when its resources or loyalties differ materially, and never use a resource twice. An alliance gives agreed access and obligations, not summed ratings. A merger is a reorganization project: reassess Qualities from the real combined capacity. Hostile absorption may bring assets while lowering Cohesion or creating adverse Truths. Defeating a smaller group can yield an asset without raising a rating.

=== E.13 Example: Reed Quay Association
An illustrative faction, not setting canon.

#table(columns: (26%, 74%),
  table.header([Field], [Record]),
  [Purpose], [Protect river trade and control profitable landing places],
  [Reach], [Lower river settlements and commercial offices in the provincial capital],
  [Might +1], [Dock guards and armed crews],
  [Treasure +3], [Freight income and commercial credit],
  [Influence +2], [Agents, weighmasters, and clerks],
  [Territory +2], [Barges, warehouses, and landing rights],
  [Cohesion +1], [Members cooperate primarily for profit],
  [Standing +2], [Trusted; Nera, master of the eastern landing, represents the association],
  [Vulnerability], [Its principal charter is legally disputed],
  [Project], [Secure Exclusive Ferry Rights, 8 segments: lasting local institutional change],
  [Favour], [Conceal up to six people aboard one outbound barge this season, with a day's notice; no declared contraband],
)

The party asks for public freight records. Nera supplies them willingly, with no roll. Sealed judicial records are a different request and may need an introduction or commission.

The association funds a lawful journey and gives a commercial introduction. The passage permits the journey and the introduction opens an audience. Neither grants +3 Persuade because Treasure is +3.

The party retrieves admissible evidence that a rival obtained a charter by bribery. As the agreed outcome of the undertaking, _Rival Charter Under Legal Challenge_ becomes a rank-1 Truth on the ferry-rights project until the challenge is adjudicated. If the party later wins a final judgment itself, no further roll establishes it.

On the World Turn the association rolls Influence +2. The evidence lowers the target from Standard 15 to Easy 12. Dice of 7 and 9 total 16, and +2 makes 18, giving 3 Power; it commits three segments. Without the evidence, the same total against 15 gives 2 Power.

Later the party saves the winter grain convoy at serious personal risk. Once the association learns of it, Standing may rise to +3. A new favour is not automatic: the association must explicitly promise one.

If the association takes an additional urgent funding action that turn, Treasure becomes Strained before that action and works at +2. It cannot take a third major action. Recovery needs a later full turn without a major Treasure commitment and with plausible access to its credit network.

=== E.14 Table Reference
#table(columns: (31%, 69%),
  table.header([Question], [Rule]),
  [What can it do?], [Qualities, assets, and operational reach],
  [Will it help us?], [Standing, authority, commitments, and reasonable requests],
  [What do PCs roll?], [Their normal Skill; never add a faction Quality],
  [What does support do?], [Permission, a scoped Truth, or actual Help; no duplicate benefit],
  [What does the faction roll?], [2d12 + one effective Quality, normally against Standard 15],
  [How does it progress?], [1 Power per project segment; no off-screen Momentum or Woe],
  [How do adventures matter?], [Achieve an objective, affect progress, or establish a strategic advantage],
  [How often does it act?], [One major action per World Turn; at most one extra action, which causes Strain],
  [What is owed?], [A written favour or obligation with scope, limits, and settlement],
  [What causes collapse?], [Permanent Cohesion 0 opens a Fracture crisis, not instant disappearance],
)

To make a faction record, copy E.1 and leave room for five ratings, five Strain marks, Standing, personal exceptions, one project clock, and outstanding promises. Keep rating explanations concrete so players can see changes their characters can observe.
]
