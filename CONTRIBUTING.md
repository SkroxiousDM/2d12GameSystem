# Contributing to the 2d12 Game System

Thanks for your interest. This repo is the primary working source for the 2d12 Game System — an open-development tabletop RPG. Contributions, suggestions, errata, and discussion are welcome.

## How to contribute

### Reporting an issue

If you spot something wrong, ambiguous, or contradictory, please open a GitHub Issue with:

- **The chapter and section** (e.g. `Ch 11 — Combat, "Action Economy"`).
- **The specific text** that's a problem (a sentence or paragraph).
- **What's wrong** — typo, rules contradiction, missing definition, broken cross-reference, unbalanced mechanic, unclear wording.
- **Suggested fix**, if you have one. Optional but appreciated.

For rules-balance concerns, include the playtest situation that surfaced the issue (system mastery level of the players, level of opposition, what happened, what felt wrong).

### Submitting a change

1. Fork the repo and create a topic branch off `main` (e.g. `fix/glossary-armour-entry`, `feat/disease-subsystem`, `errata/ch11-charge-clarification`).
2. Make your edits to the relevant markdown file(s) under `docs/`.
3. Keep the diff focused — one issue or feature per PR. Large multi-topic PRs are hard to review.
4. Open a Pull Request with a clear description of *what* changed and *why*. Reference the related Issue if there is one.

### Style conventions

- **Markdown.** All rules text lives in plain markdown. Use `##`/`###` headers; use tables sparingly and only when the structure actually warrants it.
- **Chapter numbering.** Files are numbered to match reading order (`01-resolution-engine.md`, `11-combat.md`, etc.). Sub-chapters use a dot suffix (`15.1-armour.md`, `03.2-oracular-spellbook.md`). Appendices live in the 90s.
- **Cross-references.** When you reference another chapter in body text, link the file: `[Ch 11 — Combat](11-combat.md)`. Don't cite by chapter name alone.
- **Attribute names.** Use the canonical six-letter codes from Ch 4: **MIG, CON, DEX, AGI, REA, INS, CHA, WIL**. Don't use legacy names like "Strength."
- **Tone.** Rules-facing prose is concise and procedural. Flavor and worldbuilding may be more literary, but should still be brief and serve play.
- **Smart quotes.** Use `'` and `"` (ASCII) in source. Avoid Unicode smart-quote characters — they have historically introduced mojibake on this repo.
- **Markdown hard breaks.** Preserve trailing-double-space hard breaks inside bullets/tables where they exist; they're load-bearing for some renderers.

### What needs work

See [`docs/99_gap_analysis.md`](docs/99_gap_analysis.md) for the current list of known gaps and priorities. Quick wins, edits to existing chapters, and worked examples are especially welcome.

If you want to write a larger new chapter (e.g. a disease subsystem, a bestiary, a sample adventure), please open an Issue first to align on scope and reading-order placement.

### Errata vs. revision

Two kinds of changes typically land:

- **Errata** — fixing typos, broken cross-references, contradictions, undefined terms. Land freely.
- **Revisions** — rebalancing a talent, rewriting a procedure, changing a derived-stat formula. Discuss in an Issue first, since these can ripple through other chapters.

If your change affects more than one chapter, please update *all* affected chapters in the same PR, plus the glossary (`docs/90-core-glossary.md`) and conditions appendix (`docs/91-conditions-appendix.md`) if relevant.

## Adding a new chapter

When you add a new chapter:

1. Number it according to its place in the reading order.
2. Add it to [`docs/00-document-map.md`](docs/00-document-map.md).
3. Update the gap analysis in [`docs/99_gap_analysis.md`](docs/99_gap_analysis.md) if it closes a known gap.
4. Add an entry to [`CHANGELOG.md`](CHANGELOG.md) under `## Unreleased`.
5. If you introduce new game terms, add them to [`docs/90-core-glossary.md`](docs/90-core-glossary.md); if you introduce new conditions, add them to [`docs/91-conditions-appendix.md`](docs/91-conditions-appendix.md).

## Licensing

By submitting a Pull Request, you agree that your contribution will be licensed under the same terms as the rest of the project: **Creative Commons Attribution-ShareAlike 4.0 International** (see [`LICENSE`](LICENSE)).

In short: anyone can share and adapt the material, including commercially, as long as they credit the project and license their derivative under the same terms.

## Code of conduct

Be decent to one another. Focus criticism on the work, not the contributor. The project is open to all backgrounds, experience levels, and game-design philosophies; productive disagreement is welcome, hostility is not.

## Contact

Open an Issue for anything. For larger design discussions, an Issue is also the right venue — keep the conversation in the open so other contributors can follow along and the history stays with the repo.
