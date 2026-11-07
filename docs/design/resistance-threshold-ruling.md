# Resistance thresholds and Negative Edge

Date: 2026-11-07. Branch: `draft/conflict-system-rewrite`.

Status: approved shared ruling integrated in active Core Rules §6 by the accompanying source change. Individual-entry wording and broader summary/status reconciliation remain pending. This design note is not an included rulebook source and makes no build or playtest claim.

## Decision

Threshold abilities use the Resistance result read by the normal procedure:

- Edge 0 or higher: highest die.
- Edge −1: the single die.
- Edge −2 or lower: lowest die.

For these abilities, existing wording such as "on a highest die of 5+" means "when the Resistance result is 5+." Do not inspect a different die. Any intentional different-die exception must expressly override the normal Resistance result.

Meeting a threshold grants only the listed benefit, not extra dice, changed Edge, another die selection or permission to Resist an excluded consequence. A zero-cost threshold governs cost only unless the entry also makes its effect conditional. A separately listed reduction of 3 tiers applies whenever the ability is legally used, even when the zero-cost threshold is missed.

The special double-12 procedure is unchanged. When reading the lowest die, every die must show 12 to qualify; a single die cannot qualify. An ability's zero cost alone grants no double-12 clearing benefit. A zero final cost never runs the pool dry; protected-payment restrictions still apply.

## Examples

| Edge | Dice | Resistance result | Meets 5+ threshold? |
|---|---|---|---|
| 0 | 3, 8 | 8, highest | Yes |
| −1 | 4 | 4 | No |
| −2 | 3, 10 | 3, lowest | No |
| −3 | 5, 9, 12 | 5, lowest | Yes |
| −2 | 12, 12 | 12, lowest | Yes; special double-12 result also applies |

## Entry wording and implementation boundaries

Standard wording: "The cost is 0 when the Resistance result is 5+."

For an independently improved reduction: "When you Resist [listed consequences] with [pool], reduce the incoming status by 3 tiers instead of 2. The cost is 0 when the Resistance result is 5+."

The shared procedure is implemented in `docs/2d12System/chapter-2.6-resistance-harm-and-recovery.typ`. This commit does not rewrite individual entries such as Escape Artist, Trap Sense or Unshakeable. Sweep affected generic and setting entries explicitly, preserving each one's existing scope, threshold, reduction, frequency and exclusions. Do not infer a blanket numerical upgrade or new protected-payment exception from this template.

Reconcile Quick Reference, shared guidance, audit/ledger/tracker notes and the root changelog separately. Preserve dated inspection findings while recording this ruling as superseding the former shared ambiguity. Compilation, PDF rebuild, layout checks and playtesting remain pending.
