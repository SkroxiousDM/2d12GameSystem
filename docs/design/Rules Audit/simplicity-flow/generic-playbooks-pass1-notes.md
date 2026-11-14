# Generic Playbooks Pass 1: Simplicity and Flow (ch. 5)

Scope: all of Generic Playbooks:
- §1 Playbook Rules and §2 Equipment Rules
- the six playbooks (Bellator, Furcifer, Savant, Interlocutor, Explorator, Adept)
- §9 Design Notes, condensed into a sidebar

This pass covers wording, checks against the current core rules, and balance flags. It starts from the state after optional modules pass 2 (D–F, applied).

Patch: `review/generic-playbooks-pass1.patch` (8 files, 69 insertions, 91 deletions). **Applied**, together with the follow-up changes below.

## Size

| File | Before | After | Change |
|---|---:|---:|---:|
| `chapter-5-playbooks.typ` (§1–2) | 1,147 | 1,158 | +11 |
| `chapter-5.3-bellator.typ` | 1,026 | 850 | −176 |
| `chapter-5.4-furcifer.typ` | 1,431 | 1,044 | −387 |
| `chapter-5.5-savant.typ` | 893 | 778 | −115 |
| `chapter-5.6-interlocutor.typ` | 1,103 | 848 | −255 |
| `chapter-5.7-explorator.typ` | 959 | 803 | −156 |
| `chapter-5.8-adept.typ` | 1,226 | 1,064 | −162 |
| `chapter-5.9-design-notes.typ` | 443 | 117 | −326 |
| **Chapter 5 total** | 8,228 | 6,662 | −1,566 |
| Full book, pages | 115 | 112 | −3 |

## Main Pattern

About 25 ability entries repeated the same five core limits, often word for word:
- "grants no additional scripted action or permission to bypass the action interaction"
- "cannot be prevented, redirected or Resisted"
- "apply at full value with other flat starting-Disposition modifiers, before the minimum of 1 and opposing Superiority…"
- "cannot contradict resolved events or retroactively recalculate Superiority after setup"
- "does not reduce shared Disposition loss, running-dry statuses or accepted payments"

The core already states all five (Core Rules §6, §10.2–10.7). The patch replaces the old "Conflict notation" paragraph in §1.2 with a five-bullet **Ability limits** block that applies to every ability in the chapter. Each entry then keeps only what makes it different. This is why §1–2 grow by 11 words while the playbooks shrink by about 1,250.

No ability's effect changes. Where an entry had a real exception (Bodyguard can't take shared Disposition loss; Deadly Precision doesn't work with Feint), the exception stays in the entry.

## Changes by File

### §1–2 Playbook and Equipment Rules

- §1.1 Special abilities row: "1 free at creation, and up to 2 more at 1 Refresh each. A ★ Major costs 1 more (§1.2)."
- §1.2 ★ Major: one sentence. A ★ creation extra costs 2 Refresh, and so does a ★ veteran ability. The duplicate advancement sentence is cut.
- §1.2 Veteran: "It costs 1 Refresh, plus 1 if it is ★."
- §1.2 **Ability limits** block (new, replaces Conflict notation): free costs and no extra turns; separate bonuses; protected payments; flat starting-Disposition modifiers; declared facts can't rewrite resolved events.
- §2.2 Quality and gear-switching paragraphs: shortened, with Core Rules §10.10 pointers. The bare "(§10.10)" becomes "Core Rules §10.10".
- §2.3 Armour: the protected-payment list now points to Core Rules §6 and §10.7; the shield sentence is cut.
- The page break before the design notes is removed so the sidebar follows the Adept.

### Bellator

- Brutal: "choose one" of +1 Disposition or +1 status tier.
- Bodyguard, Cleave, Pain Tolerance, Berserker: boilerplate cut.
- Unstoppable: 130 words become 70, with the same rules.
- Legend of the Field: "enemy starting Disposition is −2 (a flat modifier, §1.2)".

### Furcifer

- The Shared Opening rules go from four paragraphs to three short ones: what an opening is, when to check it, and how it works outside conflicts.
- Shared Limits goes from four paragraphs to three.
- Ghost, Opportunist, Light Fingers, Quick Reflexes, Escape Artist, Flashback, Nobody Sees Me Coming: boilerplate cut.
- Deadly Precision: one "choose one" sentence, with the half-tier price table kept.
- The page break before 4.2 Starting Equipment is removed. It left three lines alone on a page.

### Savant

- Analyze: "costs 1 Power less (Core Rules §5)" instead of "1 instead of 2". This matches the core Create-discount wording and also covers rank-2 Truths.
- Field Medic, Decipher, Briefing, Connect the Dots, I Planned for This: trimmed.
- Master of the Field: "versus tests are unchanged" replaces the 50-word explanation.
- Forensics kit: "+1 to Investigate at scenes" becomes "at crime scenes".

### Interlocutor

- Silver Tongue: "1 Power less", as for Analyze.
- **Command:** 190 words become 95. Your designated actor may act out of rotation, even in consecutive volleys. Defend recovery gets +1. Each benefit applies once per exchange per side.
- Read the Room, Network, Smooth Recovery, Many Faces, Inspire, Crowd Work, Word Is Law: trimmed.

### Explorator

- Pathfinder, Ambusher, At the Helm, Weather Sense: boilerplate cut.
- Animal Companion: points to Core Rules §10.9.
- One With the Wild: tightened.

### Adept

- The Backlash and in-conflict Domain paragraphs are tightened.
- Focused Channel, Ward, Overchannel, Bound Servant: trimmed.
- **Unleash:** points to Core Rules §10.17 for area Disposition loss instead of restating it. "Provisional for playtesting" is dropped here because §10.17 already carries that label.
- Ascendant: tightened.

### Design Notes → Sidebar

§9 (balance table plus six playtest bullets) becomes a "Design Notes" sidebar of two paragraphs, Roles and Watch in playtest, at the end of the Adept. Dropped bullets:
- Free bonus dice, Refresh accounting and conflict separation: now covered by §1.2 or the core.
- The "open ruling" line about supplementary permissions: the Supplementary Effects Reference in Core Rules §10.6 now lists them.

No other chapter referred to Generic Playbooks §9.

## Rule Check Flags

| # | Where | Issue | Suggestion |
|---|---|---|---|
| R1 | Berserker, Unleash | Both cost *Weary*, which is defined only in Module B. Without Module B the cost doesn't exist. | Add a fallback: "take *Weary* (Module B), or *exhausted-2* until a night's rest without it." |
| R2 | Explorator | Pathfinder, Forager and half of One With the Wild do nothing without Module B. | Give core fallbacks: Pathfinder +1 segment on any travel or pursuit clock; Forager's success clears a hunger or thirst status. Or mark these "(Module B)" in the ability names. |
| R3 | §2.1 Heavy load / §2.3 Heavy armour | Both say "Mētis Effort +1". It isn't stated whether they stack to +2. | Don't stack: heavy armour already counts as encumbered. |
| R4 | Furcifer lockpicks (modern) | A signature item gives "Advance security clocks +1 per roll", which is as strong as the Decipher ability and works even on a failure. | "+1 segment on a successful roll." |

## Balance Flags

Typical starting Disposition is about 6: 2d12 averages 13, plus a +4 skill and Edge 2, divided by 3.

| # | Where | Issue | Suggestion |
|---|---|---|---|
| B1 | At the Helm (Explorator, regular) | +3 starting Disposition in Chases, about half a typical start. That's more than the Bellator capstone (−2 enemy) and Ambusher (+2). | Lower to +2, matching Ambusher. PLAYTEST. |
| B2 | Crowd Work (Interlocutor, ★) | +1 Disposition per Attack, but only against crowds or councils. Brutal gives the same bonus to every Fight or Brawl Attack without ★. | Drop ★, or extend it to any Argument or Negotiation where the other side has more than one participant. |
| B3 | Weather Sense (Explorator, ★) | Once per session, declare a scene Truth. Network does about the same without ★. | Drop ★, or add: "and you always know the next scene's weather and terrain Danger." |
| B4 | Word Is Law (capstone) | +4 starting Disposition (about two-thirds of a typical start) plus a free request each session. It's the strongest conflict capstone; Legend of the Field gives −2. | Lower to +3, or leave it and watch in playtest. |
| B5 | Overchannel (Adept) | +2 Power per Effort with no frequency limit. At Effort Level 3 that's +6 Power for one *strained-1*. | Once per roll. |
| B6 | Master of the Field (capstone) | A permanent −3 Difficulty across a whole field, outside the tag and bonus-die caps. | Fine as a capstone if the field is narrow; specify "one field, about as wide as a skill specialty". |
| B7 | Focused Channel (Adept) | Zero-cost workings make the Adept's main action free all day (already in the design notes). | Keep the sidebar note; test the base-cost-2 option. |

## Follow-Up Applied

All of these are marked `// PLAYTEST:` in the source.

- **R1:** Berserker and Unleash: "take *Weary* (Module B; without it, *exhausted-2* until a night's rest)".
- **R2:**
  - Pathfinder: without Module B, add 1 extra segment to any travel or pursuit clock you advance.
  - Forager: now "As Quartermaster (Module B)…"; without Module B, a successful foraging roll clears a hunger or thirst status for the whole party.
  - One With the Wild: "Grind clock (Module B)".
- **R3:** Heavy armour: "Mētis Effort +1 while worn (doesn't stack with Heavy load)".
- **R4:** Furcifer modern lockpicks: "Advance security clocks +1 on a successful roll".
- **B1:** At the Helm: +3 → **+2** starting Disposition in Chases.
- **B4:** Word Is Law: +4 → **+3** starting Disposition.
- **B5:** Overchannel: **once per roll**.

Still open, kept as notes for playtest: B2 (Crowd Work ★), B3 (Weather Sense ★), B6 (Master of the Field scope) and B7 (Focused Channel).

The book was recompiled after the follow-up and is still 112 pages.

## Render Check

Both versions compiled (with placeholder art). The book went from 115 to 112 pages. Pages 77–93 (chapter 5) were rendered and inspected:
- The Ability limits block fits on the §1 page.
- The Furcifer equipment now follows its abilities without an orphan page.
- The Design Notes sidebar fits under the Adept's BIG examples.
- No overflow or clipped cells.

## Reminder

`drafts/README.md` asks for a licence check and an acknowledgements credit for C.7 (*Entanglements*) and C.8/E.1A (*Long Knives*) before publishing.
