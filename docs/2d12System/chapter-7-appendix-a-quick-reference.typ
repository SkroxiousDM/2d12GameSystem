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
  [Trivial], [No roll], [Routine], [9], [Easy], [12], [Standard], [15], [Hard], [18], [Formidable], [21], [Heroic], [24], [Epic], [27], [Divine], [30])
Each step is 3 points; no minimum target. A target below Routine 9 does not automatically become Trivial (Core Rules §2.2).

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

== Create (Core Rules §5)
2 Power per Truth rank, in or out of conflict: rank 1 costs 2; rank 2 costs 4. Each explicit ability/item discount is −1 Power, minimum 1. Floor Collapse costs 4 Power (Core Rules §10.6).

== Resist (Core Rules §6)
Roll *2 + Edge* d12, take the *highest die*, and pay the listed cost (don't subtract Edge): *two or more 12s* cost 0 and clear a tier-1 status · *9–12* costs 1 · *5–8* costs 2 · *1–4* costs 3. This reduces the status by 2 tiers. *Negative Edge:* −1 rolls 1d12; −2 or lower rolls that many dice (2d12 at −2, 3d12 at −3) and keeps the *lowest*.

== Running Dry (Core Rules §6.1--6.3)
A cost that empties a pool, or is more than what's left in it, imposes a running-dry status at *tier 1 + overrun* (overrun = cost − points left). Only Resistance and imposed costs can overrun; a cost of 0 never runs dry. The status stacks normally. At *tier 6* you are Taken Out within its scope and gain *one Scar* (at most one per event). The pool and the status recover separately: 2 recovery points remove 1 depletion tier.
#colbreak()
== Conflict Setup (Core Rules §10.2–10.3)
Roll 2d12 + Disposition skill + highest Edge in its pool; divide by 3, round down, then add +1 per helper and all flat modifiers at full value. No flat-modifier stacking cap; minimum 1 before *Superiority* (0--3). Superiority alone can reduce starting Disposition to 0: hand-wave the conflict as a win at no cost (Core Rules §10.12, none or trivial). PC/opposition symmetry and opposition eligibility remain playtest flags.

== Damage Cycle (Core Rules §6, §10)
Each side has *one shared Disposition* total, with no per-member shares or spill-over. Attacks and Feints remove their committed Power + 1 and nothing else, and Defend restores it up to its starting value. After all actions in the volley resolve, a side loses at 0 or when no participant can continue. *Last Stand* may postpone defeat at 0 for one additional volley (Adversaries §6.10); it does not restore Disposition. *Injury trade:* one per Attack or Feint, once per conflict, accept a tier 2/3/4 injury to cancel 1/2/3 loss; it can't be Resisted. Treatment removes at most 1 tier of a lasting injury until healing time does. After Resistance and stacking, tier-6 life-threatening physical harm makes a living character *Dying* if lethal stakes permit: 3-segment clock, Medicine vs. Hard 18 to stabilise. Follow explicit creature and setting exceptions; a resolved killing method does not gain a rescue clock afterward. Compromise statuses are tier 2/3/4.

== Area Effects (Core Rules §10.16; provisional)
Establish the area and everyone it can reach; allies are not automatically excluded. An area Attack or Feint removes normal shared Disposition loss once, plus 1 per additional opposing participant affected. Explicit statuses apply at full tier to everyone affected, with separate Resistance or NPC reduction. Area alone adds no status to an ordinary conflict Attack; apply both layers only if a rule grants both. One eligible injury trade at most against the combined loss of that Attack or Feint. No Disposition outside conflicts.

== Interpose (Core Rules §10.17)
Bulwark: once per exchange, redirect an ally's entire imposed status before their Resistance or reduction; use your own normal Resistance or NPC reduction, with at most one NPC reduction per status. Outside conflicts, no separate frequency limit. Must be able to intercept; cannot redirect shared Disposition loss, injury payments, running-dry statuses, agreed concession costs or compromise costs. Cannot shield an ally from an area effect already affecting both of you.

== Boss Phases (Adversaries §7.1)
For a designated boss, record its side's final starting shared Disposition after setup modifiers and Superiority as the fixed *phase reference*. *Half:* half that reference, rounded down. *Desperate:* one third, rounded down. No phases if Superiority ends the conflict at setup.

After each volley, resolve all actions and check removal, victory and mutual defeat first. If neither side is defeated, no defeat is pending and the boss remains active, activate each untriggered phase whose threshold is met. Each activates once; if both are met, Half activates before Desperate. Benefits apply to later actions, not resolved ones.

#table(columns: (34%, 33%, 33%),
  table.header([Listed Specials], [Opening], [Revealed at Half]),
  [1], [0], [1],
  [2], [1], [1],
  [3], [1], [2],
  [4], [2], [2])

Choose Opening Specials before the conflict. Revealing a Special makes it available, not free; retain its costs, requirements and limits. Role traits, Kind traits and general Woe spends outside the Special allowance remain available normally. Half grants no extra Command bonus.

At *Desperate*, Defend uses Weak and the designated Best action gains +2. If Defend is the designated Best action, use Weak +2. Command's benefits require an active Leader.

Recovery and reinforcements do not change phase references, reverse phases or refresh uses. Reinforcements add Grit to current and starting shared Disposition, raising the recovery cap. Removing a participant subtracts no Grit and lowers neither total.

== Last Stand (Adversaries §6.10)
*2 Woe; once per side per conflict.* After a volley leaves the side at 0 shared Disposition, an active bearer with Last Stand available may postpone defeat if a participant can still pursue the objective. Activate before settlement; not on mutual defeat or defeat because no participant can continue.

Resolve exactly one additional volley with both sides, normal action interactions and rotation. Use the next scripted action; if none remains, secretly script one. This is not a new exchange: no refresh of exchange-limited abilities or clock tick merely for scripting it. Script changes retain their normal cost.

The side stays at 0: Defend, reinforcement Grit and other recovery cannot raise its current Disposition. No new Boss Phase activates; existing phase benefits remain usable by an active boss. Last Stand does not restore an incapacitated participant or stack or chain with another bearer. After the volley, the side loses; if the opponent is also defeated, resolve mutual defeat.

== Fail-safe (Adversaries §6.11)
*3 Woe; active Guardian; Special already available.* When its side's defeat at 0 shared Disposition becomes final, the Guardian may detonate before compromise. If Last Stand postpones defeat, wait until its additional volley ends; the Guardian must still be active and Fail-safe available.

Establish the blast's reach from the Guardian's position and the fiction. Each PC within reach adds _burned-3_ as an additional compromise injury assigned to that PC. Add these before existing-injury credit and Resistance (Core Rules §10.12). Existing injuries count once; imposed injuries may be Resisted normally. No replacement cost because Resistance removes an injury.

The detonation destroys the Guardian. It grants no action, volley or Disposition change and cannot reopen a settled outcome. No trigger on a Superiority setup win, accepted concession, mutual defeat or defeat solely because no participant can continue.

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