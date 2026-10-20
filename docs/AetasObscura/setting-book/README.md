# Aetas Obscura — Setting Book (2d12 System v2)

The setting book for **Aetas Obscura**, the Darkening Age (500 AD), written for **The 2d12 System, Version 2**, and typeset in the house style of the *Testament of Dust* setting book, recoloured in Byzantine violet and bronze.

- `aetas-obscura-v2-setting-book.typ` — the single-file Typst source.
- `aetas-obscura-v2-setting-book.pdf` — the compiled book (GM's edition).
- `aetas-obscura-v2-player-book.typ` / `.pdf` — the **Player's Book**: a player-facing edition with the Secret History and all GM material removed.

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
- reprints `Aetas-Obscura-Player-Primer.md` as the first appendix, lightly edited (its enforcers are no longer called "the Watchers", a cross-reference is added, and a table maps the Primer's folk names to the book's names).

Build it the same way, substituting `aetas-obscura-v2-player-book.typ`.

## Building

Each book is a single self-contained Typst file. It needs Typst 0.13 or later, the `@preview/droplet` package (Typst downloads it automatically), and two free OFL fonts:

- **EB Garamond** for body text;
- **Cinzel** for headings and display type.

```sh
cd docs/AetasObscura/setting-book
typst compile --font-path /path/to/fonts aetas-obscura-v2-setting-book.typ
typst compile --font-path /path/to/fonts aetas-obscura-v2-player-book.typ
```

If the fonts are missing, Typst falls back to Libertinus Serif.

## Style

Modelled on `docs/TestamentOfDust/testament-of-dust-v2-setting-book.typ`: parchment pages, Cinzel headings with bronze diamond rules, violet table headers with zebra rows, dark GM sidebars and running headers. Each part opens on a dark divider page with a black eclipsed sun over a ruined classical skyline (temple, aqueduct, domed church) and an "In this part" contents list. Chapters start on a new page.
