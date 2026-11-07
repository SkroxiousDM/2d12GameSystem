# Conflict compatibility review status

Recorded: 2026-11-07. Branch: `draft/conflict-system-rewrite`.

This is a source-edit ledger for compatibility batches 13–35, not a
completion certificate for the full rewrite. Earlier batches are outside
this ledger's scope. Batch 36 adds this record only. It does not change
rules, resolve balance questions or update the root changelog or Phase 1
implementation tracker.

## Completed source batches

The commits below record the approved source edits. Their presence does
not establish successful compilation, rendered layout or playtest results.

| Batch | Commit | Scope |
|---|---|---|
| 13 | `d9d2e2b8431f6d664f67f0a01c6ab8ad9eb87a6f` | Resistance/Harm, recovery and shared playbook/equipment compatibility. |
| 14 | `50d99b80a86852c107f51cec8275fcedccaeb187` | Core design notes: current setup, damage guidance and historical simulation caveats. |
| 15 | `6ea7615b041fd1cb1c4d33c9ddff18e81639f77c` | Adversary procedures, references and example; legacy calibration and Special timing flagged. |
| 16 | `184bc0a6a27bd6a75a88c2fa69ddb39e8fab7f49` | Added the worked scripted-conflict example. |
| 17 | `e42ad9437c1b981b7ac547cba783ffc6d6aacf7a` | Downtime/conflict boundaries and Ysolde's strenuous-activity contradiction. |
| 18 | `e6907277e20578c8ac5c4d66b6a839c4329d425e` | Cypher/artifact Power, timing, harm, healing and protection boundaries. |
| 19 | `957af5d543633c5c7c5449e0a753d3c9acf8c5c2` | Grind/Travel and core clock compatibility; unresolved interactions retained. |
| 20 | `ae15b895946b702a025ddde828f6e18399ed603e` | Truth/sandbox scope, rumour findings and faction-procedure replacements. |
| 21 | `9134535ed405e94bd870f3094b409240b7c35480` | Inquiry payments, Insight scope and continuing-conflict boundaries. |
| 22 | `47b28f4ae2d198ca1c78b5449fb876d70c616fed` | Playbook/Focus design notes: discounts, automatic success and proposal status. |
| 23 | `a91b9e46c2f568fc8da29f12d2b9234c87e65541` | Shared Focus reminders and the explicit Create discount exception. |
| 24 | `75e494d109393fb82c1ab6e3fc802dece3c83482` | Story-map conversion to faction records and the pre-play incident boundary. |
| 25 | `001ebfb674d3519a8816baaac537bd94ae2dd2c9` | Tychē timing, zero Resistance cost and Refresh accounting. |
| 26 | `ad0b7e5ed32672e8df8e072c33b02422e37925f8` | Advancement summary: Focus thresholds, veteran costs and capstone prerequisites. |
| 27 | `7789151735ed1606e8787d6f1b639ae0ab013286` | Core Playbooks overview and acquisition summary. |
| 28 | `585dd072a228f373dd2d42d6eae31ac0cd39ef1f` | Starting faction Standing, personal exceptions and pacing caveats. |
| 29 | `9e91baeb84d0864a1a03131852bf12724545c7ec` | Faction obligations, played conflicts and organizational damage boundaries. |
| 30 | `2ab0cb2e063711d83e6aa6c04cb4ba605267f9ca` | Design Pillars modifier summary and module-combination guide. |
| 31 | `f0d75fb60d17c5cb1ed245faf9aa66449c3bc021` | Character Creation: Instinct timing, Tychē carryover and load-out selection. |
| 32 | `b0f8c770d4a328cf415b6cca5940242edbe516ea` | Core Effort payment limits and setup Help's unresolved cost. |
| 33 | `ca6f7f37b9951ddeaa9e4a21403a5218c969db18` | Faction request checks, support exceptions and accompanying participants/assets. |
| 34 | `849a8fea9da8d3c638e83f356250c5efb0c8d548` | Worked-example advancement/recovery assumptions and the unexplained guard cost result. |
| 35 | `ba5e4b2be2588112f569710b1cca5880f882b8cd` | Draft-status documentation, Legacy header completion and active source pointers. |

## Source roles

- `../chapter-2-core-rules.typ` includes the active conflict sources
  `../chapter-2.10-conflict-system.typ` and
  `../chapter-2.10-area-and-interpose.typ`.
- `chapter-2.10-conflict-system-rewrite.md` is a design proposal, not the
  included conflict source.
- `conflict-shared-rules.md` records the approved design standard. It is
  not proof that every individual ability or setting entry is amended.
- `legacy-pool-6.9.typ` is retired historical text. It grants no active
  currency, Keepsake or Echo rule.
- See `README.md` for included fragments, module replacements and credits.

## Remaining rulings and review questions

These are recorded questions, not new restrictions or resolved decisions.
Check the current affected entry before changing it.

- Core conflict setup Help's pool-point cost.
- Exceptional doubles against opposed totals and Woe generation for
  losing versus tests.
- The complete action-by-action permission list for supplementary Effects.
- Existing playtest flags for Feint versus Maneuver, Superiority
  symmetry/eligibility and area-effect balance.
- Adversary encounter calibration under divide-by-three PC setup, boss
  phase triggers and incomplete Special timing/package-credit wording.
- Cypher scripted-action mappings and reaction timing where not specified.
- Grind condition Resistance, incidental-roll and partial-exchange timing,
  hard-stretch tick accounting and unspecified travel-option Power prices.
- Inquiry's unspecified payment source for extending an Insight Truth.
- Deferred Region/Campaign Truth exceptions, including historical Echo
  proposals; no active permission follows from retaining a draft.

## Verification still required

1. Audit individual abilities and setting exceptions against the active
   branch, including the earlier review list for Deadly Precision, Awaken
   the Blood, The Reveal and staking interactions. This ledger does not
   classify each as complete or pending without that inspection.
2. Complete the active-source sweep for retired Legacy currency, death
   triggers and obsolete section references; preserve historical records
   and ordinary narrative uses of the word legacy.
3. Reconcile the root `CHANGELOG.md` and Phase 1 implementation tracker
   with the controlling decisions and actual source commits. The root
   changelog already records Legacy retirement; the drafts README's
   request to verify tracker/changelog coverage is not evidence that
   those records are absent. The full compatibility-batch ledger here
   has not itself been copied into either record.
4. Compile the current core and setting books, rebuild PDFs and inspect
   rendered layout, tables, cross-references and character-sheet panels.
5. Run the relevant playtests and recalibrate numerical guidance. Historical
   simulations and approximate pacing tables are not validation of the
   current review branch.

No current-branch compilation, PDF rebuild, rendered-layout verification
or playtest is claimed by this record.
