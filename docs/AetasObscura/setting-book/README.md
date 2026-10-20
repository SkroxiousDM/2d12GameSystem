# Aetas Obscura — Setting Book (2d12 System v2)

The setting book for **Aetas Obscura**, the Darkening Age (500 AD), written for **The 2d12 System, Version 2**, and typeset with the **Mythographer 5e** Typst template.

- `aetas-obscura-v2-setting-book.typ` — the single-file Typst source.
- `aetas-obscura-v2-setting-book.pdf` — the compiled book (GM's edition).
- `aetas-obscura-v2-player-book.typ` / `.pdf` — the **Player's Book**: a player-facing edition with the Secret History and all GM material removed.
- `lib.typ`, `lib/`, `assets/` — a vendored copy of `Typst Templates/mythographer-5e-0.0.2`, so the book compiles on its own.

## Scope

Setting and rules only. It uses the core Descriptors, Playbooks and Focuses and adds no new Playbooks or Focuses.

- **Part I — The Darkening Age:** premise, the world in 500 AD, cosmology and the Secret History, the Concordat, the factions, magi of the age, places of power, timeline.
- **Part II — Rules of the Hidden World:** campaign Truths and dials, renamed skills, origins (culture and station) and allegiance, magic traditions and paths, the Seven Seals and the Breach clock, worship and Hieratica, Dread and Nemesion, the Veiled Sphere and Debts, the blood-drinkers, the Concordat's oaths, setting conflicts, scene Truths, Woe spends, opposition and a bestiary.
- **Appendices:** glossary, quick reference, design notes.

**Canon:** `aetas_obscura_setting_bible.md` and the faction files in `docs/AetasObscura`. `setting adjustments.md` was not used. The `docs/Archive/2d12 Version 1` drafts were used as inspiration and rebuilt for v2 (see Design Notes in the book).

## The Player's Book

The player edition presents the world as an informed character knows it, following `Aetas-Obscura-Player-Primer.md`. Compared with the setting book it:

- removes the Secret History, the Who Knows What table and every GM sidebar;
- rewrites the factions, magi, places and timeline as public knowledge and rumour (no Nephilim or Watchers, no masks such as Isis behind Mary, no hidden origins or plans);
- keeps the player rules, but drops the Breach clock table, the patron list and states, Woe spends, opposition and the bestiary;
- drops the setting dial for the Secret History and the design notes.

Build it the same way, substituting `aetas-obscura-v2-player-book.typ`.

## Building

Requires Typst 0.13+ and the template fonts (TeX Gyre Bonum, Gillius ADF No2), available from the Mythographer template's upstream repository (`sa1g/dnd-typst-template`, `fonts/`).

```sh
cd docs/AetasObscura/setting-book
typst compile --root . --font-path /path/to/fonts aetas-obscura-v2-setting-book.typ
```

The root must be this folder, because the template loads its paper texture from `/assets/paper/default.jpg`.

## Template changes in the vendored copy

- `lib/template.typ`: the footer's chapter number now restarts with each part, to match the chapter headings.
- `assets/paper/`: only `default.jpg` is included.
