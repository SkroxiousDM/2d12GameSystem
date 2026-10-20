# Contributing to the 2d12 System

This repository is the working source for **The 2d12 System** core rulebook and its settings. Errata, playtest reports, suggestions and pull requests are welcome.

Read the [README](README.md) first for the layout, the books and how to build them.

## Where Things Live

| You want to change | Edit this file |
|---|---|
| Core rules, Optional Modules, generic Descriptors, Playbooks or Focuses, the core Quick Reference | `docs/2d12System/the-2d12-system-v2-core-rulebook.typ` |
| Frontier rules, Descriptors, Playbooks or Focuses, the Frontier Quick Reference | `docs/TestamentOfDust/testament-of-dust-v2-setting-book.typ` |
| The character sheet | `docs/2d12-character-sheet-v2.typ` |
| Design reasoning, drafts, playtest reports | A new or existing file in `docs/design/` |
| Aetas Obscura or GRENDEL | Their Markdown files (`docs/Aetas Obscura/`, `GRENDEL_Consolidated_Master_Rulebook.md`) |

**Which book does a rule belong in?** If it works in any genre, it goes in the core rulebook. If it names Frontier things (vampires, dhampirs, the Bled, old-world works, Frontier skills), it goes in the setting book. The core rulebook mustn't refer to any specific setting. Talk about "setting rules" or "creature rank" in general terms instead.

**Don't edit** anything in `docs/Archive/` or the v0.2 Markdown drafts (`docs/2d12-system-proposal.md`, `docs/playbooks.md`, `docs/focuses.md`). They're kept for history only.

## Reporting an Issue

Open a GitHub Issue with:

- **Book, chapter and section**, e.g. `The 2d12 System, Core Rules §10.6` or `Testament of Dust, Frontier Rules §5.2`.
- **The text** that's a problem: quote the sentence or table row.
- **What's wrong**: a typo, contradiction, missing definition, broken cross-reference, unbalanced mechanic or unclear wording.
- **A suggested fix**, if you have one.

For balance concerns, describe the playtest: the characters, the opposition, what happened and what felt wrong.

## Submitting a Change

All changes reach `main` through a pull request. Direct pushes, force-pushes and deleting `main` aren't allowed. The ruleset is in [`branch-rulesets/PRs and commits.json`](branch-rulesets/PRs%20and%20commits.json).

1. **Branch** off an up-to-date `main` with a topic branch: `fix/core-10-6-feint-wording`, `feat/tod-new-focus`, `docs/readme`.
2. **Edit** the Typst source, not the PDF.
3. **Rebuild** the PDF for every book you changed (see [Building the PDFs](README.md#building-the-pdfs)) with the correct fonts installed. Check the affected pages for overflow, clipped text and broken tables. Commit the source and the PDF together.
4. **Update the CHANGELOG** (see below).
5. **Commit** using conventional commit messages (see below).
6. **Open a pull request** into `main`. Say what changed and why, list the sections you touched, and link the related Issue.
7. **Review.** A PR needs **two approving reviews**. Approval must come after the last push, and a new push dismisses earlier approvals.

Keep each PR to one topic. If a change touches both books, such as a core rule that the Frontier text also restates, update both books in the same PR.

### Commit messages

Every commit message must follow [Conventional Commits](https://www.conventionalcommits.org/):

```
<type>(<optional scope>)<optional !>: <description>
```

Allowed types: `build`, `chore`, `ci`, `docs`, `feat`, `fix`, `perf`, `refactor`, `revert`, `style`, `test`.

Use these scopes so the history stays readable:

| Scope | For |
|---|---|
| `core` | The 2d12 System core rulebook |
| `tod` | Testament of Dust setting book |
| `sheet` | Character sheet |
| `aetas` | Aetas Obscura |
| `grendel` | GRENDEL |
| `repo` | README, CONTRIBUTING, rulesets, structure |

How to choose a type for rules work:

- `feat`: a new rule, ability, Focus, Playbook or chapter.
- `fix`: errata, such as a typo, contradiction or broken cross-reference.
- `refactor`: a rewrite or renumbering that doesn't change how the game plays.
- `style`: layout, fonts, colours or art placement only.
- `docs`: repository documentation, design notes or playtest reports.
- `build`: regenerated PDFs on their own.

Add `!` for a change that breaks existing characters or cross-references, such as renumbered sections or a changed pool formula.

Examples:

```
feat(core): Attack and Feint remove committed Power + 1 Disposition
fix(tod): correct Hard to Kill reference to Frontier Rules §5.2
refactor(core)!: renumber Core Rules §10.3–10.14
docs(repo): rewrite README for the split books
```

### Changelog

Add an entry under `## [Unreleased]` in [`CHANGELOG.md`](CHANGELOG.md). Use a heading in the form `### Added|Changed|Fixed|Removed — Short title (YYYY-MM-DD)`. Name the book and sections, and say what changed. Put the newest entry at the top.

## Style Conventions

### Rules text

- **House names, always.** Use **Sōma, Akmē, Psychē, Pneuma** for the pools, plus **Tychē Points**, **Woe** and **Momentum**. Use the playbook names **Bellator, Furcifer, Savant, Interlocutor, Explorator, Adept**. Never use the working names (Vitality, Threat, Fate, Bruiser...) except in the terminology tables.
- **Cross-references** give a chapter name and section, not a chapter number: `Core Rules §6.3`, `Generic Focuses §9.2`, `Frontier Rules §5.2`. A bare `§6` means the same chapter. Chapter numbers differ between books, so never write "Chapter II".
- **Notation:** ★ Major (costs 1 Refresh), ◆ Capstone, ◈ Weird. Tags in italics (`#emph[marks on my throat]`), statuses with a tier (`#emph[wounded-2]`), Difficulty by name and target (`Standard 15`).
- **Tone:** rules are short and procedural. Flavour can be more literary, but it should still be brief and help at the table.
- **Canadian spelling** (the documents set `region: "CA"`): stabilise, armour, colour.

### Typst

- Each book is a single self-contained file. Use the existing helpers (`#chapter`, `#sidebar`, `#playbook-art-side`, `#figure(table(...))`) instead of formatting by hand.
- Set new chapters with `#chapter(title, blurb, epigraph: ...)` so they get a divider page and a table-of-contents entry.
- Use `--` and `---` for en and em dashes, as the existing source does.
- Art goes in the book's own `art/` folder. Commit both the `.png` original and the `.jpg` used in the book.

### When a change ripples

If a change renumbers sections or changes a term, search **both** books, the character sheet and the Frontier Markdown editions for every reference, and fix them in the same PR. Update the Quick Reference of any book whose summary has changed.

## Errata vs. Revisions

- **Errata** (typos, broken references, contradictions, undefined terms): open a PR directly.
- **Revisions** (rebalancing an ability, changing a procedure or formula, adding a chapter): open an Issue first to agree on the scope. Revisions usually need a design note in `docs/design/` or the book's Design Notes section, with what to watch for in playtest.

## Rights in Contributions

The material in this repository is **all rights reserved** (see the [README](README.md#license)). By opening a pull request, you confirm the contribution is your own work, and you grant SkroxiousDM the right to use, change and publish it as part of the 2d12 System and its settings.

## Conduct

Be decent to one another. Criticise the work, not the person. Disagreement is welcome; hostility isn't.

## Contact

Open an Issue for anything, including larger design discussions, so the conversation stays with the repository.
