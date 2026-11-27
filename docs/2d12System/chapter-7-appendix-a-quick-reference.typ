#import "common.typ": *


#chapter("Quick Reference",
  [Player procedures in table order, followed by a short GM strip. Full procedures and ability exceptions remain in their referenced sections.],
  numbered: false, label-text: "Appendix")

#let player-first-reference() = [
  #set text(size: 10.3pt)
  #show table: set text(size: 10pt)

  #columns(2, gutter: 6mm)[
== 1. Make a Roll <qr-make-roll>
*2d12 + Skill + Modifiers vs. Difficulty.*

#table(columns: (30%, 70%),
  table.header([Modifier], [Apply]),
  [Skill], [+0 to +4.],
  [Tags], [No modifier. Each relevant tag supplies +1 Power on a success, maximum +2.],
  [Personal statuses], [Highest relevant helpful tier, minus highest relevant harmful tier.],
  [Situational Conditions], [Highest relevant helpful rating, minus highest relevant harmful rating.],
  [Truths], [No modifier. Check first whether the action is possible, certain or needs something.],
)
Roll only when the outcome is uncertain and matters. Knowledge, backgrounds and tools grant permission to attempt, not a modifier. Each Difficulty step is 3 points. A target below 9 still requires a roll unless the action is Trivial.

#table(columns: (70%, 30%),
  table.header([Difficulty], [Target]),
  [Trivial], [No roll],
  [Routine], [9],
  [Easy], [12],
  [Standard], [15],
  [Hard], [18],
  [Formidable], [21],
  [Heroic], [24],
  [Epic], [27],
  [Divine], [30],
)

=== Bonus dice and Effort
Designate one action d12 as the Complication die. Always retain it and the highest single other action die. Never select a lower die to make a match. Maximum +2 bonus dice from all sources, including free dice.

#table(columns: (28%, 72%),
  table.header([Source], [Cost]),
  [Effort], [3 − relevant pool Edge, minimum 0, per use.],
  [Weal], [1 for the first die, 2 for the second.],
  // PLAYTEST: Woe-bought dice cost the Weal price in Woe (M3)
  [Woe], [Give the GM 1 Woe for the first die, 2 for the second (Playtest Value).],
  [Help], [An ally spends 1 pool point and shares the risk.],
  [Specialisation], [Free: one die when it directly applies.],
)
Each Effort use buys one bonus die *before rolling*, or +1 Power *after success*, including eligible automatic success. Normal costs and restrictions apply. Total uses cannot exceed Effort Level (1 at start). Lost, tied and trumped actions do not qualify for post-success purchases; Effort cannot turn failure into success.

Pay Effort and Help in full. Paying the last pool point runs that pool dry; a cost of 0 never does. Free Help waives its cost, not relevance or shared risk. Backing a conflict side is not Help.

=== Outcomes against Difficulty
Meet or exceed Difficulty to succeed; otherwise fail. Compare final retained faces after explicit face changes, without Skill or modifiers.

#table(columns: (30%, 35%, 35%),
  table.header([Complication die], [Success], [Failure]),
  [Lower], [Clean Success], [Failure with a Benefit],
  [Higher], [Success with Complication], [Failure with Complication],
  [Matching], [Critical Success], [Critical Failure],
)
Success includes all three successful outcomes. Generate applicable Tag Power + 1 Power, +1 per full 3 points over Difficulty. Critical Success adds +1 Power and a flourish, not a free Effect. Failure generates no Power or automatic Woe. A failure benefit is a fictional opening, not a free purchase or numerical benefit. Critical Failure triggers one major complication within the named danger and stakes.
Agree the goal and what it takes before rolling. The Effects you buy are what the action accomplishes. Unspent Power becomes Weal, maximum 6. A consequence on a success keeps what the roll bought (Core Rules @core-outcomes).

Scripted conflicts use @qr-run-conflict below. Versus tests compare totals, then classify each actor's retained pair; exact ties receive no comparison-based outcome.

=== Complications and Risk
Matching retained dice use normal critical rules. Double 1s and double 12s have no special action overrides. Face changes affect total and comparison; Skill and modifiers affect only the total. Resolve manipulation one ability at a time, choosing a complete reroll result before further manipulation. Generic action rerolls leave the separate Risk die unchanged (Core Rules @core-dice-manipulation).

For each distinct complication, state its concrete consequence and original severity, then:
+ Cancel it by giving the GM Woe at original severity: minor 1, moderate 2, major 3; or decline.
+ Spend eligible surplus Power to reduce one severity band per Power.
+ Resist the remainder once, if permitted, reducing one narrative severity band or an incoming harmful status by 2 tiers, not both.
+ Resolve what remains.

Buyoff closes once mitigation or Resistance begins. Reserve required Effect Power first; all complications share the action's budget. Removing a complication doesn't reverse failure or grant replacement Woe. Protected payments remain excluded (Core Rules @core-doubles).

*GM-bought complication:* After a roll resolves and before the player responds, the GM may spend Woe to add one complication to it, whatever the outcome: 1 for minor, 2 for moderate, 3 for major. At most one per roll. State the consequence and severity first; it must arise from the established danger or situation. Buyoff, mitigation and Resistance apply normally, and the Woe isn't refunded if the player buys it off. In scripted conflicts the usual limits apply (Core Rules @core-costs-failures-complications).

*Risky 1–3, optional:* Roll one separate d12. Never keep it or add it to the total; it does not count toward the bonus-dice cap. At or below the Risk rating, it triggers an independent complication on any outcome. Assign its severity separately; Critical Failure does not automatically make it major. Use the response order above.

*Automatic success* replaces an otherwise permitted action's roll, not its permissions, stakes, interaction or assigned turn. Use listed Power plus applicable Tag Power unless already included; add no margin, extra base-success point or critical bonus. No extra action or rescue of a trumped action.

In versus tests, one automatic success wins and neither actor rolls action dice; the opponent receives no comparison-based failure outcome. Two automatic successes produce a neutral stalemate unless explicitly overridden. Paid costs remain spent.

Independent consequences still apply, including a permitted Risky action's separate Risk die. Eligible post-success Effort may purchase Power at normal costs and limits before allocation and mitigation. Pending Impede and Gain Position expire unused on a no-roll action; neither modifies the Power award or transfers to Risk or Resistance dice.

#emph[Core Rules @core-roll[§§]–@core-risky-rolls[]; conflict exceptions in @core-conflict-system.]

== 2. Track Resources and Consequences <qr-track-resources-consequences>
=== The four currencies
#table(columns: (32%, 68%),
  table.header([Resource], [Who tracks it / main use]),
  [Pools], [Each PC: Effort, abilities and Resistance.],
  [Tychē Points], [Each PC: invokes and compels.],
  [Weal], [Party: bonus dice; maximum 6.],
  [Woe], [GM: opposition spending and escalation.],
)

#strong[Weal] decays by 1 at the end of each scene. Spend it for a bonus die (1, then 2), +1 Power on a success (2), a Discover question (1), Create a Truth (2), changing an unrevealed scripted action (2) or Reduce Woe by 1 (2) (Core Rules @core-weal-woe). #strong[Woe] starts at 2 per PC each session.

=== Statuses, Conditions and Truths
Record a status or Situational Condition as *name --- category/rating --- scope --- ending condition* (Core Rules @core-effects). Personal statuses (states of a person) and Situational Conditions (external circumstances) are separate slots: apply the highest relevant helpful and harmful one from each. Truths are recorded as *name --- Truth/scale --- scope --- ending condition* and give no modifier (Core Rules @core-truths). Names alone do not establish scope. Impede is not a status; Grind hardships use Module B.3.

=== Resist an imposed consequence
Roll *2 + Edge* d12 and take the highest die. Pay the result's cost; do not subtract Edge from it. The reduction occurs; the roll determines cost. Resistance reduces an incoming harmful status by 2 tiers or an imposed narrative complication by one severity band, including minor to none—not both. Resist each distinct complication once, after eligible mitigation. The following multiple-12 procedure is separate from action criticals.

#table(columns: (62%, 38%),
  table.header([Result], [Pool cost]),
  [Two or more 12s], [0; also clear a tier-1 status.],
  [9–12], [1],
  [5–8], [2],
  [1–4], [3],
)
With negative Edge, roll 1d12. At Edge −2 or lower, increase the cost by 1, maximum 3.

Ordinary Disposition loss and accepted payments cannot be Resisted.

=== Running dry
A cost that empties a pool imposes depletion at *tier 1 + overrun*. Overrun is the amount by which the cost exceeds points remaining.

Only Resistance and imposed costs may overrun unless explicitly permitted. A cost of 0 never runs dry. Depletion stacks normally. At tier 6, you are Taken Out within its scope and gain one Scar, at most once per scene. If that status takes you out, finish only the action or Resistance whose cost caused it.

The pool and depletion recover separately: 2 recovery points remove 1 depletion tier.

=== Rest and recovery
#table(columns: (21%, 40%, 39%),
  table.header([Rest], [Time], [Recovery]),
  [First], [Seconds; 1 action mid-encounter], [½d12, round up],
  [Second], [10 minutes], [½d12, round up, +1],
  [Third], [1 hour], [½d12, round up, +2],
  [Fourth], [10 hours / overnight], [All pools full],
)
Divide points among your pools without exceeding their maximums. Edge does not apply. Recovery-modifying abilities use their full entries.

Pool recovery and status healing do not restore Disposition, refresh injury trades or erase Scars. Treatment removes at most 1 tier of a lasting injury until healing time does.

Life-threatening tier-6 harm with lethal stakes can start a 3-segment _Dying_ clock. Medicine vs. Hard 18 stabilises. Explicit creature breaking-point rules replace generic outcomes only where stated.

#emph[Core Rules @core-effects[§§]–@core-rest-recovery[]; currencies in @core-core-resolution[§§]–@core-tyche-points[] and @core-weal-woe.]

== 3. Run a Conflict <qr-run-conflict>
Use scripting when the stakes matter, opposition actively resists and several tactical choices matter.

=== Setup
+ State objectives, stakes, participants and exits.
+ The leader normally rolls 2d12 + Disposition skill + highest Edge in that skill's pool.
+ Divide by 3 and round down.
+ Add +1 per eligible backer and all flat modifiers at full value.
+ Apply the minimum of 1, then opposing Superiority.
+ Determine *both* adjusted totals before resolving setup.
+ Record adjusted starting Disposition.

Backing is free and committed before the setup roll. Each backer explains a meaningful contribution and joins the side's stakes. It is not Help and grants no die. Free-Help abilities add no further setup benefit unless explicit.

Grit-built adversary sides use their listed setup instead of the Disposition roll.

// PLAYTEST: marker unified (M6)
*Superiority:* one per distinct, relevant preparation category—Know Thy Foe, Know Thy Battlefield, Know Thy Players—maximum 3. Use Core Rules @core-superiority for eligibility. PC/opposition symmetry and eligibility remain (Playtest Value).

#table(columns: (40%, 60%),
  table.header([Adjusted totals], [Setup outcome]),
  [Only one side at 0], [Its opponent wins at no cost within the stakes.],
  [Both sides at 0], [Mutual defeat; neither wins outright.],
  [Neither side at 0], [Proceed to scripting.],
)
Only Superiority can reduce setup below the minimum of 1. Setup defeat scripts no exchange and inflicts no injury, pool loss or Taken Out by itself.

=== Script and reveal
Each side secretly commits *three actions and their assigned actors*. Reveal one volley at a time. If the conflict continues, script another exchange.

Track rotation continuously across exchanges:
- Everyone available acts once per round.
- Nobody acts in consecutive volleys unless they are the only available participant.#colbreak()
- Helping does not count as a turn.
- Update rotation when someone joins, withdraws or becomes unable to act.

Before reveal, the players may spend 2 Weal to change one unrevealed action, keeping its assigned actor. An unsuitable or unperformable action grants no free replacement.
]

=== Action interactions
I = independent; V = versus; A = Attack only; F = Feint only.

#table(columns: (24%, 19%, 19%, 19%, 19%),
  table.header([Your action], [Attack], [Defend], [Feint], [Maneuver]),
  [Attack], [I], [V], [A], [V],
  [Defend], [V], [I], [F], [V],
  [Feint], [A], [F], [V], [V],
  [Maneuver], [V], [V], [V], [I],
)

#columns(2, gutter: 6mm)[
*A:* Attack rolls independently; Feint is trumped. *F:* Feint rolls independently; Defend is trumped.

*Independent:* Test against Standard 15, adjusted by explicit modifiers such as Guard; statuses and Situational Conditions modify the roll. Both independent actions finish before checking victory, even if one defeats a side or Takes Out its actor.

*Versus:* Both actors retain their Complication die and highest other action die. Higher total wins: applicable Tag Power + 1 Power, +1 per full 3 points of margin. Each actor compares their own final retained faces: lower Complication die gives Clean Success or Failure with a Benefit; higher gives Success with Complication or Failure with Complication; matching gives Critical Success (+1 Power) or Critical Failure (one major complication). The loser generates no Power. Matching dice do not override totals.

*Exact tie:* Neutral stalemate. Neither actor wins, generates Power, produces their normal action Effect or receives a comparison-based outcome. Paid costs remain spent; independent complications still resolve. Winning prevents the opposing normal Effect even when the winner funds other permitted Effects.

*Trumped:* No action or optional Risk roll, Power, normal action Effect or comparison-based outcome. Paid costs remain spent; no free replacement or reassignment. Separate hazards require their own triggers.
#colbreak()
=== Conflict failure and costs
A failed independent action, a versus loss, an exact tie or a trump grants no automatic Woe, unrelated GM move, automatic injury or extra Disposition loss.

Comparison-based complications, including Critical Failure, cannot impose harmful statuses or additional Disposition loss without explicit permission. They cannot duplicate opposing purchases, change the script or cancel an independent action. Independent hazards and explicit abilities retain only their stated permissions.

#emph[Core Rules @core-when-use-conflict[§§]–@core-costs-failures-complications[].]
]

== 4. Spend Power in a Conflict <qr-spend-power-conflict>
Use one Power budget. No primary purchase is mandatory. Relevance alone does not grant permission. Before Power mitigation, fund at least one permitted Effect and preserve any minimum requirement agreed before rolling. Spend only surplus generated or purchased Power; never shrink a reserved purchase to free Power for mitigation. This reservation requirement does not restrict Woe buyoff or eligible Resistance.

#table(columns: (22%, 19%, 59%),
  table.header([Action / purchase], [Power], [Result]),
  [Attack / Feint], [Commit at least 1], [Remove committed Power + 1 opposing Disposition. Apply the +1 once per action.],
  [Defend], [1 per point], [Restore shared Disposition up to the original adjusted start.],
  [Impede], [1], [−3 on the opposing side's next scripted action roll.],
  [Gain Position], [1], [One bonus die on the friendly side's next scripted action roll.],
  [Disarm], [3], [Disable the named asset for the conflict.],
  [Create a Truth], [2], [Establish a justified scene Truth; apply explicit discounts and the normal minimum.],
  [Create a Condition], [2 per rating], [Establish a Situational Condition; apply explicit discounts and the normal minimum.],
)

#columns(2, gutter: 6mm)[
With no Power committed to ordinary loss or recovery, apply none unless an explicit ability grants it independently. Ordinary Attacks and Feints grant no status or pool loss. Attack bonuses do not improve Feint unless stated.

Buy Impede, Gain Position and Disarm at most once each per Maneuver. Impede and Gain Position affect the next scripted action, including across exchanges. A no-roll action consumes 
#colbreak()
them unused. Neither affects unrelated Resistance or incidental rolls.

// PLAYTEST retained: one pending Gain Position per side, regardless of source.
Pending Impedes do not stack or extend duration. Only one Gain Position may be pending per side regardless of source; additional grants do not stack, refresh or extend it. Its die counts toward the normal cap.

Disarm disables an asset, not automatically an entire action category. Switching equipment does not itself change a script.
]

=== Supplementary Effects
#table(columns: (17%, 30%, 53%),
  table.header([Effect], [Permitted actions], [Power / limit]),
  [Weaken], [Explicit ability only], [As permitted by the ability and Core Rules @core-effects; not a cheaper Disarm.],
  [Create], [Maneuver], [2 per Truth or 2 per Condition rating; explicit discounts and minimum cost apply.],
  [Enhance], [Defend or Maneuver], [Normal tier price and scope (Core Rules @core-effects).],
  [Restore], [Defend], [Normal tier price, scope and treatment limits (Core Rules @core-effects).],
  [Discover], [Any successful action], [1 per relevant question; repeatable.],
  [Advance], [Attack or Maneuver], [1 per segment; repeatable.],
  [Disrupt], [Maneuver], [3; once per Maneuver.],
  [Extra Feat], [Any successful action], [1; once unless expressly overridden.],
)

#columns(2, gutter: 6mm)[
Other actions require explicit permission. An exception grants only its stated purchase, trigger, cost, frequency and scope; free waives only its listed cost.

*Advance* affects a separate established clock, not a duplicate Disposition track or an unstated bypass of the objective. Establish any conflict-ending clock relationship before scripting.

*Disrupt* affects an established prepared action outside the committed script, or removes 1 available GM Woe. It cannot generically cancel, replace, reveal or delay a committed action, reverse a spend or cancel an accepted payment.

*Extra Feat* grants one related secondary accomplishment—not another turn or roll, duplicate primary effect, prohibited purchase, cancellation of an independent opposing action or objective outside the stakes.

Create costs the same outside conflicts: 2 Power for a scene Truth, 2 per Situational Condition rating, +1 to outlast the scene. Each explicit ability/item discount reduces the named purchase by 1, minimum 1. Weal and Woe buy Truths, never ratings. An ordinary Attack or Feint gains no harmful-status permission from supplementary purchases.

Scenery purchases use Core Rules @core-scenery-maneuvers. Furcifer openings and other ability exceptions use their full entries; see Generic Playbooks @pb-furcifer-special-abilities for Opportunist and Deadly Precision.

#emph[Core Rules @core-effects and @core-actions-effects[§§]–@core-scenery-maneuvers[].]

== 5. Resolve Loss and Outcomes <qr-resolve-loss-outcomes>
=== Shared Disposition
Each side has one total. It is not health and has no individual shares or spill-over. Ordinary Disposition loss removes no particular participant.

Armour and Resistance do not reduce ordinary Disposition loss without explicit permission. Removing a participant or backer subtracts no Disposition and does not recalculate setup.

Reinforcements add listed Grit to *current* Disposition, not the original start, recovery cap or compromise reference. At or above the cap, recovery restores nothing and removes no excess.

=== Accept injury
Once per character per conflict, accept a lasting injury to cancel ordinary loss from a successful Attack or Feint. Declare *before applying loss*. Only one participant may trade against each Attack or Feint.

#table(columns: (62%, 38%),
  table.header([Accepted injury], [Loss cancelled]),
  [Tier 2], [1],
  [Tier 3], [2],
  [Tier 4], [3],
)
The injury must follow from the action, be relevant, new or worsened, and remain below tier 6 after stacking. Do not pay with an existing, irrelevant or redundant injury, trade after being Taken Out, or cancel more loss than inflicted.

This trade affects incoming ordinary Attack/Feint loss, not loss already suffered, imposed statuses, finishing procedures or other sources unless explicitly permitted.

Accepted injury is a *protected payment*: it cannot be prevented, reduced, redirected or Resisted. Later recovery follows its own rules and refunds no benefit.

=== Area effects
// PLAYTEST retained: common area procedure remains provisional.
Establish the area and everyone within reach; allies are not automatically excluded. Apply ordinary shared loss once, adding 1 per additional opposing participant affected, only when Power funds ordinary loss. One group rules entry counts as one participant, not one per Body.

Explicit statuses apply at full tier with separate Resistance or NPC reduction. Area alone grants no status to an ordinary Attack. At most one participant may trade injury against the combined loss. No Disposition loss outside conflicts.

=== Defeat and compromise
A side loses at 0 Disposition or when nobody can continue pursuing its objective. Complete independent actions and eligible pre-defeat effects before settling the outcome.

Defeat does not automatically inflict injury. Resolve any required creature finishing procedure before compromise; adversary Specials retain their explicit aftermath timing.

Compare the winner's final remaining Disposition with its *original adjusted start*:

#table(columns: (70%, 30%),
  table.header([Starting Disposition lost], [Compromise]),
  [None], [None],
  [More than 0, less than half], [Minor],
  [At least half, less than three-quarters], [Significant],
  [Three-quarters or more], [Major],
)
Use proportions without rounding, not cumulative loss. Remaining Disposition at or above the original start means no compromise. Reinforcements do not change the reference.

Negotiate one outcome-first package. Injury tiers 2/3/4 guide Minor/Significant/Major severity; they are not automatic injuries. Credit each eligible existing injury once. Eligible imposed statuses may be Resisted; agreed payments may not. Resistance does not revoke a concession or create replacement injury costs.
#colbreak()
If both sides are defeated, use mutual defeat rather than a winner's compromise: resolve compatible parts of both intents and a shared setback within the stakes; neither wins outright (Core Rules @core-defeat-mutual-defeat-concession).

=== Concede
Before the next roll, propose what the opponent gains, what your side retains, every cost and how the struggle ends.

If accepted, apply the terms without another roll or additional compromise unless included. Agreed costs are protected payments. If rejected, continue.

#emph[Core Rules @core-shared-disposition-participation[§§]–@core-npcs-harm[]; area effects @core-area-effects.]
]

#v(1em)
#block(width: 100%, inset: 8pt, stroke: 0.6pt + luma(140), radius: 2pt, breakable: true)[
== GM Strip
Full adversary procedures govern; this strip grants no additional activation permission. Bulwark is the adversary role that carries Interpose; Self-Repair, Bolt, Lockdown and Last Stand are adversary Specials (Adversaries @adv-special-rulings).

#table(columns: (25%, 75%),
  table.header([Reminder], [Procedure]),
  [Change an unrevealed action], [3 Woe, or 2 with an eligible Leader; keep the assigned actor.],
  [NPC complication], [Pay existing Woe at original severity: 1/2/3. Pay in full before mitigation; declining generates no Woe. Otherwise mitigate with surplus action Power after Effect reservation. No ordinary-NPC Effort, narrative Resistance or generic Woe-to-Power purchase.],
  [GM-bought complication], [One per roll, added after it resolves and before the player responds: 1/2/3 Woe for minor/moderate/major. State the consequence and severity first. Normal buyoff, mitigation and Resistance; the Woe isn't refunded if bought off. Conflict limits still apply (Core Rules @core-doubles; @core-costs-failures-complications).],
  [NPC injury trades], [Ordinary NPCs and groups cannot trade; full-PC rivals and explicit exceptions use Core Rules @core-npcs-harm.],
  [Bulwark (Interpose)], [Once per exchange, choose one. Take an ally's incoming status in their place, declared before their Resistance or reduction. Or Hold the Line: reduce one successful opposing Attack's ordinary loss by 1. Neither touches protected payments. Full rules: Adversaries @adv-interpose.],
  [Declarations and reactions], [Determine Power, reserve Effect Power and declare mitigation before Power purchases and action-triggered supplementary declarations close. Resolve permitted reactions, then uncancelled effects. Cancellation leaves purchases spent, frees no Power for mitigation and does not reopen declarations. Preserve expressly later windows, including Self-Repair (Adversaries @adv-shared-special-timing).],
  [End of volley], [Complete both independent actions → Self-Repair → Bolt → defeat / eligible Last Stand → eligible phases → eligible exchange-end arrivals → participation and rotation. No Disposition repair from 0; status repair does not cancel pending defeat. Arrivals create no extra action or phase check.],
  [Calls and Last Stand], [Calls use pre-reveal windows. Last Stand creates no call window or new exchange boundary. If activated after volley three, check that exchange's arrivals once before the extension, never again afterward; pending-defeat recovery remains prohibited.],
  [Special exceptions], [Use Adversaries @adv-last-stand[§§]–@adv-caller-specific-reserve-packages[] for participation, aftermath order, delayed arrivals and same-volley Lockdown/Bolt. Deferred records: once per named Special per target per conflict across sources; resolve individually after every outcome.],
)
// PLAYTEST retained: Bulwark, repair, declarations, arrival timing and deferred cap.
]
]
// ART: A GM screen seen from behind: dice, tokens and a half-filled clock.
#art-fill(min: 6cm)[A GM screen seen from behind: dice, tokens and a half-filled clock.]
#player-first-reference()