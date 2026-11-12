#import "common.typ": *

// =====================================================================
//  APPENDIX
// =====================================================================

#chapter("Quick Reference",
  [The core procedures for the table and the screen. Full rules are in Core Rules.],
  numbered: false, label-text: "Appendix")

#columns(2,gutter:6mm)[
== The Roll
*2d12 + Skill + Modifiers vs. Difficulty.* Skill +0 to +4. Power tags +1 each, *maximum +2 per roll* (tag-cap exceptions: maximum +3). Weakness tags −1 each, no cap. Statuses ± tier. Truths shift Difficulty, not the roll: one step per rank (max rank 2), *±3 steps at most* (Core Rules §2.1, §8).

== Statuses (Core Rules §5.1--5.2)
Record name, tier, scope, and removal condition. Apply only the highest relevant helpful status and the highest relevant harmful status, adding or subtracting their tiers. Example names: Inspired, Focused, Trusted; Wounded, Rattled, Discredited. Names do not establish scope by themselves. Grind conditions use their listed effects (Module B.3); Impede is not a status (§10.6).

== Difficulty
#table(columns: (1fr, auto),
  table.header([Difficulty], [Target]),
  [Trivial], [No roll], [Routine], [9], [Easy], [12], [Standard], [15], [Hard], [18], [Formidable], [21], [Heroic], [24], [Epic], [27], [Divine], [30])
Each step is 3 points; no minimum target. A target below Routine 9 does not automatically become Trivial (Core Rules §2.2).

== Outcomes
For tests against a Difficulty; versus tests use opposing totals instead.
#table(columns: (34%, 66%),
  table.header([Result], [Outcome]),
  [Meet the target], [*Success*: 1 Power, +1 per full 3 over],
  [Miss by 1–3], [*Success at a Cost*: 1 Power, and the GM adds a consequence or gains 1 Woe (player's choice)],
  [Miss by 4+], [*Failure*: the GM makes a move and gains 1 Woe])
Unspent Power becomes *Momentum* (party pool, max 6). In scripted conflicts, an ordinary failed independent test retains its usual 1 Woe but grants no additional unrelated GM move, automatic injury or extra Disposition loss. Independent Success at a Cost grants 1 Power; its ordinary cost cannot add a status or extra Disposition loss without explicit permission. A versus loss by 1–3 is not Success at a Cost (Core Rules §2.5, §10.7).

*Versus losses, exact ties and trumped actions generate no ordinary-failure Woe*, symmetrically for player and GM actors. A trumped action makes no roll and produces no effect. Paid costs remain spent; doubles complications, explicit costs, scenery Dangers and other separately triggered Woe rules still apply.

== Doubles (Twists)
If the two kept dice match: on a success, a *Critical* (+1 Power and a flourish); on a failure or cost, a *Complication*. On an *independent test*, double 12s always succeed and add +2 Power instead of the ordinary +1 critical.

In a *versus test*, compare totals normally: double 12s neither beat a higher total nor break a tie. Winning ordinary doubles add +1 Power; winning double 12s add +2 instead, on top of the margin-based award. Losing or tied doubles grant no Power or normal action effect. Double 1s always cause their normal complication but do not automatically lose; successful double 1s also receive the ordinary +1 critical Power. Ability-created doubles, including Perfect Strike, use the same procedure (Core Rules §2.6, §10.5).

*Buy off* a complication from the dice by giving the GM 2 Woe; the GM spends 2 Woe to cancel an NPC's. *Risky 1--3* (optional): roll a Risk die; at or under the rating, a complication. In conflicts, complications respect stakes and independent-action timing.
#colbreak()
== Bonus Dice
Keep the best two dice; maximum +2 bonus dice, including free dice.
#table(columns: (34%, 66%),
  table.header([Source], [Cost]),
  [Effort], [3 − Edge from the pool (min 0); or buy +1 Power after a success],
  [Momentum], [1 for the first die, 2 for the second],
  [Woe], [Give the GM 1 Woe per die],
  [Ordinary Help], [An ally spends 1 pool point and shares the risk])
Ordinary free Help waives the cost, not relevance or risk. *Setup Help costs no pool points*: before the leader rolls, each eligible helper explains a meaningful contribution and commits to the side's stakes. Each adds +1 starting Disposition, not an ordinary Help die. Free-Help abilities add no further setup benefit unless explicit. An unavailable character cannot help; later removal does not subtract the contribution or recalculate Disposition (Core Rules §2.4, §10.2).

== Create (Core Rules §5)
2 Power per Truth rank, in or out of conflict: rank 1 costs 2; rank 2 costs 4. Each explicit ability/item discount is −1 Power, minimum 1. Floor Collapse costs 4 Power (Core Rules §10.8).

== Resist (Core Rules §6)
Roll *2 + Edge* d12, take the *highest die*, and pay the listed cost (don't subtract Edge): *two or more 12s* cost 0 and clear a tier-1 status · *9–12* costs 1 · *5–8* costs 2 · *1–4* costs 3. This reduces the status by 2 tiers. *Negative Edge:* −1 rolls 1d12; −2 or lower rolls that many dice (2d12 at −2, 3d12 at −3) and keeps the *lowest*. Ordinary Disposition loss and accepted payments cannot be Resisted.

== Running Dry (Core Rules §6.1--6.3)
A cost that empties a pool, or is more than what's left in it, imposes a running-dry status at *tier 1 + overrun* (overrun = cost − points left). Only Resistance and imposed costs can overrun; a cost of 0 never runs dry. The status stacks normally. At *tier 6* you are Taken Out within its scope and gain *one Scar* (at most one per event). The pool and the status recover separately: 2 recovery points remove 1 depletion tier.
#colbreak()
== Conflict Setup (Core Rules §10.1–10.3)
Use scripting when the outcome matters, opposition actively resists, and several tactical choices matter. State objectives, stakes and exits. Normally roll 2d12 + Disposition skill + highest Edge in its pool; divide by 3, round down, then add +1 per eligible helper and all flat modifiers at full value. Setup Help is free and committed before the roll; later removal does not recalculate it. Grit-built adversary sides use their listed setup instead. No flat-modifier stacking cap; minimum 1 before *Superiority* (0--3). Superiority alone can reduce starting Disposition to 0: win at no cost within stakes (§10.3). PC/opposition symmetry and eligibility remain playtest flags.

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
A only: Attack rolls independently, Feint is trumped. F only: Feint rolls independently, Defend is trumped. Independent tests normally use Standard 15, adjusted by Truths and explicit modifiers such as Guard. Versus: higher total wins; 1 Power +1 per full 3 over the loser, with eligible doubles bonuses. Exact tie: no Power or normal action effect. Both independent actions finish before checking victory.

*Automatic success* replaces an otherwise permitted action's roll, not its interaction or assigned turn. Apply listed Power; in versus it wins unless both actions automatically succeed, then tie unless expressly overridden. No extra action, rescue of a trumped action, expanded stakes or dice-based critical/complication (Core Rules §10.5).

== Action Effects (Core Rules §10.6)
Attack/Feint require *at least 1 committed Power* to remove committed Power + 1 from shared Disposition; apply the +1 once per action, not per purchase. No commitment means no loss. Defend restores 1 per committed Power up to starting Disposition; no commitment means no recovery unless an explicit ability grants it independently.

Maneuver: Impede 1; Gain Position 1; Disarm 3; Create 2 per rank. Buy Impede, Gain Position and Disarm once each per Maneuver. Impede is −3 on the next scripted action, not a status; pending Impedes do not stack. Gain Position gives one bonus die. Both expire if the next action makes no roll. Disarm disables an asset, not automatically an entire action category.

== Supplementary Effects (Core Rules §5, §10.6)
A successful action may spend all Power on permitted supplementary Effects; no primary purchase is mandatory. One shared Power budget, no double spending. Winning versus prevents the opposing action's normal effect even without purchasing loss/recovery. Independent opposing actions still resolve. Relevance is required, not permission to buy a prohibited Effect.

- *Weaken:* explicit ability only on any scripted action; not a cheaper Disarm.
- *Create:* Maneuver; other actions need an explicit exception.
- *Enhance:* Defend or Maneuver; otherwise explicit exception.
- *Restore:* Defend; otherwise explicit exception, including Maneuver.
- *Discover:* any successful action; 1 Power per relevant question, repeatable.
- *Advance:* Attack or Maneuver; 1 Power per segment, repeatable. Separate established clock only; no duplicate Disposition track or bypass of a still-disputed objective. Establish conflict-ending clock relationships before scripting.
- *Disrupt:* Maneuver, 3 Power, at most once; affect a prepared action outside the committed script or remove 1 available GM Woe. No generic script cancellation/revelation/delay, reversed spend or cancelled accepted payment.
- *Extra Feat:* any successful action, 1 Power, once unless expressly overridden. One related secondary accomplishment, not another turn/roll, duplicate loss, prohibited purchase, cancellation of an independent action or objective outside stakes. Free waives cost, not the limit.

Explicit exceptions retain only their stated purchase, trigger, cost, frequency and scope. Advance and Disrupt on other actions need an explicit exception. Enhance/Restore retain normal tier prices and scope/stacking/treatment rules; Create retains rank prices and explicit discounts. Ordinary Attacks/Feints gain no harmful-status permission from this list.

== Furcifer Opening (Generic Playbooks §4.1)
For Opportunist/Deadly Precision, name an individual opponent whose unawareness of your presence or pending Impede materially assists the approach. An ongoing status or unrelated participant does not qualify. Check after reveal and approaches, before either action resolves; outside conflicts, before the roll or automatic resolution. A trumped opposing action cannot qualify through Impede. Independent eligibility lasts through that volley; neither ability consumes/extends Impede. Both triggers still qualify once. Revelation follows the fiction.

*Opportunist:* +1 Power once per successful eligible action, including independent Success at a Cost and permitted listed-Power automatic success; no benefit on loss, tie or trump. Spend only on permitted, relevant Effects.

*Deadly Precision:* eligible Attack only, not Feint. Choose +1 opposing Disposition loss when at least 1 Power funds ordinary Attack loss, or one qualifying single-target status purchase at half purchased tier rounded up (tiers 1–2/3–4/5–6 cost 1/2/3). Incoming tiers precede reduction/stacking; price does not grant status permission. Never both components from this ability on one action.

Both abilities may apply together, once each per action. Distinct eligible flat bonuses stack; alternative status prices do not combine (use the lowest). No discount to a shared area-status purchase; apply area loss adjustments separately. No extra action, expanded stakes or improvement to a creature finishing procedure unless expressly permitted. Full eligibility and limits remain in the ability entries.

== Damage Cycle (Core Rules §6, §10.9–10.15)
One shared Disposition total per side, no individual shares or spill-over. Ordinary Attacks/Feints inflict no status or pool loss. A side loses at 0 or when nobody can pursue its objective. Removal subtracts no Disposition. *Injury trade:* once per character per conflict, at most one participant per Attack/Feint, accept tier 2/3/4 to cancel 1/2/3 loss before it is applied (§10.11). Accepted payments cannot be prevented, redirected or Resisted. Treatment removes at most 1 tier of a lasting injury until healing time does. Life-threatening tier-6 harm with lethal stakes can start a 3-segment Dying clock; Medicine vs. Hard 18 stabilises. Explicit creature breaking-point rules replace generic outcomes only where stated.

== Compromise and Concession (Core Rules §10.12–10.13)
Winner's adjusted starting Disposition lost: none = None; more than 0 but less than half = Minor; at least half but less than three-quarters = Significant; three-quarters or more = Major. Use proportions without rounding. Negotiate one outcome-first package; injury tiers 2/3/4 are guidance, not automatic additions. Credit eligible existing injuries once. Resist eligible imposed statuses, not agreed payments; Resistance does not revoke the loser's concession. Resolve required creature finishing procedures before compromise. Offer concessions before the next roll; accepted terms end the conflict without another roll.

== Area Effects (Core Rules §10.17; provisional)
Establish the area and everyone it can reach; allies are not automatically excluded. Apply ordinary shared Disposition loss once, plus 1 per additional opposing participant affected, only when Power is committed to ordinary loss. One group rules entry counts as one participant. Explicit statuses apply at full tier with separate Resistance or NPC reduction. Area alone adds no status to an ordinary Attack. One injury trade at most against the combined loss. No Disposition outside conflicts.

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
