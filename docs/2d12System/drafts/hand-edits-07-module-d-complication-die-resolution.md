# Pending hand edits, batch 7: Module D

Branch: `feat/complication-die-resolution`. Continues `hand-edits-06-module-c-complication-die-resolution.md`.

These edits are **not applied**. Check the blob SHA before editing; if it has changed, re-read the file. Terminology follows Core Rules 2.5 (`chapter-2.2-core-resolution.typ`).

No Typst build or rendered-page check has been done for any of these.

## 1. Module D

File: `docs/2d12System/chapter-3-module-d-downtime.typ` (blob `6af9561`). Both edits are approved. D.3, D.5 to D.8 and the D.8 example have no stale outcome wording. Stay Woe already pays for complications (D.2), so GM-bought complications in downtime need no change.

1a. D.4, Uncertain endeavours. A Success with Complication now triggers a complication, and failure generates no automatic Woe. Find:

```
#strong[Success at a Cost:] the GM adds a consequence, or the stay pool gains 1 Woe (player's choice, Core Rules @core-outcomes). #strong[Failure:] the effort doesn't take, the stay pool gains 1 Woe, and the GM announces any consequence before another attempt.
```

Replace with:

```
#strong[Success with Complication:] a complication from the named danger applies (Core Rules @core-doubles); any Woe paid to buy it off joins the stay pool. #strong[Failure:] the effort doesn't take and generates no Woe. Resolve the failure outcome (Core Rules @core-outcomes) and announce any complication before another attempt.
```

1b. D.2, Stay Woe. The main source of downtime Woe is now complication buyoffs. Find:

```
Woe gained from downtime rolls joins this pool
```

Replace with:

```
Woe gained in downtime, such as complication buyoffs, joins this pool
```

## Not yet checked

- Module F, Module E.1A (read; edits drafted but not yet approved), the character sheet, `chapter-2.3-character-creation.typ`, the design pillars and the epigraph.
- Branch-wide search for: miss by, Tag Power + 0, ordinary-failure Woe, doubles, Threat.
- Out of scope unless ruled otherwise: Testament of Dust setting files, `drafts/module-stakes-and-checks.typ`, `docs/playtest/engine_v2/resolution.py`, design and audit notes, CHANGELOG.
