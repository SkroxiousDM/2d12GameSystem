# The 2d12 System

The **2d12 System** is a setting-neutral tabletop roleplaying engine. Every action is one roll:

> **2d12 + Skill + Modifiers vs. Difficulty**

That one roll tells you whether you succeed, how much **Power** you earn and whether doubles twist the result. Around it sit four pools that double as stress (**Sōma, Akmē, Psychē, Pneuma**), tags and Truths, **Tychē Points**, a shared **Momentum** pool and the GM's **Woe**, plus scripted conflicts. Characters are built from a sentence: *"I am a [Descriptor] [Playbook] who [Focus]."*

The system draws on Fate, the Cypher System, :Otherscape, Mouse Guard, Blades in the Dark and the 2d20 System. All trademarks belong to their owners.

**Status:** Version 2, playtest draft.

## The Books

The rules come as separate books. The core rulebook is the complete engine. Each setting book adds a world and needs the core rulebook to play.

| Book | What it contains | Source | PDF |
|---|---|---|---|
| **The 2d12 System** (core rulebook) | Core Rules, Optional Modules (Cyphers & Artifacts, The Grind & Travel, Truth-Driven Sandbox), Generic Descriptors, Playbooks and Focuses, Quick Reference | [`.typ`](docs/2d12System/the-2d12-system-v2-core-rulebook.typ) | [PDF](docs/2d12System/the-2d12-system-v2-core-rulebook.pdf) |
| **Testament of Dust** (setting book) | Post-apocalyptic frontier gothic: Frontier Rules, Frontier Descriptors, Playbooks and Focuses, Frontier Quick Reference | [`.typ`](docs/TestamentOfDust/testament-of-dust-v2-setting-book.typ) | [PDF](docs/TestamentOfDust/testament-of-dust-v2-setting-book.pdf) |
| **Character sheet** | Generic core sheet (2 pages) and a Frontier insert (1 page) | [`.typ`](docs/2d12-character-sheet-v2.typ) | [PDF](docs/2d12-character-sheet-v2.pdf) |

### Settings in development

These aren't converted to Version 2 yet:

- **Aetas Obscura**: late-antique cosmic horror around 500 AD. Setting bible, factions and adventure hooks are in [`docs/Aetas Obscura/`](docs/Aetas%20Obscura/).
- **GRENDEL**: apocalyptic adventures in a fantasy Iron Age. An editorial consolidation is in [`GRENDEL_Consolidated_Master_Rulebook.md`](GRENDEL_Consolidated_Master_Rulebook.md).

## Repository Layout

```
.
├── README.md
├── CONTRIBUTING.md
├── CHANGELOG.md
├── GRENDEL_Consolidated_Master_Rulebook.md   GRENDEL setting (in development)
├── Typst Templates/                          Third-party Typst templates (own licenses)
├── branch-rulesets/                          GitHub ruleset for main (PRs, conventional commits)
└── docs/
    ├── 2d12System/                           Core rulebook
    │   ├── the-2d12-system-v2-core-rulebook.typ   Source of truth
    │   ├── the-2d12-system-v2-core-rulebook.pdf
    │   └── art/playbooks/generic/            Generic playbook art
    ├── TestamentOfDust/                      Testament of Dust setting book
    │   ├── testament-of-dust-v2-setting-book.typ  Source of truth
    │   ├── testament-of-dust-v2-setting-book.pdf
    │   ├── testament-of-dust-*.md            Markdown editions of the Frontier chapters
    │   └── art/playbooks/                    Frontier playbook art
    ├── Aetas Obscura/                        Aetas Obscura setting (in development)
    ├── design/                               Design documents, playtest reports, rule drafts
    ├── 2d12-character-sheet-v2.typ / .pdf    Character sheet
    ├── 2d12-system-proposal.md               Original v0.2 design proposal
    ├── playbooks.md, focuses.md              v0.2 Markdown drafts of the generic chapters
    └── Archive/
        ├── 2d12 Version 1/                   The retired Version 1 rules
        └── TestamentOfDust-master-v2/        The combined master rulebook from before the split
```

The **Typst files are the source of truth**. The Markdown files in `docs/TestamentOfDust/` are editions of the Frontier chapters for reading on GitHub. The v0.2 Markdown in `docs/` and everything in `docs/Archive/` is kept for history and isn't maintained.

## Reading Order

1. **The 2d12 System, Chapter II, Core Rules.** Start with §2 Core Resolution, §3 Character Creation and §10 Conflict System.
2. **Chapters IV to VI**, the generic Descriptors, Playbooks and Focuses, to build a character.
3. **Chapter III, Optional Modules**, when you want longer campaigns.
4. **A setting book**, such as Testament of Dust, for a specific world. Setting rules win where they conflict with the core rules.

Cross-references give a chapter name and section: *Core Rules §6.3* means section 6.3 of the Core Rules chapter in *The 2d12 System*. Setting books use the same names when they point back to the core rulebook.

## Building the PDFs

The books are single-file [Typst](https://typst.app) documents. Compile each one from its own folder so the relative art paths resolve:

```sh
cd docs/2d12System
typst compile the-2d12-system-v2-core-rulebook.typ

cd ../TestamentOfDust
typst compile testament-of-dust-v2-setting-book.typ
```

Fonts are free from Google Fonts (OFL). Install them or pass `--font-path`:

| Book | Body | Headings |
|---|---|---|
| The 2d12 System | EB Garamond | Source Sans 3 |
| Testament of Dust | EB Garamond | Cinzel |

Symbols (★ ◆ ◈ →) use DejaVu Sans. Missing fonts fall back to Libertinus Serif, which changes the layout, so install the real fonts before committing a PDF.

## Contributing

Contributions go through pull requests into `main`, using conventional commit messages. See [`CONTRIBUTING.md`](CONTRIBUTING.md) for the workflow and style rules, and [`CHANGELOG.md`](CHANGELOG.md) for the change history.

## License

Copyright © 2026 SkroxiousDM. **All rights reserved.**

The 2d12 System, Testament of Dust, Aetas Obscura, GRENDEL and all text and art in this repository aren't licensed for reuse or redistribution yet. You may read them and use them in your own games at home. For anything else, including publishing, adapting or commercial use, ask first. The third-party templates in `Typst Templates/` keep their own licenses.
