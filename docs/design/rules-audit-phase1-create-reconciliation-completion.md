# Phase 1: Wider Create reconciliation completion record

Date: 2026-10-31.
Branch: `boss-phases-fixed-thresholds`.
Verified source checkpoint: `45107e5cf368895954aaed3686b49333b42563de`.

This supplemental implementation record and Unreleased changelog addendum documents designer-approved source changes, a structural split and a corrective commit. It supplements the controlling decisions, original implementation tracker and root changelog; it does not update those files in place, close Phase 1 or establish a built release.

## Related records

- `rules-audit-phase1-decisions.md`
- `rules-audit-phase1-implementation.md`
- `rules-audit-phase1-create-grants-completion.md`
- `rules-audit-phase1-frontier-options-sweep.md`
- `rules-audit-phase1-frontier-options-completion.md`
- `rules-audit-phase1-remote-harm-completion.md`

Earlier completed grants and option fixes remain settled within their recorded scope. This record does not reopen them.

## Adversaries structural split

Commit: `e9d9aacf8b683924bc25f1c278bb13ba6b77115e`.

- `docs/2d12System/chapter-adversaries.typ` retains the chapter opening and sections 1-5, then includes `chapter-adversaries-part-2.typ`.
- `docs/2d12System/chapter-adversaries-part-2.typ` imports `common.typ` and contains sections 6-8, including Last Stand, Fail-safe, Boss Phases, Running an Exchange and the Quick Checklist.
- The existing rulebook entry point is unchanged. No existing layout block was split or reopened.
- The complete uploaded original matched repository blob `d14a937dd9de7f3a6cf3707717b77bd87c7559cd`. Removing the added import/include and rejoining the prepared fragments reproduced that original exactly. The committed fragment hashes matched the prepared files.
- This was a structural-only commit. Shape the Ground and all other rules were unchanged by the split. Source preservation does not establish compilation or identical rendered layout.

## Six approved source replacements

Commit: `e069e2c8add60b2de3866f97756cad65b37551b4`.

1. `docs/2d12System/chapter-5.5-savant.typ`, Analyze: creating a Truth that exploits a revealed weakness receives an explicit 1-Power discount, minimum cost 1. The existing Discover benefit and weakness requirement remain.
2. `docs/2d12System/chapter-5.6-interlocutor.typ`, Silver Tongue: creating a Truth about a target's attitude with Persuade or Deceive receives an explicit 1-Power discount, minimum cost 1. The generic ability's attitude scope and examples remain; it is not broadened to the Broker's scope.
3. `docs/2d12System/chapter-5.8-adept.typ`, Ritual: use 8 segments for Formidable workings and 12 for Heroic workings; a Region result requires at least 12. Use the larger requirement from working scope and Truth layer. Prerequisites and the clock-instead-of-single-roll procedure remain.
4. `docs/TestamentOfDust/tod-playbooks-occultist.typ`, Ritual: applies the same larger-requirement rule, preserving its setting examples and prerequisites.
5. `docs/2d12System/chapter-adversaries.typ`, Shape the Ground: once per scene, create one rank-1 scene Truth for either 1 Woe instead of 2 Woe, or 1 Power from a Maneuver. Neither option includes a higher-rank purchase. This is a named fixed grant, not a general Create discount.
6. `docs/2d12System/chapter-3-module-a-cyphers-and-artifacts.typ`, Using one: when a cypher has a fixed listed Truth result, unused tier-generated Power may pay for additional rank or duration purchases that the effect permits. Any Power still unspent becomes Momentum. Surplus does not authorize an otherwise prohibited upgrade or bypass Site or Region clocks.

Ritual sizing, Shape the Ground and cypher surplus are selected and implemented rulings, not unanswered designer decisions. No Campaign-Truth exception is introduced by the Ritual clarification.

## Diff findings and alignment correction

The complete `e069e2c` diff contained eight line replacements across six files: the six intended source replacements plus two unintended signature-equipment table alignment changes in Interlocutor and Adept.

Corrective commit: `45107e5cf368895954aaed3686b49333b42563de`.

- Restored `align: (auto,auto,auto,),` in the signature-equipment table of each affected file, replacing the accidentally shortened `align: (auto,auto,),`.
- The complete corrective diff was inspected: exactly two lines replaced across two files, with no other changes.
- All six approved rules replacements remain intact. Do not describe `e069e2c` alone as a clean six-line-only diff; retain this correction history.

## Preserved rulings and deferred questions

- Ordinary Create remains 2 Power per Truth rank; each explicit discount is minus 1 Power, minimum 1.
- Whether multiple eligible discounts combine, and whether discounts modify named fixed-price effects, remains flagged for playtesting. Existing one-cost-reduction reminders are unchanged; no new stacking model is selected here.
- Other named fixed prices, explicit free grants, character power tags, protective statuses and bespoke procedures are not repriced or generalized by this batch.
- Trapmaker's preparation, free Trapped Truth and automatic triggered Attack; Garlic and Iron's village-help Site-Truth procedure and 6-segment breaking clock; Feedback; Take the Hand; completed companion fixes; and the exact selected Cyborg Hunter wording are preserved.
- Deferred Region/Campaign grant exceptions and the Campaign Truth limit remain open. The Ritual rule does not settle capstone exceptions, The Ancestor's Notes, Legend Without a Name, The Family Name or other higher-layer grants.

## Changelog addendum - Unreleased

- Split the core Adversaries chapter into two included source fragments without changing its rules (`e9d9aac`).
- Clarified Analyze and generic Silver Tongue as explicit minus-1 Create discounts, minimum 1 (`e069e2c`).
- Reconciled Adept and Occultist Ritual clocks using the larger scope/layer requirement; defined Shape the Ground as a fixed rank-1 scene grant; and clarified permitted cypher upgrades and surplus Momentum (`e069e2c`).
- Restored two signature-equipment alignment lines accidentally changed in that source commit (`45107e5`).

## Remaining work and validation limits

- Complete remaining active-source/reference checks and record their actual coverage. The scoped wider comparison and these source replacements do not establish exhaustive clearance of every ability, item, Special, example, summary or included fragment.
- Reconcile controlling decisions, the original tracker, the Frontier sweep, supplemental records, root changelog and relevant design/PR status notes. Preserve historical findings while identifying subsequent resolutions.
- Never overwrite a repository file from a truncated response. Supplemental records do not claim in-place reconciliation of the root changelog or original tracker.
- This documentation-only addition changes no rules, main, historical playtest records or PDFs.
- No Typst compilation, PDF rebuild, layout verification, numerical recalibration or playtest validation was performed for these scoped changes or claimed by this record.
- Phase 1 remains open. Source implementation, source/diff verification, build verification, playtest validation and release completion remain separate statuses.
