# Gap-audit drafts

Status: the active Typst fragments listed below are wired into the book.
The Legacy draft is retained as a historical design record but is not
included in the active rules. The two earlier patch files were applied
inline and deleted.

Source integration is not compiled-book verification. An earlier version
of the book compiled with the included drafts under Typst 0.15.1; that
does not verify the current review-branch changes. No current compilation,
PDF rebuild, layout check or playtest is claimed here. Numerical playtest
values remain provisional.

## Source roles

| File | Status |
|---|---|
| legacy-pool-6.9.typ | Retired historical draft with an explicit retirement header. Not included in the active rulebook; do not add its include or Quick Reference currency row. |
| module-c-7-8-entanglements-long-knives.typ | Included from chapter-3-module-c-truth-driven-sandbox.typ (C.7 and C.8). |
| module-e-1a-starting-cluster.typ | Included from chapter-3-module-e-factions.typ (E.1A, after E.1 and before E.2). |
| chapter-2.10-conflict-system-rewrite.md | Rewrite design proposal; not the source included by the core chapter. Check the active Typst source for current implementation. |
| conflict-shared-rules.md | Approved design standard and review guidance; not a blanket claim that every individual ability has been amended. |

The core chapter includes `../chapter-2.10-conflict-system.typ` and
`../chapter-2.10-area-and-interpose.typ`. The latter contains Area Effects
§10.17 and Interpose §10.18. Scenery Maneuvers are inline in the conflict
chapter at §10.8, with supporting paragraphs below the scenery table.
Use those active sources for implementation checks rather than treating
an earlier proposal or historical fragment as a replacement rule.

## Decisions applied

- The Legacy subsystem is retired under Phase 1 decision §8. The active
  game retains four currencies: pools, Tychē Points, Momentum and Woe.
- Commit `21dabc1` removed the Legacy include and replaced the §6.7
  reference with a reminder that death creates no separate points or
  automatic Truth. Death, Scars and ordinary fictional remembrance
  remain unchanged.
- The retired draft's Legacy Pool, spend menu, Keepsake tag and Echo
  procedures are not active rules. Its retirement header supersedes
  the old insertion instructions; that header work is complete.
- A stay holds one World Turn when Modules D and E are combined
  (Module E.10).
- Module D result 11 (reputation Truth) is dropped; results 11 and 12 are
  one faction result.
- Module D replaces B.4; Module E replaces C.5 and its E.1A starting
  cluster replaces C.8. Do not run both versions of a replaced procedure.

## Open items

- Verify whether the Legacy retirement has been recorded in the
  changelog and Phase 1 implementation tracker; this documentation
  update does not claim that work is complete.
- Complete the active-source sweep for remaining Legacy currency,
  death-trigger and §6.9 references. Preserve historical playtest
  records and ordinary narrative uses of the word legacy.
- Echo and other Region/Campaign Truth exceptions remain deferred
  playtest questions; retaining the historical draft does not grant
  permission to create a free Truth.
- Verify individual abilities and setting exceptions against the active
  branch; a shared design standard is not proof of each entry's amendment.
- Typst compilation, PDF rebuilding and layout verification remain for
  the later rebuild pass.

## Resolved earlier note

The previous Rival Hunters item was resolved in the inspected
`tod-setting-rules-8.typ` §10.4: rival crews use Module E.10 when Module E
is in use, otherwise Module C.5, with one World Turn per stay when
Modules D and E are used. The setting book includes that source. This
retains the earlier inspection record, not a new compilation claim.

## Credits

C.7 is adapted from the structure of Entanglements by Ewen Cluney (2015).
C.8 and E.1A are adapted from Long Knives in Situations for Tabletop
Roleplaying by Levi Kornelsen. The rules text is original, but check both
licences and credit them in the acknowledgements before publishing.
