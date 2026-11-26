# Pending hand edits, batch 5: Recovery chapter

Branch: `feat/complication-die-resolution`. Continues `hand-edits-04-interlocutor-complication-die-resolution.md`.

These edits are **not applied**. Check the blob SHA before editing; if it has changed, re-read the file. Terminology follows Core Rules 2.5 (`chapter-2.2-core-resolution.typ`).

No Typst build or rendered-page check has been done for any of these.

## 1. Recovery chapter

File: `docs/2d12System/chapter-2.6.5-recovery.typ` (blob `2a30721`). Covers 6.5 Rest and Recovery, 6.6 Treatment and Healing, 6.7 Dying and Stabilisation, and 6.8 Permanent Harm. The chapter has no "Success at a Cost" or "miss by" wording and no conflict with your rulings. The three edits below are terminology and wording polish, all approved.

Ruling: a Failure with a Benefit on an emergency-care roll gives the GM's useful fictional opening, which can matter for the next attempt. It does not make the next attempt numerically easier, matching the core (a failure benefit grants no numerical bonus).

1a. Emergency care (6.6). Use the defined outcome name. Find:

```
A success with a complication does the same and adds its complication (@core-doubles).
```

Replace with:

```
A Success with Complication does the same, and its complication applies (@core-doubles).
```

1b. Stabilising (6.7). Use the defined outcome name. Find:

```
#strong[Success with a complication:] stable, and the complication applies
```

Replace with:

```
#strong[Success with Complication:] stable, and the complication applies
```

1c. Emergency care failure line (6.6). Point to the core's failure outcomes. Find:

```
On a failure, the condition is still untreated; the GM announces any further consequence before another attempt.
```

Replace with:

```
On a failure, the condition is still untreated; resolve the failure outcome (@core-outcomes) and announce any complication before another attempt.
```

## Not yet checked

- Modules C, D and F, the character sheet, `chapter-2.3-character-creation.typ`, the design pillars and the epigraph.
- Branch-wide search for: miss by, Tag Power + 0, ordinary-failure Woe, doubles, Threat.
- Out of scope unless ruled otherwise: Testament of Dust setting files, `drafts/module-stakes-and-checks.typ`, `docs/playtest/engine_v2/resolution.py`, design and audit notes, CHANGELOG.
