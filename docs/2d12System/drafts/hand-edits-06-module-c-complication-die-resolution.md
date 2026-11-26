# Pending hand edits, batch 6: Module C (revised)

Branch: `feat/complication-die-resolution`. Continues `hand-edits-05-recovery-complication-die-resolution.md`. This revision replaces the earlier version of file 6: section 1b now uses the corrected pacing figures.

These edits are **not applied**. Check the blob SHA before editing; if it has changed, re-read the file. Terminology follows Core Rules 2.5 (`chapter-2.2-core-resolution.typ`).

No Typst build or rendered-page check has been done for any of these.

## 1. Module C

File: `docs/2d12System/chapter-3-module-c-truth-driven-sandbox.typ` (blob `a3d2f15`). Both edits are in C.5 Faction Turns and are approved. The rest of Module C and its include file `chapter-3-module-c.7-entanglements.typ` (blob `01eb6d7`, C.7 and C.8) have no stale outcome wording.

Ruling: C.5 mirrors Module E.10 (Option A). Faction rolls use the Complication die, setbacks are resolved narratively, and off-screen faction rolls gain or spend no Weal or Woe.

1a. C.5, step 2. A Success with Complication now generates full success Power, not Tag Power only. Find:

```
Resolve it with the core outcomes (Core Rules @core-outcomes). Each #strong[asset tag] that materially supports the project supplies #strong[+1 Power], maximum +2, and adds nothing to the roll; a Success at a Cost gives only that Tag Power.
```

Replace with:

```
Resolve it with the core outcomes (Core Rules @core-outcomes), using the Complication die. Each #strong[asset tag] that materially supports the project supplies #strong[+1 Power], maximum +2, and adds nothing to the roll. A Success with Complication or Failure with Complication gives a concrete setback appropriate to the action, resolved narratively; Woe buyoff, mitigation and Resistance don't apply off-screen.
```

1b. C.5 pacing guide (corrected). Expected turns for a +2 faction to fill a 12-segment clock, with overflow discarded and matching dice counted as Critical Success (+1 Power): 11.8, 8.1 and 6.3 turns with 0, 1 and 2 asset tags. This matches the +2 row of the E.1A pacing table (hand-edits file 8). An earlier draft divided 12 by average Power and ignored overflow, giving 11 / 7 / 6, which was too low. Find:

```
about 12 World Turns with no relevant asset tag, 7 with one and 5 with two.
```

Replace with:

```
about 12 World Turns with no relevant asset tag, 8 with one and 6 with two.
```

## Related

Module E.1A's pacing note and table are handled in `hand-edits-08-module-e1a-complication-die-resolution.md`.

## Not yet checked

- Module F, the character sheet, `chapter-2.3-character-creation.typ`, the design pillars and the epigraph.
- Branch-wide search for: miss by, Tag Power + 0, ordinary-failure Woe, doubles, Threat.
- Out of scope unless ruled otherwise: Testament of Dust setting files, `drafts/module-stakes-and-checks.typ`, `docs/playtest/engine_v2/resolution.py`, design and audit notes, CHANGELOG.
