# Changelog

All notable changes to the 2d12 Game System will be documented here.

Format loosely based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/). Dates are ISO 8601 (YYYY-MM-DD).

## [Unreleased]

### Changed — Hollow Frontier setting lore (2026-10-16)
- **Frontier Rules (Ch. VII) rewritten** to the Hollow Frontier canon (design doc Appendix B). Vampires are living, blood-dependent people rather than "Nobles": new Threat Ranks (Minor / Established / Great / Paramount), **Hard to Kill** (recovery needs blood), a weekly **Blood Debt** clock and **husks**; **the Bled** (plain blood loss, tiers 1-6) replaces the Kiss; day no longer switches vampires off (Sunlight Syndrome now covers vampires and dhampirs); **killing methods** (beheading, sustained fire) replace banes, with stakes inflicting *staked* and silver blocking recovery; folk remedies work only on vampires who *believe the old stories*; Old-World Works replace Noble science; contracts gain Commissions; Woe spends revised (Presence, Summon the Household, The Old Door, Blood Reserve). The Vampire Hunter D era text (12,090 AD, D himself) is removed from this chapter.
- **Dhampir Focus reworked** (Appendix A): *Carries the Blood of the Nobility* becomes **Carries Her Mother's Blood** (Mother's Blood, Dhampir Regeneration, Read the Blood, Mother's Key, Awaken the Blood; optional *Knows How They Die*; new Known/Unknown mother table options). The Thirst now drops with a cup of human blood and clears with half a litre; tier 6 is a **Blood Crisis** choice.
- Dependent entries revised: *Was Kissed and Lived* becomes **Was Kept and Got Out**; *Heals the Kissed* becomes **Heals the Bled**; *Hunts the Nobility* becomes **Hunts the Kept**; *Seeks Revenge on a Noble*, *Bears a Noble Relic*, *Plunders the Castles of the Night* and *Once Served the Nobility* renamed; *Keeps the Old Faith* rebuilt around believers and silvered water; Frontier Doctor *Treat the Bled* and capstone **The Blood Bank**; stake and mirror gear, Bodyguard, Ward Against the Night, Toxic Blood, Little Blood Left, Warden wards and the Quick Reference updated.
- Global terminology in the setting chapters: Noble → vampire / the Kept, Noble Lore → **Old Lore**, castle → estate, Barbarois → retainers, the Capital → the city (Capital-Born → **City-Born**), dala → mark, the Gaze → Presence, Undying → Hard to Kill.
- Character sheet Frontier insert updated to match (Bled track, afflicted blood, revised Thirst table, killing methods and gear, day and night).
- `vhd-setting-rules.md`, `vhd-descriptors.md`, `vhd-playbooks.md` and `vhd-focuses.md` regenerated from the master with pandoc, replacing the v0.1 drafts.
- Master rulebook and character sheet PDFs rebuilt (Typst 0.15.0, same fallback fonts as the previous build).

### Not yet changed
- Cover, credits, file and folder names and the "About This Book" text still say *Vampire Hunter D*; the publishable title is undecided.
- The psychic Focuses (*Sends the Mind Abroad*, *Carries a Passenger*) have only had terminology updates; their basis is still under review.
- `*-1.pdf` copies of the rulebook and sheet were left as they are.

### Added — Vampire Hunter D master rulebook (2026-10-12)
- `docs/VampireHunterD/2d12-character-sheet-v2.typ` and compiled `.pdf` — new three-page character sheet built from the master rulebook: two generic pages (pools with Edge, skill pyramid, tags, Tychē, BIG, statuses, Resist, Scars, the four-rest recovery tracker and Hardened, abilities, Focus, XP, load and armour, Cyphers and Artifacts, the Grind and Checks) plus a Frontier insert (Frontier skills and playbooks, wealth, the Kiss, Noble blood with Sun-Sick and Thirst, banes and Hunter's gear, day and night, bounties, Campaign Truths). Styled to match the rulebook.

### Changed — Vampire Hunter D master rulebook (2026-10-12)
- Pools renamed throughout: **Vitality → Sōma**, **Alacrity → Akmē** (Psychē and Pneuma unchanged). Terminology table corrected; pool shorthand is now *Sōm / Akm / Psy / Pne*.
- Generic core playbooks renamed throughout: **Bruiser → Bellator**, **Operator → Furcifer**, **Sage → Savant**, **Face → Interlocutor**, **Wayfarer → Explorator** (Adept unchanged). Fixed the Core Rules §11.1 table, which listed Explorator twice; added a playbook-name table to Terminology.

### Removed — Vampire Hunter D master rulebook (2026-10-12)
- `docs/VampireHunterD/2d12-System--Character-Sheet-v0.2.md` and `.pdf`, replaced by the v2 sheet.

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
