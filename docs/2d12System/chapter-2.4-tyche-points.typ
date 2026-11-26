#import "common.typ": *

== 4. Tychē Points <core-tyche-points>
#columns(2, gutter: 6mm)[
#strong[Spend 1 Tychē Point to:]

- #strong[Invoke] --- reroll all the dice, including any Risk die, or add +2 to the total after rolling. This works with any tag or Truth you can justify, even one belonging to the scene or an enemy; the approach must already be possible. A Truth gives no modifier itself, so the benefit comes from the Tychē Point. The +2 sits outside the status and Condition slots and isn't Tag Power; a Condition's underlying fact can justify an Invoke, but its rating adds no further free bonus. Invoke before the roll's outcome is resolved. A reroll changes the dice, not a cost already paid or a consequence already resolved. It replaces the original roll as a whole and you can't keep the original. Keep the Complication die and the highest other action die from the new roll, and use the new Risk die result in place of the old one (@core-dice-manipulation). The +2 changes only the total, never a die face, so it can change success or failure but not whether the Complication die is lower, higher or matching.
- #strong[Declare] --- establish a minor fact about the scene. The GM may require it to tie to one of your tags.
- #strong[Resist harder] --- reduce one Resistance cost to 0 (@core-resistance-harm-recovery).

#strong[Declarations stay minor.] A declared fact can make an approach possible or supply a relevant asset. It can't resolve an action by itself, buy status tiers, Situational Condition ratings or Disposition, inflict harm, or change Truths above scene scale (@core-truths). A consequential Create can't be relabelled minor to avoid its cost.

#strong[Resisting harder.] The Resistance still resolves normally, but its pool cost is 0, so it can't run the pool dry, even if the pool is already empty (@core-running-dry). It doesn't restore spent points or clear an existing running-dry status, and it can't Resist ordinary Disposition loss, an accepted compel or a protected payment (@core-costs-failures-complications).

Scripted conflicts add timing limits to Invoke and Declare; Resist harder has none beyond Resistance's own timing (@core-conflict-limits-reference).

#strong[Earn Tychē Points by:]

- #strong[Accepting a compel] --- the GM or another player offers a meaningful complication based on any of your tags or Scars, Beliefs (@core-beliefs-goals-instincts) or your Instinct. Accept → +1 Tychē Point. Refuse → pay 1 Tychē Point; with none to pay, you accept the compel and gain the point as usual.
- #strong[Compelling yourself] --- propose the same kind of complication on yourself. If the GM agrees it meets the rules below, take the complication and gain +1 Tychē Point. Facing it can also earn XP (@core-earning-xp).

#strong[What makes a compel]

- #strong[Meaningful.] The complication must change the situation: an obstacle, obligation, exposure, hard choice, or lost opportunity. Flavour or a minor inconvenience doesn't count.
- #strong[Clear offer.] Before you accept, know which tag, Belief, or Instinct justifies it, what will happen, and what it commits your character to. You otherwise control how your character responds.
- #strong[One tag, two sides.] The tag that supplies Power to one action can justify a compel in another, or in the same action when the help and the trouble are distinct. Accepting the compel doesn't remove the tag's Power.
- #strong[Limits.] A compel must follow from the established meaning of the tag, Belief, or Instinct. It adds no numerical penalty and can't undo a resolved success. An existing penalty doesn't earn Tychē just because a tag, Belief, or Instinct explains it. A compel's complication isn't an outcome complication: it has no severity, can't be bought off, mitigated or Resisted, and gives the GM no Woe (@core-doubles).
- #emph[Feared duellist:] a rival challenges you before an audience whose support you need. #emph[Devoted healer:] you stay to treat a dying enemy and lose the chance to pursue their commander.

==== Beliefs and Compels
All three Belief categories use the same compel procedure. Acting in line with a Belief earns nothing by itself; only a complication that meets the standard above does. Several Beliefs behind one complication still earn one Tychē Point. Beliefs grant no modifiers, are not extra tags and supply no Power.

#emph[Belief example:] your Self Belief rejects sacrificing people for advantage. You propose staying to escort stranded civilians instead of pursuing the fleeing saboteur. Before acceptance, agree that the delay will let the saboteur escape the immediate pursuit. Accepting that meaningful complication earns 1 Tychē Point; it does not dictate every action you take afterward.

Acting against a Belief is not refusing a compel and carries no automatic penalty (@core-reviewing-beliefs-instincts). An Other Belief never grants control over another PC.

=== 4.1 Refresh <core-refresh>
- #strong[Base Refresh is 3.] At the start of each session, your Tychē Points reset to your Refresh (if you have more, keep them, up to the cap).
- #strong[Tychē ceiling.] You can hold at most #strong[Refresh + 3] Tychē Points. Any you would gain above the cap are lost.
- #strong[Spending Refresh.] Creation extras and ★ abilities cost Refresh (@core-starting-resources).
- An #strong[attuned artifact] (Module A) costs 1 Refresh while attuned, not merely while carried.
- #strong[Minimum Refresh is 1.] Purchases can't take Refresh below 1. Your current Tychē Points can still drop to 0.
- The advancement option \"+1 Refresh\" (@core-advancement) lets you buy Refresh back, up to the Refresh cap (@core-spending-xp).

Refresh happens only at the start of a session, not at a new scene, exchange, Inquiry phase or downtime stay. It restores Tychē Points only; pools, injuries, injury trades and Disposition use their own procedures.

Design intent: power comes at the cost of narrative flexibility. A low-Refresh character is mechanically strong but has to accept compels to stay fuelled.

=== 4.2 Prepared in Advance (Optional) <core-prepared-advance>
// PLAYTEST: optional flashback. Leave it out of the first Specialisation and Knowledge test; then check its Tychē use and whether it crowds the Furcifer's ★ Flashback.
Once per session, you may spend #strong[1 Tychē Point] to establish one plausible thing you prepared earlier: #emph[I asked the ferryman to wait after dusk.]

- #strong[Obvious or reasonable only.] The preparation must be something the character could plainly have done with the time and means they had. A stretch or a wild claim needs the Furcifer's ★ #emph[Flashback] (Generic Playbooks).
- #strong[Roll only if it was uncertain.] If the earlier action would have needed a roll that matters, make it now, using the normal rules.
- #strong[No rewriting.] It can't contradict an established fact, erase a resolved consequence, or reverse a cost already paid. #emph[The ferry we just watched burn was a decoy] isn't allowed.
- #strong[Declaration limits apply.] Like Declare, it can't resolve an action by itself, buy status tiers, Condition ratings or Disposition, change Truths above scene scale, or recalculate Superiority after setup. In scripted conflicts, @core-conflict-limits-reference sets its timing.
    
Load covers what you brought; contacts cover what you can find now (@core-starting-resources); a flashback covers what you arranged earlier.
]
