# Core cover: pentagon colour contrast

## Scope

- Core rulebook cover only (`docs/2d12System/the-2d12-system-v2-core-rulebook.typ`, cover block).
- Out of scope: Testament of Dust cover, chapter-divider pentagons, `common.typ`, PDFs.

## Change

| Item | Before | After |
|---|---|---|
| Left pentagon fill | `blood` (`#2d4a66`) | `blood` (unchanged) |
| Right pentagon fill | `ember` (`#3f6a8f`) | `rgb("#5183ad")` |

Option A: the hex value sits on the cover; no new palette entry in `common.typ`.

## Contrast (hand estimates)

- Between the two fills: about 1.6 : 1 before, about 2.3 : 1 after.
- `moon` numerals on the right fill: about 5.2 : 1 before, about 3.5 : 1 after. The numerals are large display text.

## Impact

No intentional mechanical changes. Layout and colour only.

## Checks

- Not performed: Typst build, PDF render, visual check of the cover.
- Not changed: PDFs (CI rebuilds them on `main`).
- Not done: CHANGELOG entry (to be added separately).

## Open item

The author wants to see the built cover before opening a pull request.
