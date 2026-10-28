# Gap-audit drafts

Status: the drafts in this folder are now wired into the book. The two patch files have been applied inline and are kept for reference only.

Each .typ file is a Typst fragment with no preamble. Nothing here has been compiled or playtested, and every number is a playtest value.

| File | Status |
|---|---|
| legacy-pool-6.9.typ | Included from chapter-2.6.5-recovery.typ (section 6.9) |
| module-c-7-8-entanglements-long-knives.typ | Included from chapter-3-module-c-truth-driven-sandbox.typ (C.7 and C.8) |
| module-e-1a-starting-cluster.typ | Included from chapter-3-module-e-factions.typ (E.1A, after E.6) |
| module-e-patches.typ | Applied inline (E.2, E.6 in the main Module E file; E.8 to E.11 in the E.7 file). Safe to delete. |
| module-d-patches.typ | Applied inline in chapter-3-module-d-downtime.typ. Safe to delete. |

Scenery Maneuvers (conflict chapter 10.6) is in main; its supporting paragraphs now sit below the scenery table.

## Decisions applied
- Legacy points are a separate currency, capped at 6 (not extra Tychē Points).
- A stay holds one World Turn (core cadence, Module E.10).
- Module D result 11 (reputation Truth) is dropped; results 11 and 12 are one faction result.

## Open items
1. Rival Hunters (Testament of Dust setting rules and setting book, section 10.4) still say they use the Faction Turn rules of Module C.5. The setting book is a very large single file, so it was not edited here. Suggested replacement for that paragraph:

   Rival crews use the World Turn rules (Module E.10 when Module E is in use; otherwise Module C.5) with a project clock on the same quarry. Under Module D a stay holds one World Turn, so a rival's clock advances once per stay. If their clock fills first, they claim the bounty, and the party's contract becomes a Disposition fight with the rivals (often a Negotiation or a Chase rather than a Fight).

2. E.1A sits after E.6 although its number suggests it belongs after E.1. Move the include in chapter-3-module-e-factions.typ if you prefer.
3. Compile the book. The #columns brackets are opened in one file and closed in an included file, which is also how section 6 is built, so it is probably fine, but only a build will confirm.

## Credits
C.7 is adapted from the structure of Entanglements by Ewen Cluney (2015). C.8 and E.1A are adapted from Long Knives in Situations for Tabletop Roleplaying by Levi Kornelsen. The rules text is original, but check both licences and credit them in the acknowledgements before publishing.
