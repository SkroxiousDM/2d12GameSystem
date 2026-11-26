# Pending hand edits, batch 9: Module F

Branch: `feat/complication-die-resolution`. Continues `hand-edits-08-module-e1a-complication-die-resolution.md`.

These edits are **not applied**. Check the blob SHA before editing; if it has changed, re-read the file. Terminology follows Core Rules 2.5 (`chapter-2.2-core-resolution.typ`). Module F uses Typst markup with `*bold*` and `--` for en dashes, so match that exactly.

No Typst build or rendered-page check has been done for any of these.

## 1. Module F

File: `docs/2d12System/chapter-3-module-f-inquiry-and-revelation.typ` (blob `9dfab3e`). All edits are approved in substance. F.1, F.3, F.6 and F.7 have no stale outcome wording.

Rulings:
- Probe outcomes use the core outcome table. No automatic Woe on failure.
- The case clock ticks when the group makes noise or takes a long time. A Probe's complication ticks it only when that complication costs time or makes noise.
- Lingering gives no Woe. The GM's Woe in Inquiry comes from bought-off complications.

1a. F.2, Probe row. Find:

```
The usual outcomes apply: a miss by 1--3 is a Success at a Cost, and a miss by 4+ is a Failure that gives the GM 1 Woe. A failed Probe never removes a core clue.
```

Replace with:

```
The core outcomes apply (Core Rules @core-outcomes): a Success with Complication applies its complication, and a Failure generates no Power and so no Insight. A failed Probe never removes a core clue.
```

1b. F.4, Tags. Find:

```
A relevant tag supplies 1 Power to a Probe on a Success or Success at a Cost, as usual;
```

Replace with:

```
A relevant tag supplies 1 Power to a Probe on any success, as usual;
```

1c. F.5, Woe pays for Reaction. Find:

```
When a Probe fails, or when the group lingers, the GM gains Woe as normal.
```

Replace with:

```
When a player buys off a Probe's complication, the GM gains Woe as normal.
```

1d. F.5, case clock bullet. Find:

```
Tick it when the group makes noise, takes a long time, or when a Probe fails by 4+.
```

Replace with:

```
Tick it when the group makes noise or takes a long time, including when a Probe's complication costs time or makes noise.
```

1e. F.5, paragraph after the bullets. Find:

```
Only a failed Probe ticks the case clock, not ordinary failed conflict actions.
```

Replace with:

```
Only noise and delay tick the case clock. A failed Probe does not tick it by itself, and neither do ordinary failed conflict actions.
```

1f. F.8, Quick Reference sidebar. Find:

```
*Case clock:* 6 segments; tick on noise, delay, or a Probe failed by 4+. \
```

Replace with:

```
*Case clock:* 6 segments; tick on noise or delay, including a Probe complication that costs time or makes noise. \
```

## Not yet checked

- The character sheet (`generic-character-sheet.typ`), `chapter-2.3-character-creation.typ`, `chapter-2.1-design-pillars.typ` and the core-rules epigraph.
- Branch-wide search for: miss by, Tag Power + 0, ordinary-failure Woe, doubles, Threat.
- Other places that quote the old 12 / 7 / 5 pacing, such as the E.13 Reed Quay example and any E.10 pacing guidance.
- Out of scope unless ruled otherwise: Testament of Dust setting files, `drafts/module-stakes-and-checks.typ`, `docs/playtest/engine_v2/resolution.py`, design and audit notes, CHANGELOG.
