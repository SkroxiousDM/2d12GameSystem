# Reinforcements, Disposition recovery and compromise references

Date: 2026-11-07. Branch: `draft/conflict-system-rewrite`.

Status: approved ruling integrated in active Core Rules §§10.9 and 10.13 by the accompanying source change. The conflicting reinforcement paragraph in `boss-phases-fixed-thresholds-draft.md` is reconciled; the remaining boss-phase proposal is not approved or implemented by this ruling.

## Decision

Record original adjusted starting Disposition at the end of setup after all modifiers and Superiority. It remains fixed for the conflict and is the normal recovery cap and compromise reference.

Reinforcements add their listed Grit to current shared Disposition only, even above the starting value. They do not raise starting Disposition, its recovery cap or the compromise denominator. Defend and other recovery restore only up to the original start unless an explicit rule says otherwise. At or above the cap, recovery restores nothing and does not remove an existing excess; permitted supplementary Defend purchases remain available.

Removal subtracts no Grit and changes none of these references. Arrival grants no extra scripted action, actor reassignment or setup recalculation. Only a genuinely new conflict establishes a new starting value; changing location, tactics or type in the same unresolved struggle does not.

For compromise, remaining Disposition at or above the original start counts as no starting Disposition lost. Use the final remaining total, not cumulative losses or a separate reinforcement ledger. Setup outcomes at 0 follow Core Rules §10.3 with no winner's compromise calculation.

## Boss-phase boundary

The proposed fixed phase reference and Half/Desperate thresholds do not change when recovery or reinforcements alter current Disposition. This resolves reinforcement accounting only. Phase benefits, Special availability, the Desperate Defend/Best-action overlap and other phase integration questions remain separate decisions.

## Example

A side starts at 10, falls to 8, then receives 5 Grit of reinforcements: current Disposition becomes 13; starting value and normal recovery cap remain 10. Recovery cannot add Disposition while current is 13, but does not remove the excess. Later, at 7, ordinary recovery may reach 10, not 15. Winning at 6 means 4 of the original 10 lost: Minor compromise. If the separate phase proposal is adopted, its thresholds remain 5 and 3 throughout.

## Implementation and follow-up

The active clarification is in `docs/2d12System/chapter-2.10-conflict-system-aftermath.typ`. It retains the original-cap policy already stated in Adversaries §6.5; this commit does not rewrite that chapter or implement Boss Phases. The simultaneous-setup-defeat text in the aftermath source is preserved.

Quick Reference, Adversaries cross-reference/wording checks, shared guidance, ledger/tracker and root changelog follow-up remain separate work. No full reference sweep, compilation, PDF rebuild, rendered-layout check, playtest or numerical-balance validation is claimed.
