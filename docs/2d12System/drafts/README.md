# Gap-audit drafts

Status: the active drafts listed below are wired into the book. The Legacy
draft is retained as a historical design record but is no longer included
in the active rules. The two earlier patch files were applied inline and
deleted.

The active .typ files are Typst fragments with no preamble. An earlier
version of the book compiled with the included drafts under Typst 0.15.1;
that does not verify the current review-branch changes. No compilation,
PDF rebuild or layout check is claimed for the Legacy retirement edits.
The draft rules have not been playtested, and their numbers remain
playtest values.

| File | Status |
|---|---|
| legacy-pool-6.9.typ | Retired historical draft. Not included in the active rulebook; do not add its include or Quick Reference currency row. |
| module-c-7-8-entanglements-long-knives.typ | Included from chapter-3-module-c-truth-driven-sandbox.typ (C.7 and C.8) |
| module-e-1a-starting-cluster.typ | Included from chapter-3-module-e-factions.typ (E.1A, after E.1 and before E.2) |

Scenery Maneuvers (conflict chapter 10.6) was applied inline; its supporting
paragraphs sit below the scenery table.

## Decisions applied

- The Legacy subsystem is retired under Phase 1 decision §8. The active
  game retains four currencies: pools, Tychē Points, Momentum and Woe.
- Commit `21dabc1` removed the Legacy include and replaced the §6.7
  reference with a reminder that death creates no separate points or
  automatic Truth. Death, Scars and ordinary fictional remembrance
  remain unchanged.
- The retired draft's Legacy Pool, spend menu, Keepsake tag and Echo
  procedures are not active rules. Its old insertion instructions are
  superseded.
- A stay holds one World Turn (core cadence, Module E.10).
- Module D result 11 (reputation Truth) is dropped; results 11 and 12 are
  one faction result.

## Open items

- The Legacy draft header still needs an explicit retired-status notice
  and removal of its insertion instructions.
- Record the Legacy retirement in the changelog and Phase 1
  implementation tracker.
- Complete the active-source sweep for remaining Legacy currency,
  death-trigger and §6.9 references. Preserve historical playtest
  records and ordinary narrative uses of the word legacy.
- Echo and other Region/Campaign Truth exceptions remain deferred
  playtest questions; retaining the historical draft does not grant
  permission to create a free Truth.
- Typst compilation, PDF rebuilding and layout verification remain for
  the later rebuild pass.

## Resolved earlier note

The previous Rival Hunters item is resolved in the inspected
`tod-setting-rules-8.typ` §10.4: rival crews use Module E.10 when Module E
is in use, otherwise Module C.5, with one World Turn per stay when
Modules D and E are used. The setting book includes that source.

## Credits

C.7 is adapted from the structure of Entanglements by Ewen Cluney (2015).
C.8 and E.1A are adapted from Long Knives in Situations for Tabletop
Roleplaying by Levi Kornelsen. The rules text is original, but check both
licences and credit them in the acknowledgements before publishing.
