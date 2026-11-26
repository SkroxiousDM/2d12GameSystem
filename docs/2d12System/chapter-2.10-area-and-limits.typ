#import "common.typ": *

#columns(2, gutter: 6mm)[
=== 10.17 Area Effects <core-area-effects>
#emph[(Playtest Value)]
// Replaces earlier per-member Disposition wording and the full-effect-plus-tier-1-splash rule.

An area effect affects everyone within its established area whom the effect can reach. Establish the area and affected participants before resolving it. An area effect doesn't automatically distinguish allies from enemies; selective targeting requires an explicit rule or circumstances that keep others outside its reach.

#strong[Disposition loss in conflicts.] When an area Attack or Feint applies its normal Disposition-loss effect:
+ Apply the committed Power + 1 to the opposing side's shared Disposition once.
+ Add 1 Disposition loss for each additional opposing participant affected beyond the first.

Loss goes to the shared total, never to individuals. A group with one rules entry counts as one participant (@core-shared-disposition-participation).

#emph[Example:] an area Attack commits 3 Power to Disposition loss and affects three opposing participants. It removes 6 shared Disposition: 3 Power + 1 for the normal Attack, +2 for the two additional participants.

Apply any eligible injury trade against the combined loss (@core-accepting-injury). The area Attack remains one Attack: no more than one participant may accept an injury against it.

#strong[Explicitly inflicted statuses.] When an area effect explicitly inflicts a status, every affected character receives the full purchased or listed tier. Resolve each character's Resistance or NPC harm reduction separately, then stack the remaining status normally.

#emph[Example:] an effect that inflicts #emph[burned −3] in an area inflicts #emph[burned −3] on every affected character, not tier 3 on one and tier 1 on the others.

An ordinary conflict Attack or Feint inflicts no status just because it covers an area; it inflicts both loss and statuses only if an explicit rule says so. Outside conflicts, area effects inflict statuses normally and no Disposition loss. Offensive bonuses apply to their stated component (@core-actions-effects).

// PLAYTEST: does splash drain shared Disposition too fast against large groups? Test full-tier statuses against groups (separate Resistance costs), and Unleash and NPC area Specials against this procedure.

=== 10.18 Conflict Limits Reference <core-conflict-limits-reference>
These limits apply to every scripted conflict. Specific rules override them only on the subject they address.

==== Core Rules in Conflicts
- #strong[Invoke] during an eligible roll, before its outcome is resolved. It changes only that roll: no extra turn, script change or reassigned actor. A trumped action or automatic success has no roll to invoke on.
- #strong[Specialisations] add their die only when the action's permitted skill is the Specialisation's skill and it applies to the approach (@core-skill-pyramid). They don't permit a different skill, action or Effect. #strong[Knowledge] informs choices but doesn't add an action.
- #strong[Prepared in Advance] (@core-prepared-advance), if used, is a declaration: the next item's limits apply, and it can't change a revealed script.
- #strong[Resist harder] has no conflict timing limit beyond Resistance's own timing (@core-tyche-points). It still can't Resist ordinary Disposition loss or a protected payment.
- #strong[Declarations] can make an approach possible or supply an asset. They can't resolve a scripted action, cancel an independent action, widen the stakes or reverse an accepted concession.
- #strong[Compels.] Agree the consequence before accepting. A compel must respect the stakes and action timing, and can't change a script or cancel an independent action. If its terms settle the conflict, use Concession (@core-defeat-mutual-defeat-concession) rather than another roll. It can't erase a protected payment.
- #strong[Instincts.] Acting on an Instinct takes no time but grants no extra action, interrupt, free script change, actor reassignment or rotation bypass. A consequential response needs a permitted action or explicit ability; an Instinct can't rescue a trumped action, allow action while Taken Out or retroactively cancel a resolved effect.
- #strong[Truths and Conditions.] Creating a Truth or Situational Condition, or reducing a Condition, takes a permitted action or explicit exception (@core-actions-effects); changing a Truth means changing the fact (@core-changing-ending-truths); Weal and Woe spends grant no extra turn, free reassignment or retroactive cancellation. A Truth can set up a later scenery Maneuver but doesn't resolve it or its Danger (@core-scenery-maneuvers). A hazardous description doesn't grant both Disposition loss and a harmful status; explicit harm and area effects use their own procedures (@core-area-effects).
- #strong[Clocks and Disposition] are separate tracks. Don't convert loss, healing or clock segments between them without an explicit rule. Advance is available only to actions @core-actions-effects permits.
- #strong[Complications,] from outcomes, the Risk die or a GM Woe spend (@core-woe), stay within the stakes and timing. They don't change committed scripts or cancel independent actions unless an explicit rule permits it. Respond to them under @core-doubles. A comparison-based complication can't add Disposition loss or a harmful status without explicit permission (@core-costs-failures-complications).

==== Free, Immediate and Automatic Effects
Free removes only the stated resource cost. It grants no extra turn, rotation bypass or permission to act while Taken Out. A passive benefit or a benefit explicitly requiring no action can apply without consuming a scripted action.

An immediate effect resolves at its stated trigger. It interrupts another action only if explicitly permitted, and can't retroactively cancel resolved costs or effects.

An additional immediate action must specify its trigger, replacement of scripted actions, rotation treatment, use while Taken Out and interaction with independent actions.

Automatic success replaces the roll for an otherwise permitted action. It supplies no extra action, script change, rescue of a trumped action, expanded stakes or unsuitable approach. Pending Impede and Gain Position expire unused on it and don't transfer to a Risk or Resistance die.

On an independent test, apply the listed Power plus applicable Tag Power without rolling. Add no calculated margin, base-success point or matching-dice bonus. No action dice means no comparison-based complication, but independent consequences remain, including a permitted Risky action's separate Risk die unless a rule exempts it. The actor may buy Power with Effort after the award (@core-bonus-dice-effort).

In a versus test, one automatic success wins, neither side rolls action dice, and the winner uses its listed Power. The opponent generates no Power and receives no comparison-based benefit, complication or critical. If both sides succeed automatically, it's a neutral stalemate unless a specific rule says otherwise: neither generates Power or produces its normal effect, and paid costs stay spent (@core-outcomes).
// ART: A ring of torches marking the edge of a battlefield as two lines close in.
#art-fill(min: 6cm)[A ring of torches marking the edge of a battlefield as two lines close in.]
]
