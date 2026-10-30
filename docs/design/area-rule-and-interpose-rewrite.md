# Area Rule and Interpose rewrites

Approved draft wording from the rules-audit discussion. The Area Rule remains provisional for playtesting. The rewrites are now integrated into current Typst sources on `rules-audit/area-rule-interpose`; this note remains the design record, not an additional rules source. Historical playtest rolls and outcomes remain unchanged.

## Area Rule

This draft replaces per-member Disposition wording and the earlier full-effect-on-one-target, tier-1-splash-on-the-others rule.

### Area Effects

An area effect affects everyone within its established area whom the effect can reach. Establish the area and affected participants before resolving it. An area effect does not automatically distinguish allies from enemies; selective targeting requires an explicit rule or circumstances that keep others outside its reach.

### Disposition loss in conflicts

When an area Attack or Feint applies its normal Disposition-loss effect:

1. Apply the committed Power + 1 to the opposing side's shared Disposition once.
2. Add 1 Disposition loss for each additional opposing participant affected beyond the first.

Do not assign Disposition loss to individual participants. There are no individual shares or spill-over.

For example, an area Attack commits 3 Power to Disposition loss and affects three opposing participants. It removes 6 shared Disposition: 3 Power + 1 for the normal Attack, +2 for the two additional participants.

Apply any eligible injury trade against the combined loss, following Core Rules §10.9. The area Attack remains one Attack: no more than one participant may accept an injury against it.

### Explicitly inflicted statuses

When an area effect explicitly inflicts a status, every affected character receives the full purchased or listed tier. Resolve each character's Resistance or NPC harm reduction separately, then stack the remaining status normally.

For example, an effect that inflicts burned-3 in an area inflicts burned-3 on every affected character—not tier 3 on one and tier 1 on the others.

An ordinary conflict Attack or Feint still inflicts no status merely because it is an area effect. Apply both Disposition loss and statuses only when an explicit rule grants both. Outside conflicts, resolve statuses normally; do not introduce Disposition loss.

### Playtest flags

- Test whether splash makes large groups lose shared Disposition too quickly.
- Test full-tier statuses against groups, including separate Resistance costs.
- Test abilities such as Unleash and NPC area Specials against this common procedure.

## Interpose — Bulwark Role Trait

Once per exchange in a conflict, when an ally would receive an imposed status that you can physically or otherwise fictionally intercept, you may take that status in their place. Outside conflicts, you may likewise intercept a fitting incoming status; this trait adds no separate frequency limit outside conflicts.

Declare Interpose before the original target rolls Resistance or applies any harm reduction.

- Redirect the entire incoming status to yourself. The original target receives none of that status.
- Resolve your own normal Resistance or NPC harm reduction against it, then stack what remains normally. Do not first apply the original target's Resistance, armour or other reduction.
- Ordinary NPCs remain limited to one reduction per imposed status application under Core Rules §10.13. Interpose itself redirects the status; it does not reduce its tier.
- Interpose does not redirect or reduce shared Disposition loss.
- You cannot Interpose against an accepted injury-trade payment, a running-dry status, an agreed concession cost or a compromise cost.
- You must be able to intercept the source of harm in the established fiction. You cannot protect an ally from an area effect that already affects both of you.

For example, a guardian with Interpose can step into a shock-baton strike that would inflict jolted-3 on an ally. The guardian receives jolted-3 and uses its own eligible reduction. It cannot intercept ordinary Disposition loss or shield that ally from a blast that already catches them both.

## Integration status

- Core Rules §§10.16–10.17 are in `docs/2d12System/chapter-2.10-area-and-interpose.typ`, included by `chapter-2-core-rules.typ` after the conflict system.
- Generic Adept Unleash (`docs/2d12System/chapter-5.8-adept.typ`) and Testament of Dust Occultist Unleash (`docs/TestamentOfDust/tod-playbooks-occultist.typ`) refer to the provisional Area Rule and distinguish shared Disposition loss from explicitly inflicted statuses.
- The current Adversaries chapter (`docs/2d12System/chapter-adversaries.typ`) replaces the obsolete Area Rule, Bulwark Disposition-transfer wording and main-target-only Heavy Hitter phrasing. The Quick Reference (`docs/2d12System/chapter-7-appendix-a-quick-reference.typ`) summarizes §§10.16–10.17.
- Source integration is recorded on this branch in commits `ee3978a` and `5434f07`. It does not establish that all other active sources have been swept or reconciled.
- Typst compilation, PDF rebuild, layout checks and playtest verification have not been performed for these changes. The Area Rule and its balance consequences remain provisional. The Phase 1 implementation tracker records outstanding work.
