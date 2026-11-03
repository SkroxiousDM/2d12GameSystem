# Phase 1 rulings: implementation tracker

This file is a navigation index. The numbered history files preserve the previous tracker's wording and document order; they are not independent current-status ledgers.

## How to read the history

- Read the files in numeric order. Numbers identify original document order, not newly assigned dates or audit IDs.
- Earlier pending statements remain historical. Consult subsequent entries for scoped completions and supersessions; do not treat an earlier checkpoint as the latest status.
- References such as “below” and “at the end of this tracker” retain their original wording and refer to the original document sequence.
- Source implementation, reference clearance, build verification, playtest validation and release completion remain separate statuses.
- This structural migration makes no new rules decisions and does not close Phase 1.

## Implementation history

1. [Opening, scope and initial batches](phase1-implementation-history/01-opening-and-initial-batches.md)
2. [Area Rule, adversaries, Descriptor names and Legacy](phase1-implementation-history/02-area-adversaries-and-retirements.md)
3. [Killing strikes, reputation guidance and recovery](phase1-implementation-history/03-frontier-strikes-reputation-and-recovery.md)
4. [Boss phases, Fail-safe, Major pricing and contradiction fixes](phase1-implementation-history/04-bosses-pricing-and-contradiction-fixes.md)
5. [Relocation, Frontier options and recovery mappings](phase1-implementation-history/05-relocation-options-and-recovery-mappings.md)
6. [Remaining implementation by decision — historical checkpoint](phase1-implementation-history/06-remaining-implementation-checkpoint.md)
7. [Unresolved details and verification — historical checkpoint](phase1-implementation-history/07-deferrals-and-verification-checkpoint.md)
8. [Subsequent Frontier findings](phase1-implementation-history/08-subsequent-frontier-findings.md)
9. [Residual P1–P4 and IS-01–IS-05 completion](phase1-implementation-history/09-residual-p1-p4-and-is-completion.md)

## Related records

- [Controlling decisions](rules-audit-phase1-decisions.md)
- [Area Rule and Interpose draft](area-rule-and-interpose-rewrite.md)

Separate completion reports and the root changelog remain unchanged by this migration.

## Documentation reconciliation — 2026-11-02

### Historical setting-design index

- [The setting-design document](testament-of-dust-setting-design-document.md) is now a navigation index for 23 historical records. Commit `661272f0099317c84814cf089abfa54f0eb08390` replaced only that entry point with the reviewed Option B index; the 23 historical records were not changed by that commit.
- The 20,242-byte index has Git blob SHA `82959bcd73dbf954dabfe3580280497fb8aa54af`. It retains the historical-status warning, current-source links and document-order navigation. All 145 original heading destinations are represented: 144 explicit forwarding entries and the document title. An additional forwarding entry preserves the stale Appendix B `DRAFT` alias alongside the actual `APPLIED` heading.
- Compatibility navigation is two-step: an old fragment identifies an entry in the index, and its link opens the containing historical record rather than the original subsection directly. Historical status labels, reproduced procedures and source paths are not current rules clearance or new lore decisions.

### Local browser check and validation limits

- Local headless Chromium 134.0.6998.35 tested a reconstructed index whose bytes matched the committed blob SHA. With Mistune 3.1.3 rendering, all 146 fragment checks passed and all 145 forwarding-link click checks reached the expected destinations across 23 local historical-record fixtures. Both the actual Appendix B heading and stale `DRAFT` alias passed; no failures were recorded.
- This was not a live GitHub browser test. All requests were served locally; destination fixtures were reconstructed historical sections rather than fresh repository downloads. The title heading ID was assigned in the local test setup. GitHub's automatic heading-ID generation and handling of custom HTML IDs remain unverified.
- These navigation checks do not establish Typst compilation, PDF rebuild, rendered rulebook layout, numerical recalibration, mechanical reference clearance or playtest validation.

### Remaining documentation commits and Phase 1 status

- This tracker-only reconciliation does not complete the three-document reconciliation. The root changelog still requires its own separate exact-content confirmation and commit; this update does not modify it or any historical record.
- Earlier checkpoints and supplemental completion records retain their original scope. The broader audit work, remaining-task categories and preserved deferrals recorded in the implementation history remain open; this note neither reopens scoped completions nor clears uninspected passages.
- Phase 1 remains open. Source implementation, reference clearance, build verification, playtest validation and release completion remain separate statuses. The full PR diff review against current main remains a pre-merge gate; this documentation update does not merge the branch or change main.

## Last One Standing: scoped source completion — 2026-11-02

- Designer-selected choice 1 permits continued action without delaying Dying or death. Implemented in `docs/TestamentOfDust/tod-playbooks-sellsword.typ` §1.1, Last One Standing, by commit `bbeabd63ccb953d04d2f0fd91f6e6418bd6bb40f` (`rules: clarify Last One Standing without delaying Dying`). The complete diff was inspected: one file, 1 addition and 1 deletion, replacing only the ability row; no unintended changes were found.
- Once per scene, a harmful status reaching tier 6 after Resistance and stacking can trigger continued action despite that status's Taken Out or incapacitating outcome until scene end. Record the status and its normal Scar immediately and retain applicable penalties. If the harm makes the character Dying, start and advance the core clock normally, including further harm. The ability does not stabilise, delay death or prevent a resolved immediate-death outcome, and ends on death.
- The exception applies only to the triggering status; other conditions can still prevent action. It grants no extra actions, pool or Disposition restoration, postponed defeat or reopening of a settled conflict. At scene end apply any remaining incapacitation from that status; if its incapacitating condition has been removed, the ability imposes no new Taken Out result. This does not grant recovery from a separate earlier Sun-Sick 5 collapse.
- This entry records the named source implementation only. The Last One Standing controlling-decision reconciliation and other reference coverage remain separate. Its changelog entry requires separate exact-content confirmation and commit after this tracker checkpoint. Earlier Sun-Sick/staking tracker reconciliation and the broader killing-strike/staking/tier-6 pass are not completed by this update. Existing tracker text, nine history links and historical checkpoint wording are preserved.
- No Typst compilation, PDF rebuild, rendered-layout verification, numerical recalibration, fight rerun or playtest validation was performed. The expanded ability row's rendered fit remains unverified. Phase 1 remains open; full PR diff review against current main remains a pre-merge gate. No merge, release, PR-text update or change to main is included.

## Setting-neutrality corrections SN-01–SN-04 — 2026-11-03

- SN-01 and SN-02 were implemented in commit `a4322184dec11e100580e7426c57fe80100a2a22` (`rules: remove setting dependencies from treatment and deferred injuries`). Core Rules §6.6 in `docs/2d12System/chapter-2.6.5-recovery.typ` names the generic skill Tech rather than setting-specific Science for damaged machines or implants; Craft, tools and access remain. Generic Adversaries §6.12 in `docs/2d12System/chapter-adversaries-part-2.typ` now applies to Specials that explicitly refer to it and takes the incoming status and tier from the Special, with generic Shock Field as the example. The hardcoded Feed/Bled example was removed; timing, payment, Resistance, stacking and compromise procedures remain unchanged. The complete commit diff was inspected: two files, three line replacements and no unintended changes.
- SN-03 and SN-04 were implemented in commit `fe83b4df164c56c95903c659b0be0f6ecc27e32c` (`docs: remove Testament of Dust wording from generic core`). The core-book colophon now attributes the acknowledgement to The 2d12 System, retaining its separate-setting identification of Testament of Dust. Core Rules §6.8 substitutes “advanced technology” for “old-world works” in adaptation guidance. The complete commit diff was inspected: two files, two line replacements and no unintended changes. No new mechanics were introduced.
- This records only the four named corrections. The prior read-only setting-neutrality pass covered 14 active source files and identified uninspected active core fragments, Modules E–F and nested includes, generic Descriptors/Playbooks/Focuses, Quick Reference and common helpers. That broader audit and Phase 1 remain open; no exhaustive setting-neutrality clearance is claimed. No Typst compilation, PDF rebuild, rendered-layout verification or playtest validation was performed. Full PR diff review against current main remains a pre-merge gate; this update does not merge or release the branch.
