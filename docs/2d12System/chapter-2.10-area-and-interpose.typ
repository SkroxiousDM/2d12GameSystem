#import "common.typ": *

#columns(2, gutter: 6mm)[
=== 10.17 Area Effects
#strong[Provisional for playtesting.]
// Replaces earlier per-member Disposition wording and the full-effect-plus-tier-1-splash rule.

An area effect affects everyone within its established area whom the effect can reach. Establish the area and affected participants before resolving it. An area effect does not automatically distinguish allies from enemies; selective targeting requires an explicit rule or circumstances that keep others outside its reach.

#strong[Disposition loss in conflicts.] When an area Attack or Feint applies its normal Disposition-loss effect:
+ Apply the committed Power + 1 to the opposing side's shared Disposition once.
+ Add 1 Disposition loss for each additional opposing participant affected beyond the first.

Loss goes to the shared total, never to individuals. A group with one rules entry counts as one participant (§10.9).

#emph[Example:] an area Attack commits 3 Power to Disposition loss and affects three opposing participants. It removes 6 shared Disposition: 3 Power + 1 for the normal Attack, +2 for the two additional participants.

Apply any eligible injury trade against the combined loss (§10.11). The area Attack remains one Attack: no more than one participant may accept an injury against it.

#strong[Explicitly inflicted statuses.] When an area effect explicitly inflicts a status, every affected character receives the full purchased or listed tier. Resolve each character's Resistance or NPC harm reduction separately, then stack the remaining status normally.

#emph[Example:] an effect that inflicts #emph[burned-3] in an area inflicts #emph[burned-3] on every affected character, not tier 3 on one and tier 1 on the others.

An ordinary conflict Attack or Feint inflicts no status just because it covers an area; it inflicts both loss and statuses only if an explicit rule says so. Outside conflicts, area effects inflict statuses normally and no Disposition loss. Offensive bonuses apply to their stated component (§10.6).

// PLAYTEST: does splash drain shared Disposition too fast against large groups? Test full-tier statuses against groups (separate Resistance costs), and Unleash and NPC area Specials against this procedure.

=== 10.18 Interpose
#strong[Bulwark Role Trait.] Once per exchange in a conflict, when an ally would receive an imposed status that you can physically or otherwise fictionally intercept, you may take that status in their place. Outside conflicts, you can intercept a fitting status with no frequency limit.

Declare Interpose before the original target rolls Resistance or applies any harm reduction.

- Redirect the entire incoming status to yourself. The original target receives none of that status.
- Resolve your own normal Resistance or NPC harm reduction against it, then stack what remains normally. Do not first apply the original target's Resistance, armour or other reduction.
- Interpose redirects; it doesn't reduce the tier. Ordinary NPCs still get only one reduction per status (§10.14).
- It can't redirect shared Disposition loss or any protected payment (§10.7).
- You must be able to intercept the source of harm in the established fiction. You cannot protect an ally from an area effect that already affects both of you.

#emph[Example:] a guardian with Interpose can step into a shock-baton strike that would inflict #emph[jolted-3] on an ally. The guardian receives #emph[jolted-3] and uses its own eligible reduction. It cannot intercept ordinary Disposition loss or shield that ally from a blast that already catches them both.
]
