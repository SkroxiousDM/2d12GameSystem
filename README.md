# 2d12 Game System

This repository contains the core rules, subsystem chapters, and support documents for the **2d12 Game System** — a d12-based tabletop RPG built around attribute-plus-skill action rolls, paired-die complication mechanics, and momentum-driven Combat and Social Conflict.

## Repository Layout

```
docs/
├── 01–17  Core rules and subsystem chapters
├── 18–22  Downtime, Exploration, GM Toolkit, Advancement, Investigation
├── 90     Core glossary
├── 91     Conditions cross-reference appendix
├── 92     Derived-stats reference sheet
├── 99     Gap analysis and development planning
├── tables/    Critical wound and fumble tables
└── 00-document-map.md   Full file index and reading order
```

## Reading Order

Start with the [document map](docs/00-document-map.md), then read in numerical order. The recommended first-pass reading order for new GMs is:

1. **Resolution Engine** (01) — how the dice work.
2. **Attributes** (04) — what the numbers mean.
3. **Skills** (05) and **Talents** (06) — what characters can do.
4. **Combat** (11) and **Social Conflict** (12) — the two pillar subsystems.
5. **Resting and Recovery** (08) and **Downtime** (18) — the loop between adventures.
6. **GM Toolkit** (20) — when you are ready to build your own scenes.

## Support Files

- [`docs/00-document-map.md`](docs/00-document-map.md) — Source-to-filename mapping for the whole repository.
- [`docs/90-core-glossary.md`](docs/90-core-glossary.md) — Working glossary appendix.
- [`docs/91-conditions-appendix.md`](docs/91-conditions-appendix.md) — Master cross-reference of every named condition.
- [`docs/92-derived-stats-reference.md`](docs/92-derived-stats-reference.md) — One-page derived-stats and resource sheet.
- [`docs/99_gap_analysis.md`](docs/99_gap_analysis.md) — Current development planning and coverage review.

## Contributing

This repository is the primary working source for the system. Edits are made to chapter markdown files directly; large new sections are drafted in their own files and then linked from the document map.

See [`CONTRIBUTING.md`](CONTRIBUTING.md) for the full contribution workflow, style conventions, and licensing notes. See [`CHANGELOG.md`](CHANGELOG.md) for the change history.

When you add a new chapter:

1. Number it according to its place in the reading order.
2. Add it to `docs/00-document-map.md`.
3. Update the gap analysis in `docs/99_gap_analysis.md` if it closes a known gap.
4. Add an entry to [`CHANGELOG.md`](CHANGELOG.md) under `## Unreleased`.

## License

Released under [Creative Commons Attribution-ShareAlike 4.0 International](LICENSE) (CC BY-SA 4.0). You may share and adapt the material, including commercially, as long as you credit the project and license your derivative work under the same terms.
