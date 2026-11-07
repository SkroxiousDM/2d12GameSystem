# Gap-audit drafts

Status: the active Typst fragments listed below are wired into the book.
The Legacy draft is retained as a historical design record but is not
included in the active rules. The two earlier patch files were applied
inline and deleted. Markdown decisions, audits and ledgers are not
included rulebook sources.

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
| conflict-compatibility-status.md | Historical batches 13–49 ledger plus later source integrations and scoped supersession notes; not a full-rewrite completion certificate. |
| conflict-ability-audit.md | Dated batch 37 inspection with preserved quotations/blob SHAs and a later follow-up addendum. Historical open questions are not all current unresolved rulings. |
| batch-51-core-rulings.md | Approved decision package; active Core Rules §§2, 5 and 10 implementation is recorded by the source commits below. The decision document's older pending-implementation status still needs reconciliation. |
| batch-52-furcifer-rulings.md | Approved 37-ruling Furcifer package, updated to record its scoped active-source implementation. |
| batch-52-implementation-status.md | Scoped Batch 52 implementation and remaining reconciliation/validation record. |

### Active conflict source assembly

The core chapter includes `../chapter-2.10-conflict-system.typ`
(introduction and §§10.1–10.7). That file includes
`../chapter-2.10-conflict-system-aftermath.typ` (§§10.8–10.16).
Scenery Maneuvers and their supporting paragraphs are in the aftermath
file at §10.8. Do not also include the aftermath file in the parent book;
that would render the second part twice.

The core chapter separately includes `../chapter-2.10-area-and-interpose.typ`,
containing Area Effects §10.17 and Interpose §10.18. The split preserves
section numbering. Use these active sources for implementation checks
rather than treating an earlier proposal or historical fragment as a
replacement rule.

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

### Later conflict integration

- `b5b1827d42f6fad7b008d2ef7c222b0c46edf8f1` implements Batch 51's §10 procedures and the two-part source split. `f9c2ca265b6231843854ca1ef6c95d46c6bb6c4f` reconciles Core Resolution and Effects. Setup Help, versus doubles/Woe and supplementary permissions are no longer unresolved core decisions.
- `ca671c6a1e27c4a433cd9209e13a69658ec527c8` implements Batch 52's shared opening, Opportunist and Deadly Precision in active Furcifer source. Its intentional combined offensive increase remains unplaytested.
- `ceea15187019ba2d9ed34f9d5effd49e27945b0f` extends the compatibility ledger with eight later source commits and distinguishes decision records from implementation. Read its scope notes rather than assigning unverified batch numbers to other commits.
- `ec778fc22c48789df1245cf828352835c2ec4a37` reconciles the core Quick Reference with Batch 51–52 procedures, including the Furcifer reminder. This is summary source integration, not a layout or full-book verification claim.
- The ability audit's follow-up addendum links later replacements while preserving the original inspection. It does not certify every generic or setting ability as reviewed.

## Open items

- Reconcile root changelog and Phase 1 implementation-tracker coverage
  against actual decisions and source commits. The ledger records that
  Legacy retirement already has coverage; do not infer its absence from
  the older README request to verify it. This update does not perform a
  fresh root-document audit or amend those records.
- Reconcile Batch 51's decision-document status and other remaining
  shared guidance/status notes. Quick Reference source reconciliation
  is recorded above, not pending as an untouched source; its expanded
  layout still requires verification.
- Complete the active-source sweep for remaining Legacy currency,
  death-trigger and §6.9 references. Preserve historical playtest
  records and ordinary narrative uses of the word legacy.
- Echo and other Region/Campaign Truth exceptions remain deferred
  playtest questions; retaining the historical draft does not grant
  permission to create a free Truth.
- Verify individual abilities, setting exceptions and related summaries
  against the active branch; use the audit's follow-up and ledger to
  distinguish implemented replacements from uninspected entries.
  Negative-Edge/highest-die thresholds, Awaken the Blood, staking
  interactions and unrelated deferred questions are not resolved here.
- Typst compilation, PDF rebuilding and layout verification remain for
  the later rebuild pass, including the split conflict chapter,
  expanded Furcifer entry and Quick Reference. Playtesting and numerical
  recalibration remain pending.

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
