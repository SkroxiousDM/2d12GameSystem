#import "common.typ": *

// =====================================================================
//  APPENDIX 
// =====================================================================

#chapter("Quick Reference",
  [The core procedures on one spread, for the table and the screen. Full rules are in Chapter II.],
  numbered: false, label-text: "Appendix")


#columns(2,gutter:6mm)[
== The Roll
*2d12 + Skill + Modifiers vs. Difficulty.* Skill +0 to +4. Power tags +1 each, *maximum +2 per roll* (tag-cap exceptions: maximum +3). Weakness tags −1 each, no cap. Statuses ± tier. Truths shift Difficulty, not the roll: one step per rank (max rank 2), *±3 steps at most* (Core Rules §2.1, §8).

== Difficulty
#table(columns: (1fr, auto),
  table.header([Difficulty], [Target]),
  [Routine], [No roll], [Easy], [12], [Standard], [15], [Hard], [18], [Formidable], [21], [Heroic], [24])

== Outcomes
#table(columns: (34%, 66%),
  table.header([Result], [Outcome]),
  [Meet the target], [*Success*: 1 Power, +1 per full 3 over],
  [Miss by 1–3], [*Success at a Cost*: 1 Power, and the GM adds a consequence or gains 1 Woe (player's choice)],
  [Miss by 4+], [*Failure*: the GM makes a move and gains 1 Woe])
Unspent Power becomes *Momentum* (party pool, max 6).
,

== Doubles (Twists)
If the two kept dice match: on a success, a *Critical* (+1 Power and a flourish). On a failure or cost, a *Complication*. *Double 12s* always succeed with +2 Power. *Double 1s* always bring a complication. *Buy off* a complication from the dice by giving the GM 2 Woe; the GM spends 2 Woe to cancel an NPC's. *Risky 1--3* (optional): roll a Risk die; at or under the rating, a complication.
#colbreak()
== Bonus Dice
Keep the best two dice; maximum +2 bonus dice.
#table(columns: (34%, 66%),
  table.header([Source], [Cost]),
  [Effort], [3 − Edge from the pool (min 0); or buy +1 Power after a success],
  [Momentum], [1 for the first die, 2 for the second],
  [Woe], [Give the GM 1 Woe per die],
  [Help], [An ally spends 1 pool point and shares the risk])

== Resist (Core Rules §6)
Roll *2 + Edge* d12, take the *highest die*, and pay the listed cost (don't subtract Edge): *two or more 12s* cost 0 and clear a tier-1 status · *9–12* costs 1 · *5–8* costs 2 · *1–4* costs 3. This reduces the status by 2 tiers. *Negative Edge:* −1 rolls 1d12; −2 or lower rolls that many dice (2d12 at −2, 3d12 at −3) and keeps the *lowest*.

== Running Dry (Core Rules §6.1--6.3)
A cost that empties a pool, or is more than what's left in it, imposes a running-dry status at *tier 1 + overrun* (overrun = cost − points left). Only Resistance and imposed costs can overrun; a cost of 0 never runs dry. The status stacks normally. At *tier 6* you are Taken Out within its scope and gain *one Scar* (at most one per event). The pool and the status recover separately: 2 recovery points remove 1 depletion tier.
#colbreak()
== Damage Cycle (Core Rules §6, §10)
Each side has *one shared Disposition* total, reduced at setup by the opponent's *Superiority* (0--3, minimum 1); Attacks and Feints remove their committed Power + 1 and nothing else, and Defend restores it. A side loses at 0 or when no participant can continue. *Injury trade:* one per Attack or Feint, once per conflict, accept a tier 2/3/4 injury to cancel 1/2/3 loss; it can't be Resisted. Treatment removes at most 1 tier of a lasting injury until healing time does. Tier-6 life-threatening harm makes you *Dying*: 3-segment clock, Medicine vs. Hard 18 to stabilise. Compromise statuses are tier 2/3/4.

== Rest and Recovery
#table(columns: (16%, 52%, 32%),
  table.header([Rest], [Time], [Recovery]),
  [First], [A few seconds; 1 action mid-encounter], [½ d12, round up],
  [Second], [10 minutes], [½ d12, round up, +1],
  [Third], [1 hour], [½ d12, round up, +2],
  [Fourth], [10 hours (overnight)], [All pools full])
Divide the points among Sōma, Mētis, Psychē and Pneuma, up to each pool's maximum. Edge does not apply. *Hardened* (one-time Advance): +1 point on every recovery roll.
#colbreak()
== The Four Currencies
#table(columns: (30%, 22%, 48%),
  table.header([Resource], [Owner], [Job]),
  [Pools (Sōma, Mētis, Psychē, Pneuma)], [Each PC], [Effort and Resistance],
  [Tychē Points], [Each PC], [Invoke tags, accept compels],
  [Momentum], [The party], [Surplus Power from strong rolls (max 6)],
  [Woe], [The GM], [Complications and escalation])
]