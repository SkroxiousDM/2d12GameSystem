# Changelog

All notable changes to the 2d12 Game System will be documented here.

Format loosely based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/). Dates are ISO 8601 (YYYY-MM-DD).

## [Unreleased]

### Changed — Frontier vampire killing strikes (2026-10-30)
- **Frontier Rules §5.2:** Killing-strike Difficulty now scales by vampire Rank: Minor 18, Established 21, Great 27, Paramount 30. Reduce it by 3 for each tier of the target's highest negative status, with no minimum; eligible ability reductions stack.
- A successful strike destroys the named vampire. Failure brings a significant complication; players may give the GM 2 Woe to buy it off. Buying off the complication does not turn the failed strike into a success. Failure does not automatically impose a Significant compromise.
- **Frontier Rules §8.1:** Beheading follows the common killing-strike procedure, with no tier-4+ status prerequisite. Sustained fire requires a vampire to be broken at physical status tier 5; the husk exception remains. Staking remains separate. Killing-strike ability reductions do not apply to staking unless an ability explicitly says they do.
- Updated affected Frontier playbook, Focus and gear references to use the new procedure, including staking references for stake-capable ranged weapons (commit `b2ec517`).
- Killing-strike procedure implemented in `09ae687`; method-table and general stacking reconciliation in `2aa4f5d`. No Typst compilation, PDF rebuild or playtest verification is claimed.

### Removed — Legacy subsystem from active rules (2026-10-30)
- **Core Rules §§6.7–6.8:** removed the include that activated draft §6.9 Legacy and replaced the death-trigger cross-reference with a reminder that death creates no separate points or automatic Truth. The Dying clock, Scars, permanent harm and ordinary fictional remembrance are unchanged (commit `21dabc1`).
- **Historical draft:** `docs/2d12System/drafts/legacy-pool-6.9.typ` is retained with an explicit retired-status header; its Legacy Pool, death-triggered points, spend menu, optional Keepsake and Echo are not active rules (commit `9f15041`). The drafts README now distinguishes active and retired fragments (commit `12509ff`).
- The four-currency pillar remains pools, Tychē Points, Momentum and Woe. Echo and other Region/Campaign Truth exceptions remain playtest questions; no free Truth rule replaces Legacy. The active-source reference sweep and current-branch Typst/PDF verification remain outstanding. Earlier entries below are historical records, not current rules.

### Changed — Compels from any tag; scope and removal for statuses and Truths (2026-10-25)
- **Core Rules §4 Tychē Points:** any character tag (power, weakness or Scar), Belief or Instinct can justify a compel. New *Compels* subsection: the complication must be meaningful, the offer must be clear before acceptance, and a compel adds no numerical penalty, can't cancel a resolved success, and doesn't pay for an existing penalty.
- **Core Rules §3.4 Tags:** reminder that power tags can be compelled and keep their normal benefits.
- **Core Rules §5.1 Statuses:** new statuses record a scope and a removal condition. *What it hinders* now refers to the recorded scope and forbids broadening it.
- **Core Rules §8 Truths:** new Truths (or existing facts that first matter mechanically) state a scope and a removal condition. A removal condition never extends a Truth's duration.
- **Core Rules §5 Effects table (Create):** a scene Truth may end sooner when its removal condition is met. The extra Power now makes it last until its removal condition is met.
- Removed the forced page break after the §5 Effects table so the section flows under it. PDF rebuilt (61 → 62 pages).
- **Character sheet:** the power-tag label notes that power tags can be compelled; the Tychē *Earn* line covers meaningful compels on any tag, Belief or Instinct; the Statuses note asks you to record each status's scope and what ends it. Layout unchanged; PDF rebuilt.

### Changed — Attack and Feint remove Power + 1 (2026-10-20)
- **Core Rules §10.6:** a successful Attack or Feint applying its default Disposition-loss effect removes Disposition equal to the Power committed, **plus 1**. The +1 is Disposition loss, not extra Power; eligible injury trades apply afterward (§10.9). Ability bonuses (*Crowd Work*, *Every Trick in the Book*) stack unchanged.
- Conforming edits to the §4 Effects table (Attack row), the §10.6 actions table (Attack and Feint rows), §10.7 Shared Disposition, §10.14 Order of Resolution step 5, the Design Notes and the Quick Reference Damage Cycle box.
- Applies to `docs/2d12System/the-2d12-system-v2-core-rulebook.typ` (replaces PR #25, which targeted the archived master rulebook). PDF rebuilt.

### Changed — Master rulebook split into two books (2026-10-19)
- **New core rulebook:** `docs/2d12System/the-2d12-system-v2-core-rulebook.typ` (+ PDF). Holds the Introduction, Core Rules, Optional Modules, Generic Descriptors, Generic Playbooks, Generic Focuses and the Quick Reference. Neutral visual style (charcoal, navy and pewter; Source Sans 3 headings; d12 motif) replaces the gothic cover and chapter art.
- **Setting references removed from core:** afflictions, killing strikes, special creatures, Bled and Disposition modifiers now refer to setting rules in general terms ("creature rank" instead of "vampire rank"); the Optional Modules epigraph, Descriptor and Playbook blurbs no longer point to Frontier chapters; random-table "Frontier camp" is now "Remote camp". The Quick Reference "Day and Night" box is replaced by "The Four Currencies".
- **New setting book:** `docs/TestamentOfDust/testament-of-dust-v2-setting-book.typ` (+ PDF). Requires the core rulebook. Chapters renumbered: I Introduction, II Frontier Rules, III Frontier Descriptors, IV Frontier Playbooks, V Frontier Focuses, Appendix Frontier Quick Reference (Day and Night, Frontier skills, vampire Woe spends). Introduction explains that references to Core Rules, Optional Modules and the Generic chapters point to *The 2d12 System*, and recommends all three Optional Modules.
- Generic playbook art moved to `docs/2d12System/art/playbooks/generic/`.
- Old master rulebook source and PDFs moved to `docs/Archive/TestamentOfDust-master-v2/` (no longer maintained; art paths not updated there).
- Markdown editions and character-sheet header updated to point at the new files.

### Added — Superiority (2026-10-18)
- **New Core Rules §10.3 Superiority:** gain 1 Superiority each for Know Thy Foe, Know Thy Battlefield and Know Thy Players (maximum 3). After starting Disposition and all other modifiers, reduce the opposing side's starting Disposition by your Superiority, to a minimum of 1. The adjusted value counts as starting Disposition for recovery and compromise. Not tracked or spent once the conflict begins.
- Setup (§10.2) gains a Superiority step; Order of Resolution, Quick Reference and Known Risks updated.
- Core conflict sections §10.3--10.14 renumbered to §10.4--10.15, with all core cross-references updated. Frontier Rules §10.3--10.5 references are unchanged.

### Changed — Shared Disposition (2026-10-18)
- **Starting Disposition halved (§10.2):** after the usual roll, halving and helpers, halve the total again (round up). Typical range is now 4--7 instead of 7--12; §10.14 and Known Risks updated to match.
- **Flat starting bonuses before the second halving (§10.2):** flat bonuses and penalties to starting Disposition (abilities, vampire rank, conditions) are added before the final halving, so they keep roughly their old weight. Minimum starting Disposition is 1.
- **New Core Rules §10.6 Shared Disposition:** each side has one Disposition total, not divided among participants. Attacks and Feints reduce the opposing side's total; Defend restores your side's. Ordinary loss doesn't inflict statuses, drain Pools or remove individuals. A side loses at 0 or when none of its participants can continue. One injury trade per Attack or Feint.
- Conflict sections §10.6--10.13 renumbered to §10.7--10.14, with all cross-references updated.
- Conforming edits to §6.3, §6.4 (Taken Out, forfeiture removed, getting back in), §6.6, §10.2, §10.5, §10.8, §10.9, §10.12, Riposte, the Quick Reference and Known Risks.
- Record: `docs/TestamentOfDust/design/shared-disposition-master-text.md`.
- **Revised for the shared track** (master and `focuses.md`):
  - *Interpose:* when you accept an injury trade against an Attack or Feint, cancel 1 additional loss, up to the loss inflicted.
  - *Overwatch:* you may Defend with Shoot when covering fire can protect your side.
  - *Battlefield Surgeon:* you may Defend with Medicine when you can reach and treat an ally; a successful Defend restores Disposition normally and clears one tier-1 harmful status your treatment can address.

### Changed — Testament of Dust rebrand (2026-10-16)
- **Rulebook rebranded to *Testament of Dust*:**
  - Cover: title, tagline *Post-Apocalyptic Frontier Gothic*, and the motto *Roads through a broken world. Blood behind every bargain.*
  - Credits: original-setting notice replaces the fan-adaptation notice.
  - Running header (`TESTAMENT OF DUST · 2D12 V2`), PDF metadata and the Introduction text.
  - The character sheet's Frontier insert.
  - The last references to Vampire Hunter D are removed.
- **Renamed:**
  - `docs/HollowFrontier/` → `docs/TestamentOfDust/`
  - `vampire-hunter-d-2d12-v2-master-rulebook.*` → `testament-of-dust-2d12-v2-master-rulebook.*`
  - `vhd-*.md` → `testament-of-dust-*.md`
  - `design/hollow-world-*.md` → `design/testament-of-dust-*.md`
- **Removed:** the stale `vampire-hunter-d-2d12-v2-master-rulebook-1.pdf` and `2d12-character-sheet-v2-1.pdf` exports from 2026-10-12.
- Rulebook and character-sheet PDFs rebuilt (Typst 0.15.0, same fonts). Paths in the entries below refer to the folder and file names in use at the time.

### Decided — publishable title (2026-10-16)
- **Testament of Dust** is the publishable title (Q16). The tagline is unchanged. The decision and its screen are recorded in `docs/HollowFrontier/design/hollow-world-setting-design-document.md` §10.4. The rulebook cover, running header and file names are not rebranded yet, and trademark clearance is still pending.

### Changed — Sends the Mind Abroad (2026-10-16)
- **Sends the Mind Abroad** rebuilt on an old-world implant that rides surviving works and relays (Q30), instead of astral projection. It senses only through old works that still run, and gets the same open-sky rule as Carries a Passenger: 9+ on a d12 per scene through the moving lights, with a risk of being noticed. Abilities renamed with costs and Power unchanged: Walk Abroad, Feedback, Read What It Saw, Long Wire, ★ Take the Hand.

### Changed — field guide, Order Sidearm, the moving lights (2026-10-16)
- **Hunters' Field Guide:** classes renamed **Winterers**, **Strays** and **Tapsters** (were the placeholders Sleepers, Get, Sippers).
- **The moving lights** (Frontier Rules §9.3, new): a few old-world works still cross the night sky. They work under open sky only and can be overheard; Optional Truth 11 adds a watcher.
- **Carries a Passenger:** out of range and under open sky, roll a d12 at the start of a scene; on 9+ the Passenger can speak and use its abilities that scene, at the risk of being overheard. The default range is unchanged.
- **Order Sidearm** numbers confirmed as written.

### Changed — Hollow Frontier folder (2026-10-16)
- `docs/VampireHunterD/` renamed **`docs/HollowFrontier/`**. The setting design document and the *Dark Tower* elements review moved to `docs/HollowFrontier/design/`. File names inside (`vampire-hunter-d-2d12-v2-master-rulebook.*`, `vhd-*.md`) are unchanged until the publishable title is chosen. Paths in older entries below refer to the old folder.

### Changed — Q37-Q41 rulings applied (2026-10-16)
- **The returned** (Frontier Rules §5.6, new): survivors of a failed making are neither vampires nor dhampirs. NPCs only; a PC who survives a failed making leaves player control (§6).
- **Carries a Passenger** rewritten and moved from Bloodline to **Old-World Focuses**. The Passenger is now a voice relayed from a fixed old-world home site, with a range. *Devourer* becomes **Override**, *Feed Me, Heal You* becomes **Talk You Through It**, and *Let It Drive* becomes **★ Do Exactly What I Say**. Frontier Focuses 4-9 are renumbered 3-8, and Carries a Passenger becomes Focus 9.
- **Charter-speech** (Frontier Rules §10.5, new): binding instruments must be written or sworn in it. A flaw is grounds to challenge, not a verdict. Added to the Old Lore skill.
- **The Order of the Last Guns** and the **★ Order Sidearm** artifact added to Old-World Artifacts (§9.2).
- **The Hunters' Field Guide** handout added to the Stalker playbook (§2.4), with a cross-reference in the Occultist playbook.
- `vhd-setting-rules.md`, `vhd-playbooks.md` and `vhd-focuses.md` regenerated from the master, with quotes normalised to ASCII. Master rulebook PDF rebuilt (Typst 0.15.0, same fonts).

### Added — Hollow Frontier design documents (2026-10-16)
- `docs/HollowFrontier/design/hollow-world-setting-design-document.md`: the Hollow Frontier setting design document, v0.10. Q37–Q41 are resolved as canon: failed-conversion survivors are not dhampirs; no portable Digital Facsimiles; political rule P7 (the formal register for binding instruments); the Order of the Last Guns is placed in a neighbouring province; a hunters' field guide handout goes in the Stalker chapter. Q30 is partly resolved, and the decision log is updated.
- `docs/HollowFrontier/design/hollow-world-dark-tower-elements.md`: a review of 16 *Dark Tower* elements adapted for Hollow World, with a clearance list. The rulings are applied to the master in the entry above.

### Changed — Hollow Frontier setting lore (2026-10-16)
- **Frontier Rules (Ch. VII) rewritten** to the Hollow Frontier canon (design doc Appendix B). Vampires are living, blood-dependent people rather than "Nobles": new Threat Ranks (Minor / Established / Great / Paramount), **Hard to Kill** (recovery needs blood), a weekly **Blood Debt** clock and **husks**; **the Bled** (plain blood loss, tiers 1-6) replaces the Kiss; day no longer switches vampires off (Sunlight Syndrome now covers vampires and dhampirs); **killing methods** (beheading, sustained fire) replace banes, with stakes inflicting *staked* and silver blocking recovery; folk remedies work only on vampires who *believe the old stories*; Old-World Works replace Noble science; contracts gain Commissions; Woe spends revised (Presence, Summon the Household, The Old Door, Blood Reserve). The Vampire Hunter D era text (12,090 AD, D himself) is removed from this chapter.
- **Dhampir Focus reworked** (Appendix A): *Carries the Blood of the Nobility* becomes **Carries Her Mother's Blood** (Mother's Blood, Dhampir Regeneration, Read the Blood, Mother's Key, Awaken the Blood; optional *Knows How They Die*; new Known/Unknown mother table options). The Thirst now drops with a cup of human blood and clears with half a litre; tier 6 is a **Blood Crisis** choice.
- Dependent entries revised: *Was Kissed and Lived* becomes **Was Kept and Got Out**; *Heals the Kissed* becomes **Heals the Bled**; *Hunts the Nobility* becomes **Hunts the Kept**; *Seeks Revenge on a Noble*, *Bears a Noble Relic*, *Plunders the Castles of the Night* and *Once Served the Nobility* renamed; *Keeps the Old Faith* rebuilt around believers and silvered water; Frontier Doctor *Treat the Bled* and capstone **The Blood Bank**; stake and mirror gear, Bodyguard, Ward Against the Night, Toxic Blood, Little Blood Left, Warden wards and the Quick Reference updated.
- Global terminology in the setting chapters: Noble → vampire / the Kept, Noble Lore → **Old Lore**, castle → estate, Barbarois → retainers, the Capital → the city (Capital-Born → **City-Born**), dala → mark, the Gaze → Presence, Undying → Hard to Kill.
- Character sheet Frontier insert updated to match (Bled track, afflicted blood, revised Thirst table, killing methods and gear, day and night).
- `vhd-setting-rules.md`, `vhd-descriptors.md`, `vhd-playbooks.md` and `vhd-focuses.md` regenerated from the master with pandoc, replacing the v0.1 drafts.
- Master rulebook and character sheet PDFs rebuilt (Typst 0.15.0, same fallback fonts as the previous build).

### Not yet changed
- Cover, credits, file names and the "About This Book" text still say *Vampire Hunter D*; the publishable title is undecided.
- *Sends the Mind Abroad* has only had terminology updates; its basis was still under review (Q30; since rebuilt, see above). *Carries a Passenger* was rewritten in the Q37-Q41 pass.
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
- Core Glossary: definitions for 22 previously-blank terms (Concealment, Disguise, Leadership, Resolve resistance, War Magic, Power source, Truth, Fumble, NPC, Role, Culture, Background, Environment, Environmental trait, Morale, Concentration, Immobile, Desperate Action, Deadly, Armour, Evasion, Attack of Opportunity, Fear Check). Also added Action, Alacrity, Courage, Defence, and Madness entries that were referenced elsewhere but never gloss. Each entry now includes chapter cross-references.

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
