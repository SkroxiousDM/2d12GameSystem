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
Keep the best two dice. Maximum +2 bonus dice from all sources, including free dice.

#table(columns: (28%, 72%),
  table.header([Source], [Cost]),
  [Effort], [3 − relevant pool Edge, minimum 0, per use.],
  [Weal], [1 for the first die, 2 for the second.],
  // PLAYTEST: Woe-bought dice cost the Weal price in Woe (M3)
  [Woe], [Give the GM 1 Woe for the first die, 2 for the second (Playtest Value).],
  [Help], [An ally spends 1 pool point and shares the risk.],
  [Specialisation], [Free: one die when it directly applies.],
)
Each Effort use buys one bonus die *before rolling*, or +1 Power *after Success or Success at a Cost*. Total uses per roll cannot exceed Effort Level (1 at start). Effort cannot turn failure into success.

Pay Effort and Help in full. Paying the last pool point runs that pool dry; a cost of 0 never does. Free Help waives its cost, not relevance or shared risk. Backing a conflict side is not Help.

=== Outcomes against Difficulty
#table(columns: (34%, 66%),
  table.header([Result], [Outcome]),
  [Meet or beat target], [Success: Tag Power + 1, +1 per full 3 points over.],
  [Miss by 1–3], [Success at a Cost: Tag Power + 0; choose a consequence or +1 Woe for the GM.],
  [Miss by 4+], [Failure: no Power; the GM makes a move and gains 1 Woe.],
)
Agree the goal and what it takes before rolling. The Effects you buy are what the action accomplishes. Unspent Power becomes Weal, maximum 6. A consequence on a success keeps what the roll bought (Core Rules @core-outcomes).

Scripted conflicts modify failure and Success at a Cost; use @qr-run-conflict below. Versus tests compare opposing totals instead of using this table.

=== Doubles and Risk
Use the two *kept* dice.

#table(columns: (34%, 66%),
  table.header([Dice / outcome], [Result]),
  [Matching dice on Success], [Critical: +1 Power and a flourish.],
  [Matching dice on Failure / Success at a Cost], [Complication.],
  [Double 12s, independent], [Always succeed; +2 Power instead of the usual +1 critical.],
  [Double 1s], [Always cause a complication, but do not automatically fail; a success still gains the ordinary +1 critical Power.],
)
In versus tests, doubles do not override the opposing total or break ties. Winning doubles add +1 Power; winning double 12s add +2 instead. Losing or tied doubles grant no Power or normal action effect. Ability-created doubles use the same rules.

Buy off a dice complication by giving the GM 2 Woe. If you keep it and the GM cannot supply a fitting complication, the GM gains 2 Woe instead (Core Rules @core-doubles).

*Risky 1–3, optional:* Roll one separate d12. Never keep it or add it to the total; it does not count toward the bonus-dice cap. At or below the Risk rating, it causes a complication after resolution, whatever the outcome. Buy it off normally.

*Automatic success* replaces an otherwise permitted roll, not its interaction or assigned turn. Use listed Power. In versus it wins unless both automatically succeed, then tie unless explicitly overridden. No extra action, rescue of a trumped action, or dice-based critical/complication.

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

=== Statuses, Conditions and Truths
Record a status or Situational Condition as *name --- category/rating --- scope --- ending condition* (Core Rules @core-effects). Personal statuses (states of a person) and Situational Conditions (external circumstances) are separate slots: apply the highest relevant helpful and harmful one from each. Truths are recorded as *name --- Truth/scale --- scope --- ending condition* and give no modifier (Core Rules @core-truths). Names alone do not establish scope. Impede is not a status; Grind hardships use Module B.3.

=== Resist an imposed status
Roll *2 + Edge* d12 and take the highest die. Pay the result's cost; do not subtract Edge from it. Resistance reduces the incoming status by 2 tiers.

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

Only Resistance and imposed costs may overrun unless explicitly permitted. A cost of 0 never runs dry. Depletion stacks normally. At tier 6, you are Taken Out within its scope and gain one Scar, at most once per scene.

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

Life-threatening tier-6 harm with lethal stakes can start a 3-segment Dying clock. Medicine vs. Hard 18 stabilises. Explicit creature breaking-point rules replace generic outcomes only where stated.

#emph[Core Rules @core-effects[§§]–@core-rest-recovery[]; currencies in @core-core-resolution[§§]–@core-tyche-points[] and @core-weal-woe.]

== 3. Run a Conflict <qr-run-conflict>
Use scripting when the stakes matter, opposition actively resists and several tactical choices matter.

=== Setup
+ State objectives, stakes, participants and exits.
+ Roll 2d12 + Disposition skill + highest Edge in that skill's pool.
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
- Nobody acts in consecutive volleys unless they are the only available participant.
- Helping does not count as a turn.
- Update rotation when someone joins, withdraws or becomes unable to act.

Before reveal, the players may spend 2 Weal to change one unrevealed action, keeping its assigned actor. An unsuitable or unperformable action grants no free replacement.
// ART: A GM screen seen from behind: dice, tokens and a half-filled clock.
#art-fill(min: 6cm)[A GM screen seen from behind: dice, tokens and a half-filled clock.]
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

*Versus:* Higher total wins with Tag Power + 1, +1 per full 3 points over the opponent; the loser spends no Tag Power. Exact tie: no Power or normal action effect. Losing by 1–3 is not Success at a Cost. Winning prevents the opposing normal effect even if all Power buys other permitted Effects.

*Trumped:* No roll and no action effect. Paid costs remain spent.
#colbreak()
=== Conflict failure and costs
#table(columns: (72%, 28%),
  table.header([Situation], [Ordinary-failure Woe]),
  [Failed independent action], [+1],
  [Versus loss, exact tie or trump], [None],
)
An ordinary failed action grants no additional unrelated GM move, automatic injury or extra Disposition loss.

Independent Success at a Cost grants Tag Power + 0. Its ordinary cost cannot impose a status or extra Disposition loss without explicit permission. Separately triggered complications, explicit costs and scenery Dangers retain their own rules.

#emph[Core Rules @core-when-use-conflict[§§]–@core-costs-failures-complications[].]
]

== 4. Spend Power in a Conflict <qr-spend-power-conflict>
Use one Power budget. No primary purchase is mandatory. Relevance alone does not grant permission.

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
  [NPC dice complication], [Spend 2 Woe to cancel it.],
  [NPC injury trades], [Ordinary NPCs and groups cannot trade; full-PC rivals and explicit exceptions use Core Rules @core-npcs-harm.],
  [Bulwark (Interpose)], [Once per exchange, choose one. Take an ally's incoming status in their place, declared before their Resistance or reduction. Or Hold the Line: reduce one successful opposing Attack's ordinary loss by 1. Neither touches protected payments. Full rules: Adversaries @adv-interpose.],
  [Declarations and reactions], [Close Power purchases and action-triggered supplementary declarations, resolve permitted reactions, then uncancelled effects. Cancellation does not reopen declarations. Preserve expressly later windows, including Self-Repair (Adversaries @adv-shared-special-timing).],
  [End of volley], [Complete both independent actions → Self-Repair → Bolt → defeat / eligible Last Stand → eligible phases → eligible exchange-end arrivals → participation and rotation. No Disposition repair from 0; status repair does not cancel pending defeat. Arrivals create no extra action or phase check.],
  [Calls and Last Stand], [Calls use pre-reveal windows. Last Stand creates no call window or new exchange boundary. If activated after volley three, check that exchange's arrivals once before the extension, never again afterward; pending-defeat recovery remains prohibited.],
  [Special exceptions], [Use Adversaries @adv-last-stand[§§]–@adv-caller-specific-reserve-packages[] for participation, aftermath order, delayed arrivals and same-volley Lockdown/Bolt. Deferred records: once per named Special per target per conflict across sources; resolve individually after every outcome.],
)
// PLAYTEST retained: Bulwark, repair, declarations, arrival timing and deferred cap.
]
]

#player-first-reference()
