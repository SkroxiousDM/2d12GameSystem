<!-- SETTING-SNAPSHOT-NAV-BEGIN -->
> **Status: Historical design snapshot — superseded in part. Not a current rules or canon authority.**
>
> This document preserves the setting-design checkpoint recorded as
> version 0.15, dated 16 October 2026. Its [CANON], [APPLIED], [PROPOSED]
> and [OPEN] labels describe decisions and implementation status at
> that checkpoint; they do not establish their current status.
>
> Source paths, replacement instructions, reproduced mechanics and
> references to “current” rules below are historical. In particular,
> the combined-master structure and reproduced recovery, Attack,
> killing-strike, Bled, Sun-Sick and Woe-spend procedures must not be
> copied into current source without checking subsequent decisions.
>
> For current rules, consult the active split-book Typst sources:
> `docs/2d12System/the-2d12-system-v2-core-rulebook.typ` and
> `docs/TestamentOfDust/testament-of-dust-v2-setting-book.typ`,
> together with their included chapters and fragments.
> Subsequent Phase 1 rulings and implementation status are recorded in
> `docs/design/rules-audit-phase1-decisions.md` and
> `docs/design/rules-audit-phase1-implementation.md`.
>
> The original text below is preserved as history. This classification
> does not independently adopt, revoke or resolve any individual lore
> decision, proposed mechanic or open question. It does not establish
> current-source clearance, build verification or playtest validation.

Designer/GM historical reference. Not a current rules or canon authority. A player-facing label within the preserved text does not make this whole file a player handout.

[Snapshot index](../testament-of-dust-setting-design-document.md) · [Original context](00-context-and-original-contents.md)

<!-- SETTING-SNAPSHOT-NAV-END -->
<!-- SETTING-SNAPSHOT-BODY-BEGIN -->
## 11. Open Questions

### 11.1 Resolved

| # | Question | Ruling | See |
|---|---|---|---|
| Q1 | Title | Keep *Hollow Frontier* as working title; brainstorm a publishable title later | §10.3, Q16 |
| Q2 | Blood-debt curve | Doubling schedule approved | §5.4 |
| Q3 | Collective names | "Remembered" and "Afterborn" approved | §4.7 |
| Q4 | Folklore protections | Assignment table approved | §5.10 |
| Q5 | Rarity of the Remembered | Very rare; Afterborn far outnumber them | §4.7 |
| Q6 | Conversion success | Maker, recipient, and equipment; equipment weighs most | §5.7 |
| Q7 | Cure | Unknown; deliberately left undefined | §5.16 |
| Q8 | Dhampir naming | Keep "dhampir" — a widely used folkloric term | §5.12 |
| Q9 | Afflicted-responsive systems | Approved; RFID-like identity tag in the nanites; lineages linked to a pre-collapse identity | §5.9 |
| Q10 | Vampire PCs | No full vampire player characters | §6.6 |
| Q11 | Vesper March common name | "The Kept" (polite) and "leeches" (vulgar) approved | §7.6 |
| Q12 | Other old-world survivals | Digital Facsimiles exist; never call them data echoes | §5.15 |
| Q13 | Extreme deprivation | Dormancy as a dried-out husk; extra flammable | §5.8 |
| Q14 | Reproduction | Tentative yes: female vampires may pass nanites to a child; miscarriage frequent | §5.13 |
| Q15 | Age | Age at treatment kept; those treated young mature to about mid-twenties, then stop | §5.14 |
| Q17 | Husk revival | About three adult humans' worth of blood (≈ 15 L); debt stops compounding at onset | §5.8 |
| Q18 | Husk onset | Weeks 5–7, earlier for injured or old vampires | §5.8 |
| Q20 | Vampire fathers | Can sometimes father children; low sperm count; no nanite transmission | §5.13 |
| Q21 | Digital Facsimiles | Proposal accepted: hardware-bound, record-built, unreliable; speaking saints, oracles, wall-ghosts | §5.15 |
| Q23 | Tag logs | Yes, logs exist; the difficulty is accessing them | §5.9 |
| Q22 | Tag degradation | Middle option: depends on conversion quality, not generation count | §5.9 |
| Q24 | Tag log access | Proposal accepted: authority, location, broken interfaces, format, ownership | §5.9 |
| Q25 | Tag repair | Unknown; deliberately left undefined | §5.9 |
| Q19 | Dhampir Focus rework | Appendix A accepted | Appendix A |
| Q26 | Frontier Rules conflicts | Revised in Appendix B | Appendix B |
| Q27 | Vampire night vision | Yes; ultraviolet light also inhibits the nanites | §5.10, B.4 |
| Q28 | Animal blood | Partially sustains (half value) | B.5.4, A.3 |
| Q29 | Dhampir children | Nothing passed on | §5.12 |
| Q31 | Currency | The mark | B.8.2 |
| Q32 | Shed blood and tags | Yes, for a limited time; a vial opens the bloodline's doors | §5.9, B.9 |
| Q33 | Sun and collapsed vampires | A full day in direct sun destroys a collapsed vampire | B.7.1, B.8.1 |
| Q34 | Threat ranks | Minor / Established / Great / Paramount, by power not age | B.5.1 |
| Q35 | Apply Appendices A and B to the repository | Applied on branch `feat/hollow-frontier-frontier-rules`, [PR #19](https://github.com/SkroxiousDM/2d12GameSystem/pull/19); awaiting review and merge | B.19 |
| Q37 | Long Levy returnees | Not dhampirs; separate failed-conversion condition; carry a degraded maker-lineage tag; NPC only | §5.12 |
| Q38 | Portable facsimiles | No. Fixed-route hardware allowed; speech at a distance only through relays in range of the home site | §5.15 |
| Q39 | Formal legal register | Adopted as P7; register errors are grounds to challenge, not automatic voiding | §7.3, §7.6 |
| Q40 | Order of the Last Guns | Neighbouring province; the March gets claimants, refugees, and relic sidearms | §8.2 |
| Q41 | Hunters' taxonomy handout | Yes; Stalker chapter, cross-referenced in Occultist; in-world only. Classes: Winterers, Strays, Tapsters | §10.2 |
| Q42 | Satellite coverage under open sky | The moving lights: surviving orbital relays carry a Passenger's voice under open sky on 9+ on a d12 per scene; traffic can be overheard; Truth 11 adds a watcher | §5.15; rulebook Frontier Rules §9.3 |
| Q16 | Publishable title | ***Testament of Dust***; tagline kept; no subtitle for now. Still needs a USPTO search and attorney review | §10.4 |
| Q30 | Psychic and possession Focuses | *Carries a Passenger*: the Tethered Voice (Q38). *Sends the Mind Abroad*: the Relay-Sense, an old-world implant that rides surviving works and relays, under the same open-sky rule as the Passenger (Q42) | §5.15; rulebook Frontier Focuses 9 and 10 |

### 11.2 Still open

| # | Question | Current proposal |
|---|---|---|
| Q36 | Rename the Vesper March? | Overlaps with *BattleTech*'s Vesper Marches; keep as working name, rename before publication |

## 12. Superseded Concepts Archive

Retained for reference. **Do not use** without re-approval.

### 12.1 The Continuance **[SUPERSEDED]**

A single world-spanning preservation network — buried engines, biological archives, climate works, and AIs — that fractured and now enforces conflicting instructions. **Replaced because** it explained too much through one origin and made malfunctioning infrastructure the main antagonist. Its core image (a world endangered by its own attempts to save itself) survives in smaller, plural forms.

### 12.2 The Red Inheritance and lineages **[SUPERSEDED]**

Vampirism as a failed Continuance life-preservation branch, with lineages: the Remembering, Rootbound, Glassblooded, Borrowers, and Wakeful. **Replaced by** the nanite longevity treatment and the Remembered/Afterborn cultural divide. Individual lineage ideas could return as rare conversion variants (§5.7, V8).

### 12.3 Lantern March **[SUPERSEDED]**

A chain of settlements along a maintenance route lit by failing signal towers. **Replaced by** the Vesper March, which is more politically concentrated.

### 12.4 Earlier institutions **[SUPERSEDED / available for reuse]**

Charter Towns, Custodians, Blood Compacts, Passage Houses, and the Unregistered. Not adopted as canon. Blood Compacts in particular could return as the formal name for a negotiated Household or Levy arrangement; Passage Houses suit Rider and Broker play.

---

<!-- SETTING-SNAPSHOT-BODY-END -->
