# Changelog

This file is the changelog entry point. Existing entries have been moved verbatim into the numbered files below, preserving their original document order and release classification.

## [Unreleased]

New Unreleased entries belong here, above the history links. The linked Unreleased records remain unreleased; moving them does not publish a release or mark an audit complete.

### Restricted staking equivalence — 2026-11-02

- Added restricted staking equivalence to Frontier Rules §8.1 in `docs/TestamentOfDust/tod-setting-rules-8.typ`, commit `08699c64a41cb87e3988249f235f4e8a0a7b9d11`: while staked, a vampire meets sustained fire's physical tier-5 broken prerequisite; subsequent killing-strike rolls use effective tier 5 (−15 Difficulty) or a higher actual negative-status tier, not both. Eligible killing-strike ability reductions still apply.
- Staked remains untiered and grants no other broken-state equivalence: no effect on staking rolls, other tests, status-tier penalties, Blood Debt, recovery eligibility or ability triggers; it does not make the vampire sleeping or a husk. It cannot be purchased in tiers, stacked, reduced by status-tier healing or advanced to tier 6. Additional stakes grant no further benefit. Staking grants no Scar, Dying, destruction, extra action, volley or automatic killing strike. Removing the stake ends both equivalences without clearing actual statuses or undoing settled outcomes; the existing no-action/no-recovery condition and shared-Disposition procedure remain.
- Updated the Frontier character-sheet insert in commit `471b4bd8a6b8d8dc611726848b182dbbea98a91a` and the setting book's Frontier Quick Reference in commit `ac48fa68ed588d89701de296d27692b84d5167f3`. Each updates the sustained-fire reminder, restricted-equivalence summary and corresponding Hard to Kill fire reference. Sunlight and unrelated wording remain unchanged, including the sheet's human-blood recovery timing.
- Inspected the complete diffs: source commit, one file with 9 additions and no deletions; each reference commit, one file with 4 additions and 2 deletions. No unintended changes were found in those committed diffs. The withdrawn confirmation payloads were not committed.
- This entry records only the restricted staking source and named reference reconciliation. Controlling-decision and tracker updates, sunlight-exception summary reconciliation, remaining killing-strike/tier-6 coverage and validation remain separate work. Phase 1 remains open. No Typst compilation, PDF rebuild, rendered-layout verification, numerical recalibration, fight rerun or playtest validation is claimed. Full PR diff review against current main remains a pre-merge gate; no merge, release, PR-text update or change to main is included.

### Sun-Sick 6: Dying, rescue and Scars — 2026-11-02

- Clarified Frontier Rules §7.1 in `docs/TestamentOfDust/tod-setting-rules.typ`, source commit `852c81b919d29684fb9ae1ee195d0385851c0940`: a dhampir reaching Sun-Sick 6 through full-day exposure remains Taken Out and gains the normal Sōma Scar, subject to core episode/event limits; when established lethal stakes permit, start the core three-segment Dying clock. Becoming Dying does not give an additional Scar.
- Selected both sunlight-specific rescue provisions: removal from harmful sunlight automatically stabilises sunlight-caused Dying without erasing recorded segments; existing shade/darkness recovery counts as definitive care when it lowers Sun-Sick below 6 and harmful exposure has ended, clearing that clock. Recovery and clock clearance do not remove the Scar. Repeated exposure follows core Scar Recorded and Dying rules; these rescue provisions do not stabilise or clear a clock caused by a separate injury.
- Preserved the tier-5 cap on ordinary Sun-Sick gains and stacking, existing exposure and recovery rates, and the vampire's full-day destruction outcome without a Dying clock. The source commit changed one file with 17 additions and 1 deletion; its complete diff was inspected with no unintended changes found.
- Recorded the scoped designer ruling under §4 of the [foundational controlling decisions](docs/design/phase1-decisions/01-foundational-decisions.md) in commit `8eceb9e0efd3d5fbee2d549960c7e816ed87c959`: 10 additions, no deletions, one file; the complete diff was inspected and existing rulings and the broader verification warning were preserved.
- This entry reconciles only the named Sun-Sick source implementation and controlling ruling. The broader killing-strike/staking/tier-6 pass, general §5.2 cap and Quick Reference exception wording, other reference coverage and tracker reconciliation remain separate work. Phase 1 remains open. No Typst compilation, PDF rebuild, rendered-layout verification, numerical recalibration, fight rerun or playtest validation is claimed. Full PR diff review against current main remains a pre-merge gate; no merge, release, PR-text update or change to main is included.

### Documentation reconciliation — 2026-11-02

- Replaced the [historical setting-design entry point](docs/design/testament-of-dust-setting-design-document.md) with the reviewed Option B navigation index in commit `661272f0099317c84814cf089abfa54f0eb08390`. The 23 historical records were unchanged by that commit. The 20,242-byte index retains the historical-status warning, current-source links and document-order navigation; its Git blob SHA is `82959bcd73dbf954dabfe3580280497fb8aa54af`.
- Preserved all 145 original heading destinations through 144 explicit forwarding entries and the document title, plus a separate stale Appendix B `DRAFT` alias alongside the actual `APPLIED` heading. Forwarding links open the containing historical record, not the original subsection directly. Historical status labels and reproduced procedures do not establish current rules clearance or new lore decisions.
- Reconciled the [implementation tracker](docs/design/rules-audit-phase1-implementation.md) in commit `34336dbe5e820cdb2a76a970d2ef517bb60660c9`: 20 lines added, no deletions, no other files changed. Existing tracker text and all nine implementation-history links were preserved. Its statement that the changelog remained pending records the checkpoint before this separate changelog commit.
- Recorded local headless Chromium 134.0.6998.35 checks against a reconstructed index whose bytes matched the committed blob: all 146 fragment checks and all 145 forwarding-link click checks passed across 23 local historical-record fixtures, including both Appendix B destinations. Rendering used Mistune 3.1.3; all requests were served locally. Destination fixtures were reconstructed sections, not fresh repository downloads, and the title heading ID was assigned in the test setup. Live GitHub rendering, automatic heading-ID generation and handling of custom HTML IDs remain unverified.
- This changelog-only entry completes the narrowly scoped setting-index, tracker and changelog documentation reconciliation. Existing changelog wording, release classifications and numbered history records are preserved; earlier checkpoints and scoped completion records retain their original scope. It does not reconcile the entire earlier backlog, reopen scoped completions or clear uninspected passages. Existing former-changelog heading compatibility still requires its separate review.
- Phase 1 remains open. Broader audit work, remaining-task categories and preserved deferrals remain open. Source implementation, reference clearance, build verification, playtest validation and release completion remain separate statuses. This documentation pass establishes no Typst compilation, PDF rebuild, rendered rulebook layout verification, numerical recalibration, mechanical reference clearance or playtest validation. Full PR diff review against current main remains a pre-merge gate; this update neither publishes a release nor merges the branch or changes main.

### Existing Unreleased records

1. [Latest Phase 1 entries: 2026-11-01 and 2026-10-31](docs/changelog-history/01-unreleased-latest-phase1.md)
2. [Entries dated 2026-10-30](docs/changelog-history/02-unreleased-2026-10-30.md)
3. [Entries dated 2026-10-25 through 2026-10-18](docs/changelog-history/03-unreleased-2026-10-25-to-10-18.md)
4. [Rebrand and setting history, including the following undated status note](docs/changelog-history/04-unreleased-rebrand-and-setting-history.md)
5. [Early and undated Unreleased entries](docs/changelog-history/05-unreleased-early-and-undated-entries.md)

## [0.1.0] — 2026-05-25

- [Original release record](docs/changelog-history/06-release-0.1.0.md)

## Reading the preserved records

- Read numbered files in order to follow the original changelog sequence. Numbers identify document order, not new release versions.
- Original dates, undated entries, historical paths and supersession notes are unchanged. Do not infer dates or release status for undated entries.
- Earlier descriptions may be superseded by later entries or current rules. Moving an entry does not reconcile its historical status wording.
- The original introduction and formatting note are retained in the first history file.
- Existing links to individual headings in the former single-file changelog require separate compatibility review.
