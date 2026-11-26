# Pending hand edits, batch 4: Interlocutor

Branch: `feat/complication-die-resolution`. Continues `hand-edits-03-example-of-play-complication-die-resolution.md`.

These edits are **not applied**. Check the blob SHA before editing; if it has changed, re-read the file. Terminology follows Core Rules 2.5 (`chapter-2.2-core-resolution.typ`).

No Typst build or rendered-page check has been done for any of these.

## 1. Interlocutor

File: `docs/2d12System/chapter-5.6-interlocutor.typ` (blob `3c30152`). Furcifer (`chapter-5.4-furcifer.typ`, blob `7bf3952`) was also read and needs no edit. Interlocutor's other abilities need no edit.

Ruling (Option B): when Smooth Recovery converts a Critical Failure, the complication stays major. The converted result is a real success worth 1 Power, and that Power follows the normal success rules: it can fund a purchase or reduce the complication by one severity band, but not both. No wording is added for this, because it is the default rule.

1a. Smooth Recovery, tier 4, Benefit. Find:

```
whatever the margin. The complication follows the normal rules (Core Rules @core-doubles).
```

Replace with:

```
whatever the margin. The complication follows the normal rules (Core Rules @core-doubles); if the failure was a Critical Failure, the complication stays major.
```

The trigger and Limit text stay as they are. The trigger already covers any failed test, so a Critical Failure qualifies. After a Failure with Complication or Failure with a Benefit, the conversion replaces the result with one Success with Complication: the GM names one complication, with severity set by its fictional impact, and the player does not also take the original failure's complication.

## Not yet checked

- `chapter-2.6.5-recovery.typ` (emergency care and stabilisation lines).
- Modules C, D and F, the character sheet, `chapter-2.3-character-creation.typ`, the design pillars and the epigraph.
- Branch-wide search for: miss by, Tag Power + 0, ordinary-failure Woe, doubles, Threat.
- Out of scope unless ruled otherwise: Testament of Dust setting files, `drafts/module-stakes-and-checks.typ`, `docs/playtest/engine_v2/resolution.py`, design and audit notes, CHANGELOG.
