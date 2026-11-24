# Core Rules Pass 6: Simplicity and Flow

Scope: the whole core book (Introduction, Core Rules §1–§14, Optional Modules, Adversaries, Generic Descriptors, Generic Playbooks, Generic Focuses and the Quick Reference), plus the web build. The work starts from `main` @ 0c13707, after the Specialisations and Knowledge refactor, the Momentum → Weal rename, four-field abilities, unranked Truths with Personal statuses and Situational Conditions, and PR #55 (sfx-ability-format).

Patch: `core-rules-pass6.patch` (59 files including `CHANGELOG.md`, 994 insertions, 882 deletions, not counting these notes). **Applied on branch `review/core-pass6-simplicity-flow`, not yet committed.** Each proposal and flag was approved one at a time. Editorial changes have no marker. Mechanics changes carry a `// PLAYTEST:` comment and, where a number is visible, "(Playtest Value)".

## Size

| Measure | Before | After | Change |
|---|---:|---:|---:|
| Words, core `.typ` files (excluding `drafts/`) | 78,811 | 78,443 | −368 |
| Core rulebook, pages | 150 | 150 | 0 |
| Testament of Dust, pages | 70 | 70 | 0 |

## Style Rulings

1. **Names.** Truths are Title Case (_Barred River Gate_, _A Rope Bridge Spans the Gap_). Situational Conditions are lower-case italics (_thick smoke 3_, _dim lighting_). About 30 names changed across 14 files.
2. **Visible playtest marker.** "(Playtest Value)" replaces the old visible forms. M6 below finishes the remaining prose markers.
3. **References.** "Core Rules §" everywhere, including the Quick Reference and the character sheet.
4. **Tags.** A new character has seven tags (Descriptor 1+1, Playbook 2, Focus 2+1).

## Changes by File

### Front Matter and Introduction

- **Credits.** "Testament of Dust owes a heartfelt thank-you…" now reads "The 2d12 System owes…". The setting name was left over from the split.
- **Notation.**
  - The ★ Major and ◆ Capstone lines are now short pointers. They no longer repeat the full pricing from §3.6, §12.2 and Generic Playbooks §1.2. The Capstone line keeps "Take it as an Advance; it costs no Refresh" from your pass 5 ruling.
  - The Tags line now covers all three tracked kinds: Personal statuses add a hyphenated tier (_wounded-2_), Situational Conditions add a rating (_smoke cover 2_), and Truths carry no number.

### §3 Character Creation

- **§3.1 table.** The Playbook row now lists "2 power tags". The tags were in §3.4 but missing from the summary.
- **§3.4 Tags.** "Characters carry 6–8 character tags" becomes "A new character has seven character tags: 1 power and 1 weakness from the Descriptor, 2 power from the Playbook, and 2 power and 1 weakness from the Focus." Confirmed in style ruling 4.

### §5 Effects

- "Resistance, worsening, recovery and protected payments work as before" was residue from the Truths refactor ("before" what?). It now reads "follow their own rules (§6, §10.7)".

### §6 Resistance, Harm and Recovery

- **§6.3 Specific replacements.** The Sun-Sick, Thirst and Bled sentence is setting text. It becomes a generic rule: "A setting condition that replaces the Scar says so; one that doesn't keeps it."
- **§6.6 care table.** "Science or Craft" becomes "Tech or Craft". Science isn't in the core skill list.
- **§6.7 Setting-specific harm.** The Bled sentence becomes the generic rule it was an example of: a condition with its own tiers but no death procedure still uses the core Dying clock at lethal tier 6.
- **§6.8 Adapting.** "old-world works" (Testament of Dust) becomes "advanced technology".

### §9 Weal and Woe

- A `// PLAYTEST:` comment sat after the paragraph it described. It now sits directly above "Truths, not ratings". The comment and the visible text are unchanged.

### §10 Conflict

- **§10.2 Adversary exception.** Removed "Preserve explicit exceptions such as Guard when resolving independent tests." It repeats the rule in the Adversaries chapter, and it isn't about setup.
- **§10.4 table.** In the Battle row, "Lore (tactics)" becomes "Lore, applied to tactics". The brackets read like Specialisation notation.
- **§10.5.** Added the bold label **Action completion.** to the independent-actions paragraph. §10.9 and §10.12 cite an "action-completion rule", and before this there was nothing with that name to find.
- **§10.8 PLAYTEST comment.** The reference to "§5.1" becomes "§5". The Create a Truth cost is no longer in a §5.1.
- **§10.18.** The subhead "Other Core Rules" becomes "Core Rules in Conflicts".

### Optional Modules

- Module E and Module F headings now follow the "Module X --- Title" pattern used by Modules A–D.

### Adversaries

- **Broken section references.** Six references pointed to §7.1, which is Templates, when they meant Boss Phases (phased-boss designation, threshold timing, fixed phase references, Last Stand and Fail-safe unlocks). They are now dynamic references to the Boss Phases subsections, which P9 renumbered to §9.1–§9.4.
- The heading "8 Boss Phases" now has its full stop, like the other sections. P9 later renumbered it to §9.
- A bare "§10.7" in Reduction and payments meant the Core Rules section. It now reads "Core Rules §10.7".
- "Core §" becomes "Core Rules §" in five places, to match the rest of the chapter.
- **Science → Tech** in the Machine kind entry and in one statblock ("Other +4 (Tech +6)").

### Generic Playbooks

- **§1.3 Power.** The definition said Power was "Successes generated by a roll". The game has no Successes. It now matches §2.2: "Earned by meeting or beating the target: 1, +1 per full 3 points over".
- **§1.3 Effort.** "3 − Edge" now adds "(minimum 0)", as §2.4 does.
- **Bellator (Juggernaut) and Savant.** The cost field "Pay the normal Resistance cost. This ability adds no cost." becomes "No additional cost.", the wording used by the other four-field abilities.

### Generic Focuses

- **§1.3 Ability Limits.** Removed the flat starting-Disposition bullet and the declared-facts bullet. Both repeat Generic Playbooks §1.2, which the section already says to follow. The line about bonus clock segments is kept as its own bullet, because Playbooks §1.2 doesn't cover it.

### Quick Reference

- Removed the four-line "PROPOSAL ONLY…" header comment. The appendix is no longer a proposal.
- The subhead "Statuses" becomes "Statuses, Conditions and Truths", because the box covers all three.
- "Core §" becomes "Core Rules §" in 12 places, and on the character sheet in 2 places (style ruling 3).

## Proposals Applied

| # | Where | Applied change |
|---|---|---|
| P1 | §3.5 Beliefs | Option A. The per-template examples stay. "Example: A Character Ready for Play" is trimmed to the premise, concept, GM hook and a line pointing back to the examples above. |
| P2 | ★ / Capstone / Veteran | Generic Playbooks §1.2 is the home for ability rules and Core Rules §12.2 for advancement prices. The Introduction, §3.6, §11 and Generic Focuses §1.1 now point there. |
| P3 | Protected payments | Full rule in §10.7 (Protected Payments). The other mentions point to it. |
| P4 | §6.1 Running Dry | The repeated zero-cost, empty-pool and pay-as-you-go text is merged so it's stated once. |
| P5 | Voice | Contractions in §10 and the Adversaries chapter (193 changes), to match §§2–6. |
| P6 | §10.15 Order of Resolution | The 20 steps are grouped under Setup, Each Volley and Ending, with the repeat line. No step changed. |
| P7 | §10.6 | Adversary-only Specials moved to the Adversaries chapter, with one pointer. |
| P8 | Adversaries §6.3 | A short bullet list of differences from the core replaces the restated rules. §10.18 gains the automatic-success tie rule. |
| P9 | Adversaries Special rulings | Option B. New "7. Special Rulings" (old §§6.10–6.24 become §§7.1–7.15). Templates is §8, Boss Phases §9 (9.1–9.8) and the Quick Checklist §10. The whole book now uses Typst dynamic references (see below). |
| P10 | Quick Reference GM strip | Gloss line for Bulwark, Self-Repair, Bolt, Lockdown and Last Stand. The Bulwark row reads "Bulwark (Interpose)" and points to Adversaries §7. The book returns to 150 pages. |
| P11 | §10.14 | "Ordinary NPCs have no pools (§6.1) and reduce imposed harm…", with §6.4 pointing here. |
| P12 | Module headings and credits | Source credits leave the Module A–D, C.8, E.1A and Playbooks 2.1 headings. A Sources paragraph closes Combining Modules. D.6a becomes D.7 and the old D.7 becomes D.8. The credits page adds _Situations for Tabletop Roleplaying_ and corrects ":Otherworld" to ":Otherscape". |
| P13 | Finishing terms | "Finishing procedure" throughout the core book. "Killing strike" survives once, as the setting-book example in §10.12. Testament of Dust is unchanged. |
| P14 | §5 Weaken | Cost cell: "1 (one status tier or Suppress a tag); 2 per rating (Situational Condition)". |
| P15 | Module B.3 Sick | "Medicine vs. Hard 18 + rest". (The notes first placed this in §5.3.) |
| P16 | Adversaries source | The whole seven-line header comment is deleted. |

## PLAYTEST Flags Applied

| # | Ruling | Where |
|---|---|---|
| M1 | "A **milestone** is the end of a story arc or the completion of a major Goal; the GM calls it, usually at the end of a session. A **major milestone** is the end of a full campaign arc. (Playtest Value)" Module D's project milestones become **clock stages**. | §12 opening; Module D.6 |
| M2 | Option B. "refused compels" is removed from the §9.2 Woe list. §2.4's 1 Tychē Point refusal cost is the whole penalty. Editorial, so no marker. | §9.2 |
| M3 | Option B. A die bought with Woe costs its Weal price: 1 Woe for the first, 2 for the second. §9.1 and §9.2 already said so. | §2.4 table, Quick Reference, generic and Testament of Dust character sheets |
| M4 | **Fixed modifiers.** Impede (−3) and the Grind's _sick_ (−1) apply in addition to the two slots. Guard raises the Difficulty and Gain Position adds a bonus die. Impede stays −3 (a Difficulty step would do nothing in versus tests). | §2.1 |
| M5 | Grind "conditions" become **Grind hardships**, and the label `mod-grind-conditions` becomes `mod-grind-hardships`. Core book only. | Module B, §5.3, Quick Reference, Knowledge and Wilderness Focuses |
| M6 | Remaining prose markers unified: Module D intro, E.1A Pacing, Quick Reference Superiority, Adversaries §5 (two), the Boss Phases intro and §9.1. The "…remain unvalidated." sentence in Boss Phases is deleted. Module E's module-wide sentence and the §10 pacing advice are kept. | As listed |

## Dynamic References (P9)

- Every numbered level-2 and level-3 heading has a label with a chapter prefix (`core-`, `mod-`, `adv-`, `desc-`, `pb-`, `foc-`, `qr-`). Descriptor and Focus entry headings are excluded.
- 557 static § references became `@label`. Ranges are written `@a[§§]--@b[]`. A `show ref` rule in `common.typ` renders them with the right prefix.
- Kept static: the Introduction notation examples, the character sheet, and module letter references (E.7 etc.).
- Testament of Dust's references to the renumbered Adversaries sections are updated (§§7.1–7.2, §7.3).
- **Web build.** `web/build_html.py` reads heading numbers from the source and rewrites `@label` to links before Pandoc, then resolves them to `#label` or `../slug/#label`. Six new tests (10 in total). 588 links are verified, none broken, and the § text matches the PDF.
- `CONTRIBUTING.md` gains a bullet on writing Typst cross-references, and `web/README.md` documents the new anchors.

## Layout Notes

- Two manual `#colbreak()`s were removed because the new text left them in the wrong place: one in Module A.2 (P12) and one in §2.7 (M4).
- **Accepted gap (M4).** The fixed-modifier paragraph pushes an unbreakable §2.5 table onto the next page. Chapter 2 now ends with half of p. 11 free, and Chapter 3 runs one page late until §3.6. The book is still 150 pages. An `art-fill` placeholder now fills the gap at the end of §2.7 ("A climber on a fraying rope bridge, one odd-coloured die tumbling into the gorge below.").

## Follow-ups Not in This Pass

- **Testament of Dust.** The Cyborg Hunter, Mutant and Rider playbooks still say "Grind condition" (M5 was core only). A `// PLAYTEST:` comment at Module B.3 records this.
- **History documents.** `docs/design/` implementation histories still say "D.6a". They are historical records and are left alone.

## Render Check

- The core book compiles at 150 pages with Typst 0.15.2 and with 0.13.1 (CI). Testament of Dust compiles at 70 pages. The generic and Testament of Dust character sheets keep their page counts (3 and 5). Placeholder art is used, because the repository's art files are LFS pointers.
- Under 0.13.1, three headings (§10.17, E.8 and "Branches, alliances, and mergers") fall one page earlier than under 0.15.2. That is a version difference and was present before this pass.
- I checked the changed pages visually, including the credits page, Combining Modules, Module A.2/B, the B.3 table, §2.1–§2.7, §12, Module D and the character-sheet bonus-dice lines.
- `python3 -m unittest discover -s web -p 'test_*.py'` passes, and `python3 web/build_html.py` builds.

## Checked and Unchanged

- Every bare § reference in Core Rules resolves.
- References between chapters (Generic Playbooks, Generic Focuses, Adversaries, Modules) resolve, apart from the Adversaries §7.1 references fixed above.
- The numbers in the odds table and the Resistance probability table are correct.
- The Example of Play arithmetic is correct.
