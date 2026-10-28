# Gap-audit drafts

Unintegrated drafts from the gap audit. This PR adds new files only. It does not edit any existing rulebook file.

Each .typ file is a Typst fragment with no preamble. Copy the marked blocks into the file named in each block's header comment. Nothing here has been compiled or playtested, and every number is a playtest value.

| File | Goes into |
|---|---|
| legacy-pool-6.9.typ | After 6.8 in chapter-2.6.5-recovery.typ |
| module-c-7-8-entanglements-long-knives.typ | End of chapter-3-module-c-truth-driven-sandbox.typ, plus one sentence in C.5 |
| module-e-1a-starting-cluster.typ | chapter-3-module-e-factions.typ, before the E.7 include |
| module-e-patches.typ | E.2 and E.6 (main Module E file); E.8, E.9, E.10, E.11 (E.7 file) |
| module-d-patches.typ | chapter-3-module-d-downtime.typ |

Scenery Maneuvers (conflict chapter 10.6) is already in main and is not repeated here.

## Decisions applied
- Legacy points are a separate currency, capped at 6 (not extra Tychē Points).
- A stay holds one World Turn (core cadence, Module E.10).
- Module D result 11 (reputation Truth) is dropped; results 11 and 12 become one faction result.

## Known issues in existing files (not changed here)
1. chapter-2.10-conflict-system.typ: the paragraphs Hazard Truths and Woe and Other conflict types sit above the Scenery Maneuvers heading. Move them below the scenery table.
2. chapter-3-module-e.7-favours.typ: line 1 reads im#import. Remove the stray im.
3. chapter-3-module-e-factions.typ opens #columns(2, gutter: 6mm)[ and never closes it, while the E.7 file ends with a lone ]. Typst parses included files separately, so this likely fails to compile. Close the columns inside each file.
4. chapter-2.6.5-recovery.typ 6.8: the sentence When severed hand-4 has / healed is split by a paragraph break.
5. chapter-3-module-e.7-favours.typ E.11 still mentions Levels of Success, legacy attributes and Social Superiority, none of which exist in this system.
6. Testament of Dust setting rules 10.4 (Rival Hunters) cite Module C.5. With Module E on they should cite E.10.
7. Module C, C.5 still lets 6 or 8 segment clocks change Region and Campaign Truths, which C.6 and E.10 contradict.

## Credits
C.7 is adapted from the structure of Entanglements by Ewen Cluney (2015). C.8 and E.1A are adapted from Long Knives in Situations for Tabletop Roleplaying by Levi Kornelsen. The rules text is original, but check both licences and credit them in the acknowledgements before publishing.
