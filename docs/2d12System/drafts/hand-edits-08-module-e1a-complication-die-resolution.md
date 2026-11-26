# Pending hand edits, batch 8: Module E.1A

Branch: `feat/complication-die-resolution`. Continues `hand-edits-07-module-d-complication-die-resolution.md`.

These edits are **not applied**. Check the blob SHA before editing; if it has changed, re-read the file. Terminology follows Core Rules 2.5 (`chapter-2.2-core-resolution.typ`).

No Typst build or rendered-page check has been done for any of these.

## 1. Module E.1A

File: `docs/2d12System/chapter-3-module-e.1a-starting-cluster.typ` (blob `c12696f`). Both edits are approved. Only the Pacing note and table are stale; steps 1 to 9 are consistent with E.10 (step 9 already says off-screen actions use no Weal, pools, Tychē or Woe).

Method: 2d12 + Quality against Standard 15. A total below 15 fails with no Power. A success gives 1 Power, plus 1 per full 3 over 15, plus Tag Power (1 per relevant asset tag, maximum 2). Matching dice add 1 Power (Critical Success, counted in this table; the old table excluded doubles). Turns are expected values with overflow discarded. The method reproduces the old table's no-tag column (for example +2: 12.2 turns without Critical Success).

1a. Pacing note. Find:

```
Success at a Cost gives only Tag Power; doubles and opposition aren't counted.
```

Replace with:

```
Any total below 15 fails and generates no Power; matching dice add 1 Power (Critical Success); opposition isn't counted.
```

1b. Pacing table. Replace the five Quality rows (keep the header row) with:

```
  [0], [0.69 / 1.07 / 1.45], [18 / 12 / 9], [24 / 16 / 12],
  [+1], [0.88 / 1.33 / 1.79], [15 / 10 / 8], [19 / 13 / 10],
  [+2], [1.08 / 1.62 / 2.17], [12 / 8 / 6], [15 / 11 / 8],
  [+3], [1.32 / 1.94 / 2.56], [10 / 7 / 5], [13 / 9 / 7],
  [+4], [1.57 / 2.26 / 2.94], [8 / 6 / 5], [11 / 8 / 6],
```

The closing sentence ("one relevant asset tag paces close to the old 8-segment clocks; two tags finish a turn or two sooner") still holds: at +2, one tag fills 12 segments in about 8 turns and two in about 6. Leave it unchanged.

## Not yet checked

- Module F, the character sheet, `chapter-2.3-character-creation.typ`, the design pillars and the epigraph.
- Branch-wide search for: miss by, Tag Power + 0, ordinary-failure Woe, doubles, Threat.
- Other places that quote the old 12 / 7 / 5 pacing, such as the E.13 Reed Quay example and any E.10 pacing guidance. Search for "World Turns" and "Turns:".
- Out of scope unless ruled otherwise: Testament of Dust setting files, `drafts/module-stakes-and-checks.typ`, `docs/playtest/engine_v2/resolution.py`, design and audit notes, CHANGELOG.
