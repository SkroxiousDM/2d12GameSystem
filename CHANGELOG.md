# Changelog

All notable changes to the 2d12 Game System will be documented here.

Format loosely based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/). Dates are ISO 8601 (YYYY-MM-DD).

## [Unreleased]

### Added
- `LICENSE` — project is now released under Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0).
- `CONTRIBUTING.md` — contribution workflow, style conventions, and licensing notes.
- `CHANGELOG.md` — this file.
- Conditions Appendix: **Madness** row added to the Master List, and a clarifying note distinguishing Madness from Irrational.
- Core Glossary: definitions for 22 previously-blank terms (Concealment, Disguise, Leadership, Resolve resistance, War Magic, Power source, Truth, Fumble, NPC, Role, Culture, Background, Environment, Environmental trait, Morale, Concentration, Immobile, Desperate Action, Deadly, Armour, Evasion, Attack of Opportunity, Fear Check). Also added Action, Alacrity, Courage, Defence, and Madness entries that were referenced elsewhere but never glossed. Each entry now includes chapter cross-references.

### Changed
- Talents (Ch 6): renamed the second `Duellist` talent (defensive one-handed weapons) to **`Fencer`** to disambiguate from the existing `Duelist` (Advantage + critical-severity bonus). Sub-effects renamed accordingly to `Fencer Feint` and `Fencer Guard`. Mechanics unchanged.
- Core Glossary: retitled from "Core Glossary Draft" to "Core Glossary"; merged the "Terms left blank" table into the main alphabetical table; corrected the Attribute entry to use **Might (MIG)** per Ch 4 rather than the legacy "Strength" name.

### Fixed
- Stripped leftover `[file:N]` reference markers from an earlier doc-conversion process across the glossary.
- Stripped leftover `[1]`, `[2]`, `[3]` footnote markers from drafting passes across Ch 1, 4, 5, 7, 9, 10, 11, 12, 21, 22, the Burning-wheel module, and others.
- Fixed UTF-8 mojibake (`â€™` → `'`, `â€"` → em dash, etc.) in the Core Glossary.

## [0.1.0] — 2026-05-25

Initial public commit of the 2d12 Game System repository.

### Included
- Resolution Engine (Ch 1)
- Cultures, Backgrounds, and Roles (Ch 2, 2b)
- Magic core and four spellbooks: Runic, Oracular, Druidic, Ritualistic (Ch 3, 3.1, 3.2, 3.4, 3.9)
- Attributes (Ch 4)
- Skills (Ch 5)
- Talents (~148 entries) (Ch 6)
- Fate and Fortune (Ch 7)
- Resting and Recovery (Ch 8)
- Falling (Ch 9)
- Pursuit (Ch 10)
- Combat (Ch 11)
- Social Conflict (Ch 12)
- Connections, Reputation, Favors (Ch 13)
- Effects and Conditions (Ch 14)
- Equipment, Armour, Weapons, Adventuring Gear, Wealth & Trade (Ch 15, 15.1, 15.2, 15.3, 15.4)
- Sanity and Madness (Ch 16)
- Cults (Ch 17)
- Downtime (Ch 18)
- Exploration and Travel (Ch 19)
- GM Toolkit (Ch 20)
- Advancement (Ch 21)
- Investigation (Ch 22)
- Core Glossary (Ch 90)
- Conditions Cross-Reference Appendix (Ch 91)
- Derived Stats Reference (Ch 92)
- Critical Wound and Fumble tables (`docs/tables/`)
- Burning-Wheel-style conflict module (experimental, alternate variant)
