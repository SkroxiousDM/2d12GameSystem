# Pending hand edits, batch 11: Chapter 2.3 character creation

Branch: `feat/complication-die-resolution`. Continues `hand-edits-10-character-sheet-complication-die-resolution.md`.

These edits are **not applied**. Check the blob SHA before editing; if it has changed, re-read the file. Terminology follows Core Rules 2.5 and 2.6 (`chapter-2.2-core-resolution.typ`).

No Typst build or rendered-page check has been done for any of these.

## 1. Chapter 2.3

File: `docs/2d12System/chapter-2.3-character-creation.typ` (blob `ee763f9`). Both edits are approved. The creation steps, sentence, pools and Edge, skill pyramid, Specialisations, Knowledge Skills, Beliefs, Goals and Instincts need no outcome edits.

1a. 3.4 Tags, "When it helps". Find:

```
it supplies #strong[+1 Power] on a Success or Success at a Cost, #strong[max +2 per action] (@core-outcomes).
```

Replace with:

```
it supplies #strong[+1 Power] on any success, #strong[max +2 per action] (@core-outcomes).
```

1b. 3.6, Using contacts. The cost is now the complication on a Success with Complication; buyoff, mitigation and Resistance follow Core Rules 2.6. Find:

```
On a Success at a Cost, you get the introduction, shelter or supplies, but owe a favour or expose the relationship.
```

Replace with:

```
On a Success with Complication, you get the introduction, shelter or supplies, and the complication can be that you owe a favour or expose the relationship.
```

Note: the `PLAYTEST` comment under Specialisations mentions "whether it changes the kept pair". It is only a tracking note, but the retained pair now always includes the Complication die. Left unchanged.

## Not yet checked

- `chapter-2.1-design-pillars.typ` and the core-rules epigraph.
- Tychē chapter check of the character sheet's "+2 after rolling" Invoke option.
- Branch-wide search for: miss by, Tag Power + 0, ordinary-failure Woe, doubles, Threat.
- Other places that quote the old 12 / 7 / 5 pacing, such as the E.13 Reed Quay example and any E.10 pacing guidance.
- Housekeeping deferred: character sheet layout and footer date.
- Out of scope unless ruled otherwise: Testament of Dust setting files, `drafts/module-stakes-and-checks.typ`, `docs/playtest/engine_v2/resolution.py`, design and audit notes, CHANGELOG.
