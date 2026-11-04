# Phase 1: Create-and-Disposition reference pass completion record

Date: 2026-11-01.
Branch: `boss-phases-fixed-thresholds`.
Inspection checkpoint: `694dafdae03960f58f181483dbc944c72dae682b`.
Final source checkpoint for this batch: `805a006970ed3269eac7c994bce93302e1bf3e49`.

This supplemental implementation record and Unreleased changelog addendum documents a scoped read-only reference pass, subsequent designer rulings and their approved source implementation. It does not update the controlling decisions, original implementation tracker or root changelog in place, establish exhaustive reference clearance, close Phase 1 or constitute a built release.

## Related records

- `rules-audit-phase1-decisions.md`
- `rules-audit-phase1-implementation.md`
- `rules-audit-phase1-create-grants-completion.md`
- `rules-audit-phase1-create-reconciliation-completion.md`
- `rules-audit-phase1-frontier-options-sweep.md`
- `rules-audit-phase1-frontier-options-completion.md`
- `rules-audit-phase1-remote-harm-completion.md`

Previously completed rulings remain settled within their recorded scope. This pass does not reopen them.

## Read-only inspection coverage

The branch HEAD was verified before inspection. The following 18 files were retrieved completely at the inspection checkpoint.

Under `docs/2d12System/`:

- `chapter-2.10-conflict-system.typ`
- `chapter-2.10-area-and-interpose.typ`
- `chapter-2.14-design-notes.typ`
- `chapter-2.9-momentum-and-woe.typ`
- `the-2d12-system-v2-core-rulebook.typ`
- `chapter-2-core-rules.typ`
- `chapter-3-module-e-factions.typ`
- `chapter-3-module-f-inquiry-and-revelation.typ`
- `drafts/module-c-7-8-entanglements-long-knives.typ`
- `chapter-3-module-e.7-favours.typ`
- `drafts/module-e-1a-starting-cluster.typ`
- `chapter-adversaries-part-2.typ`
- `chapter-4-descriptors.typ`

Under `docs/TestamentOfDust/`:

- `tod-character-sheet-page.typ`
- `2d12-character-sheet-v2.typ`
- `testament-of-dust-v2-setting-book.typ`, including its Frontier Quick Reference
- `tod-descriptors.typ`
- `tod-playbooks-sellsword.typ`

Earlier session reads of the Create rules, generic abilities, Frontier options and core Quick Reference supplied supporting evidence; they were not all freshly reread during this 18-file pass. The three CD-07 source files were subsequently retrieved completely when preparing their implementation.

No retrieval in the scoped inspection was truncated. Reading an include file does not, by itself, establish complete inspection of every fragment it names.

## Consistency findings

Within the inspected passages:

- Core conflict §§10.2–10.3 use the selected divide-by-3 setup formula, helpers and flat modifiers at full value, minimum 1 before Superiority, and Superiority alone reducing starting Disposition to 0.
- Core conflict §§10.6–10.7 distinguish shared Disposition loss from individual statuses, pool depletion and participant removal.
- Core conflict injury-trade, independent-action and order-of-resolution passages retain the selected separation of costs and effects.
- Area Effects and Interpose retain shared loss, explicit-status handling, separate Resistance/reduction and no personal Disposition shares.
- Active design notes identify older simulations as historical rather than validation of the current setup.
- Adversaries part 2 retains shared recovery, reinforcement increases, no automatic removal subtraction, fixed phase references and the selected volley timing.
- Frontier sheet and setting Quick Reference distinguish staking from normal Attack loss and do not subtract Disposition when one vampire is removed.
- Faction procedures preserve scoped Truths, explicit project outcomes, larger-layer requirements and no automatic Superiority from Standing.
- Off-screen faction actions discarding uncommitted Power remain an explicit organizational exception, not a contradiction of the cypher-surplus rule.

No new obsolete setup formula, personal-Disposition track or spill-over procedure was identified in the newly inspected passages. This is a scoped finding, not repository-wide clearance.

## Findings and implemented resolutions

### CD-01 — Momentum gain summary

File: `docs/2d12System/chapter-2.9-momentum-and-woe.typ`, §9.1.

The gain summary now includes unspent cypher Power as permitted by Module A.1, alongside unspent Power from rolls. The party maximum of 6, decay and spend menu are unchanged.

### CD-02 — Character-sheet cypher reminder

File: `docs/TestamentOfDust/2d12-character-sheet-v2.typ`, page 2 Cyphers panel.

The reminder now states that surplus Power from a fixed listed Truth result may buy rank or duration only where permitted, with remaining Power becoming Momentum. It grants no otherwise prohibited upgrade or bypass of Site/Region clocks.

The existing over-limit/Volatile reminder, layout code, other reminders and Frontier insert are unchanged. The longer panel requires later rendered-layout verification.

### CD-03 — Compromise and Last Stand

File: `docs/2d12System/chapter-2.10-conflict-system.typ`, §10.12 introduction.

The introduction now waits until defeat at 0 Disposition becomes final and explicitly recognizes Last Stand's possible one-additional-volley deferral.

This is reconciliation with the selected timing procedure, not a new Last Stand rule. The compromise table and settlement procedure are unchanged.

### CD-04 — Included Module C draft header

File: `docs/2d12System/drafts/module-c-7-8-entanglements-long-knives.typ`.

The two opening comments now describe the fragment's existing inclusion after C.6 and the clock guidance already present in C.5. They no longer instruct that completed integration work.

The rules body is unchanged.

### CD-05 — Insight Truth grant and extension payment

File: `docs/2d12System/chapter-3-module-f-inquiry-and-revelation.typ`, F.3, Edge.

Designer-selected procedure:

- The Insight directly establishes one rank-1 scene Truth fitting what was learned, without a further Create purchase.
- Extension until the case ends costs either 1 additional Power from the Probe or, when Buying the Insight, 1 additional point from the Buy's paying pool.
- Record scope and removal condition normally; the Truth may end earlier if that condition is met.

Other Insight choices, the GM's fitting-scene veto, Probe/Buy procedures and recovery benefits are unchanged. This is a specific Insight procedure, not a general free-Create or larger-layer exception.

### CD-06 — Sellsword capstone and mixed opposing sides

File: `docs/TestamentOfDust/tod-playbooks-sellsword.typ`, A Name the Kept Know.

Designer-selected procedure:

- In Fight conflicts, reduce the opposing side's starting shared Disposition by 2 if that side includes a vampire or retainer.
- Apply the reduction once, regardless of the number of vampires or retainers.
- Normal setup modifier ordering and the minimum-1 floor remain applicable.

The capstone's Campaign Truth and separate pride-compel benefit are preserved. No personal Disposition shares or general Campaign-Truth exception is introduced.

### CD-07 — Four remaining Attack-tier bonuses

Files and entries:

- `docs/2d12System/chapter-5.3-bellator.typ`: Brutal.
- `docs/2d12System/chapter-6.8-weird-focuses.typ`: Bane.
- `docs/TestamentOfDust/tod-focuses-hunter.typ`: The Hunter's Mark and Bane of Beasts.

Designer-selected procedure:

- Preserve each entry's listed tier benefit outside conflicts.
- Eligible successful conflict Attacks gain +1 Power restricted to that Attack's Disposition-loss effect.
- This bonus grants no individual status, cannot buy another Effect and cannot become Momentum.

Brutal retains its once-per-roll limit, Power-spend trigger and Fight/Brawl restriction. Bane retains its exploited-weakness requirement. The Hunter's Mark retains its visible-vampire target, once-per-scene activation, scene duration, ally benefit and Old Door restriction. Bane of Beasts retains its existing monster scope.

These four clarifications do not reopen the six previously completed Frontier Attack-bonus conversions.

## Source commits and diff verification

| Commit | Scope | Inspected diff |
|---|---|---|
| `4beef5209150cbcbd5b4f840525322c4dcecad61` | CD-01 and CD-04 | Three lines replaced across two files: one summary line and two header comments. |
| `be55e365432a88931f2cb6b94b4c2d5ea54f377d` | CD-05 and CD-06 | Exactly two lines replaced across two files. |
| `5e19123f5fd9a3d9a91dcb049bbb8f4bbe47e36f` | CD-03 | Exactly one line replaced in the conflict-system file. |
| `82e38cc8dc8800ba9f1ff63985a35c4d4028109e` | CD-02 | Exactly one cypher-reminder line replaced in the character-sheet file. |
| `805a006970ed3269eac7c994bce93302e1bf3e49` | CD-07 | Exactly four ability lines replaced across three files. |

Each complete commit diff was inspected and contained no unrelated changes.

The batch implements ten approved passage replacements across nine files. Because CD-04 replaces two comment lines, the physical diff total is eleven lines replaced, not ten.

All approved source replacements from CD-01 through CD-07 are complete. This does not complete all Phase 1 reference checks.

## Preserved scope and deferred work

- Create remains 2 Power per Truth rank; each explicit discount is minus 1 Power, minimum 1.
- Discount stacking and discounts applied to named fixed-price effects remain flagged for playtesting. No new interaction model is selected.
- Deferred Region/Campaign grant exceptions and the Campaign Truth limit remain open.
- Superiority symmetry, opposition setup wins, simultaneous-zero setup, Rider balance and provisional Area Rule/Interpose questions remain deferred as previously recorded.
- Trapmaker, Garlic and Iron, Feedback, Take the Hand, completed companion fixes, named gear effects and the exact selected Cyborg Hunter wording remain unchanged.
- Historical playtest records, archived procedures and main were not changed by these commits.

## Changelog addendum — Unreleased

- Added explicit cypher-surplus coverage to the Momentum gain summary and character-sheet reminder (`4beef52`, `82e38cc`).
- Corrected already-integrated Module C draft-header instructions without changing its rules body (`4beef52`).
- Clarified Insight's direct rank-1 scene-Truth grant and case-length extension payments (`be55e36`).
- Clarified A Name the Kept Know as one reduction to the opposing side's starting shared Disposition, including mixed sides (`be55e36`).
- Reconciled the Compromise introduction with Last Stand's final-defeat timing (`5e19123`).
- Distinguished outside-conflict tier benefits from restricted conflict Attack Power for Brutal, Bane, The Hunter's Mark and Bane of Beasts (`805a006`).

## Remaining coverage and validation limits

- Continue the systematic checks of remaining playbooks, Focuses, items, Specials, examples, summaries, current-facing Markdown and included fragments. Preserve explicit exceptions rather than normalizing them by inference.
- The separate killing-strike/tier-6, recovery, Major-pricing, Legacy and setting-neutrality passes remain outside this scoped completion.
- Reconcile controlling decisions, original tracker, sweep reports, supplemental records, root changelog and relevant design/PR status notes. This record does not claim those files have been updated in place.
- Retrieve complete current repository contents before replacing any file; never overwrite from a truncated response.
- Numerical corrections to E.1A pacing, P, Grit and Encounter Budget, and fight reruns remain later-phase work.
- No Typst compilation, PDF rebuild, rendered-layout verification, numerical recalibration or playtest validation was performed for these commits.
- Diff inspection does not verify the longer sheet panel's layout or validate the selected procedures in play.
- Phase 1 remains open. Source implementation, reference clearance, build verification, playtest validation and release completion remain separate statuses.
