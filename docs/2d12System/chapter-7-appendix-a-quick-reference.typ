#import "common.typ": *

// =====================================================================
//  APPENDIX
// =====================================================================

#chapter("Quick Reference",
  [The core procedures for the table and the screen. Full rules are in Chapter II.],
  numbered: false, label-text: "Appendix")

#columns(2,gutter:6mm)[
== The Roll
*2d12 + Skill + Modifiers vs. Difficulty.* Skill +0 to +4. Power tags +1 each, *maximum +2 per roll* (tag-cap exceptions: maximum +3). Weakness tags −1 each, no cap. Statuses ± tier. Truths shift Difficulty, not the roll: one step per rank (max rank 2), *±3 steps at most* (Core Rules §2.1, §8).

== Difficulty
#table(columns: (1fr, auto),
  table.header([Difficulty], [Target]),
  [Trivial], [No roll], [Routine], [9], [Easy], [12], [Standard], [15], [Hard], [18], [Formidable], [21], [Heroic], [24], [Epic], [27], [Divine], [30])
Each step is 3 points; no minimum target. A target below Routine 9 does not automatically become Trivial (Core Rules §2.2).

== Outcomes
#table(columns: (34%, 66%),
  table.header([Result], [Outcome]),
  [Meet the target], [*Success*: 1 Power, +1 per full 3 over],
  [Miss by 1–3], [*Success at a Cost*: 1 Power, and the GM adds a consequence or gains 1 Woe (player's choice)],
  [Miss by 4+], [*Failure*: the GM makes a move and gains 1 Woe])
Unspent Power becomes *Momentum* (party pool, max 6). In scripted conflicts, apply §10.7 instead of an additional GM move for ordinary failure. Independent costs cannot add a status or extra Disposition loss without explicit permission. Success at a Cost does not turn a lost versus test into success.

== Doubles (Twists)
If the two kept dice match: on a success, a *Critical* (+1 Power and a flourish). On a failure or cost, a *Complication*. *Double 12s* always succeed with +2 Power. *Double 1s* always bring a complication. *Buy off* a complication from the dice by giving the GM 2 Woe; the GM spends 2 Woe to cancel an NPC's. *Risky 1--3* (optional): roll a Risk die; at or under the rating, a complication. In conflicts, complications respect stakes and independent-action timing. Exceptional doubles against opposed totals remain an open ruling (§10.5).
#colbreak()
== Bonus Dice
Keep the best two dice; maximum +2 bonus dice, including free dice.
#table(columns: (34%, 66%),
  table.header([Source], [Cost]),
  [Effort], [3 − Edge from the pool (min 0); or buy +1 Power after a success],
  [Momentum], [1 for the first die, 2 for the second],
  [Woe], [Give the GM 1 Woe per die],
  [Help], [An ally spends 1 pool point and shares the risk])
Free Help waives the cost, not relevance or risk. Setup Help grants +1 Disposition instead of an additional Help die (§10.2).

== Create (Core Rules §5)
2 Power per Truth rank, in or out of conflict: rank 1 costs 2; rank 2 costs 4. Each explicit ability/item discount is −1 Power, minimum 1. Floor Collapse costs 4 Power (Core Rules §10.8).

== Resist (Core Rules §6)
Roll *2 + Edge* d12, take the *highest die*, and pay the listed cost (don't subtract Edge): *two or more 12s* cost 0 and clear a tier-1 status · *9–12* costs 1 · *5–8* costs 2 · *1–4* costs 3. This reduces the status by 2 tiers. *Negative Edge:* −1 rolls 1d12; −2 or lower rolls that many dice (2d12 at −2, 3d12 at −3) and keeps the *lowest*. Ordinary Disposition loss and accepted payments cannot be Resisted.

== Running Dry (Core Rules §6.1--6.3)
A cost that empties a pool, or is more than what's left in it, imposes a running-dry status at *tier 1 + overrun* (overrun = cost − points left). Only Resistance and imposed costs can overrun; a cost of 0 never runs dry. The status stacks normally. At *tier 6* you are Taken Out within its scope and gain *one Scar* (at most one per event). The pool and the status recover separately: 2 recovery points remove 1 depletion tier.
#colbreak()
== Conflict Setup (Core Rules §10.1–10.3)
Use scripting when the outcome matters, opposition actively resists, and several tactical choices matter. State objectives, stakes and exits. Normally roll 2d12 + Disposition skill + highest Edge in its pool; divide by 3, round down, then add +1 per helper and all flat modifiers at full value. Grit-built adversary sides use their listed setup instead. No flat-modifier stacking cap; minimum 1 before *Superiority* (0--3). Superiority alone can reduce starting Disposition to 0: win at no cost within stakes (§10.3). PC/opposition symmetry and eligibility remain playtest flags.

== Scripts and Rotation (Core Rules §10.5)
Three actions per exchange, revealed one volley at a time. Track rotation across exchange boundaries: everyone available acts before anyone repeats; no consecutive turns unless alone. Change one unrevealed action before reveal for 2 Momentum (players) or 3 Woe (GM); no free actor reassignment. Free does not mean an extra turn.

== Action Interactions
I = independent; V = versus.
#table(columns: (auto, 1fr, 1fr, 1fr, 1fr),
  table.header([], [Attack], [Defend], [Feint], [Maneuver]),
  [Attack], [I], [V], [A only], [V],
  [Defend], [V], [I], [F only], [V],
  [Feint], [A only], [F only], [V], [I],
  [Maneuver], [V], [V], [I], [I])
A only: Attack rolls independently, Feint is trumped. F only: Feint rolls independently, Defend is trumped. Independent tests normally use Standard 15, adjusted by Truths and explicit modifiers such as Guard. Versus: higher total wins; 1 Power +1 per full 3 over the loser. Exact tie: no normal action effect. Both independent actions finish before checking victory.

== Action Effects (Core Rules §10.6)
Attack/Feint remove committed Power + 1 from shared Disposition. Defend restores 1 per Power up to starting Disposition. Maneuver: Impede 1; Gain Position 1; Disarm 3; Create 2 per rank. Buy Impede, Gain Position and Disarm once each per Maneuver. Impede is −3 on the next scripted action, not a status; pending Impedes do not stack. Gain Position gives one bonus die. Both expire if the next action makes no roll. Disarm disables an asset, not automatically an entire action category.

== Damage Cycle (Core Rules §6, §10.9–10.15)
One shared Disposition total per side, no individual shares or spill-over. Ordinary Attacks/Feints inflict no status or pool loss. A side loses at 0 or when nobody can pursue its objective. Removal subtracts no Disposition. *Injury trade:* once per character per conflict, at most one participant per Attack/Feint, accept tier 2/3/4 to cancel 1/2/3 loss before it is applied (§10.11). Accepted payments cannot be prevented, redirected or Resisted. Treatment removes at most 1 tier of a lasting injury until healing time does. Life-threatening tier-6 harm with lethal stakes can start a 3-segment Dying clock; Medicine vs. Hard 18 stabilises. Explicit creature breaking-point rules replace generic outcomes only where stated.

== Compromise and Concession (Core Rules §10.12–10.13)
Winner's adjusted starting Disposition lost: none = None; more than 0 but less than half = Minor; at least half but less than three-quarters = Significant; three-quarters or more = Major. Use proportions without rounding. Negotiate one outcome-first package; injury tiers 2/3/4 are guidance, not automatic additions. Credit eligible existing injuries once. Resist eligible imposed statuses, not agreed payments; Resistance does not revoke the loser's concession. Resolve required creature finishing procedures before compromise. Offer concessions before the next roll; accepted terms end the conflict without another roll.

== Area Effects (Core Rules §10.17; provisional)
Establish the area and everyone it can reach; allies are not automatically excluded. Apply ordinary shared Disposition loss once, plus 1 per additional opposing participant affected. One group rules entry counts as one participant. Explicit statuses apply at full tier with separate Resistance or NPC reduction. Area alone adds no status to an ordinary Attack. One injury trade at most against the combined loss. No Disposition outside conflicts.

== Interpose (Core Rules §10.18)
Bulwark: once per exchange, redirect an ally's entire imposed status before their Resistance or reduction; use your own eligible reduction, at most one NPC reduction per status. Outside conflicts, no separate frequency limit. Must be able to intercept; cannot redirect shared Disposition loss, injury payments, running-dry statuses, agreed concession costs, compromise costs or other accepted payments. Cannot shield an ally from an area effect already affecting both of you.

== Rest and Recovery
#table(columns: (16%, 52%, 32%),
  table.header([Rest], [Time], [Recovery]),
  [First], [A few seconds; 1 action mid-encounter], [½ d12, round up],
  [Second], [10 minutes], [½ d12, round up, +1],
  [Third], [1 hour], [½ d12, round up, +2],
  [Fourth], [10 hours (overnight)], [All pools full])
Divide the points among Sōma, Mētis, Psychē and Pneuma, up to each pool's maximum. Edge does not apply. *Hardened* (one-time Advance): +1 point on every recovery roll. Pool recovery and status healing do not restore Disposition, refresh injury trades or erase Scars.
#colbreak()
== The Four Currencies
#table(columns: (30%, 22%, 48%),
  table.header([Resource], [Owner], [Job]),
  [Pools (Sōma, Mētis, Psychē, Pneuma)], [Each PC], [Effort and Resistance],
  [Tychē Points], [Each PC], [Invoke tags, accept compels],
  [Momentum], [The party], [Surplus Power from strong rolls (max 6)],
  [Woe], [The GM], [Complications and escalation])
]
