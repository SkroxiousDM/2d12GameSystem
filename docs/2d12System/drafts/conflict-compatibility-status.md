# Conflict compatibility review status

Recorded: 2026-11-07. Branch: `draft/conflict-system-rewrite`.

This is a source-edit ledger for compatibility batches 13–49 and the later
source integrations recorded below, not a completion certificate for the
full rewrite. Earlier batches are outside this ledger's scope. Batch 36
created this record; batch 50 extended it through batch 49. The later-source
extension preserves that historical table and adds scoped follow-up status.
These ledger-only updates do not change rules, resolve balance questions
or update the root changelog or Phase 1 implementation tracker.

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
| 36 | `c77a91f9fabfc04f4d6a355e661fef6789b6eb11` | Documentation only: created this compatibility ledger and remaining-work record. |
| 37 | `83cc15a52f3a2321fdb65b93a752af8d4ceac98f` | Documentation only: recorded unresolved Furcifer and combat Focus findings in `conflict-ability-audit.md`; no ability amended. |
| 38 | `220b5942a1f60eb5060887c36c163ba10bfb4649` | Focus design notes: corrected The Reveal's classification; preserved its ability entry and unresolved rulings. |
| 39 | `c79f9f83dafe058fe9c3e4155f4442d6d5d1b2fd` | Bellator: Pain Tolerance's penalty-only scope and Legend of the Field's flat setup modifier. |
| 40 | `225cffd044d3aee919ce332ac13d871ff07d9ce5` | Savant: Decipher's clock-only bonus and Master of the Field's Difficulty-versus-total boundary. |
| 41 | `d93b17eae05e950742636c12315a8fefd976103b` | Interlocutor: Command's recovery cap, Inspire's Enhance scope and Word Is Law's flat setup modifier. |
| 42 | `1223ec990df73b5cbcb71d802277661cd4807681` | Explorator: Pathfinder's Journey-clock bonus and Ambusher/At the Helm setup modifiers. |
| 43 | `b55741f8ba9fc1d5c9f2293c00b0a61791326ec5` | Adept: Focused Channel waives the base working cost, not separate costs, payments or Backlash. |
| 44 | `b6dd3fbe5ded3d753f0487c672e3126e680ee4c6` | Stealth/Precision: Bypass's clock bonus, Master Key's Difficulty boundary and Clean Getaway's setup modifier. |
| 45 | `5c367623812bf6cc1845ffb4e5f6adf8116080ea` | Knowledge: Jury-Rig tag scope/removal, Case File's clock bonus and Living Archive's Difficulty boundary. |
| 46 | `437e0d65f6376fb9fd6fb3607f4f64b3ff8f07a7` | Social: Quick Change tag scope/removal and Command the Field's flat setup modifier. |
| 47 | `fbc8518788545c8020f3550670caef0d6b007ba9` | Wilderness/Travel: Trusted Mount's flat setup modifier and Cartographer's travel Difficulty boundary. |
| 48 | `180dd8f06b8f5a28670216965a3d8e75b9627083` | Weird: Nemesis and Apex Form free bonus dice respect the normal cap and grant no extra scripted turn. |
| 49 | `6311493953181d47c88d737baa06330af434d32e` | Combat: Second Wind's bonus-dice cap, Cheap Shot tag scope/removal and Improvised Arsenal's action-tag boundary. |

## Later source integrations

The following commits extend the record beyond the batch 49 snapshot.
Rows use an established batch number where explicit; descriptive scopes
avoid assigning unverified batch numbers to the other source commits.
Each row records source integration only, not full reconciliation or
build/playtest validation.

| Work | Commit | Scope and status |
|---|---|---|
| Second Wind and Command replacements | `50b06b39b200c16856299d659c0d4baeb8a6a770` | Scoped source replacements for Second Wind's rescue response and Command's rotation benefit; supersede treating the earlier generic reminders as the final entries. |
| Smooth Recovery replacement | `8583a3131ea8aaac96a3421c1631cc406ddff5d0` | Scoped source replacement defining independent-failure conversion; the earlier versus-interaction question is no longer the current entry's unresolved mapping. |
| Withdrawal, evasion and escape replacements | `b0c2c252c5770e1deff6f47f44ee865001f9ff77` | Party withdrawal, personal evasion and escape ability replacements committed; preserve their explicit scope rather than substituting generic reminders. |
| Entry, identity and Taken Out interventions | `91464fd6d937fb59bf0b69a789bf3556f3807bc7` | Scoped source replacements for entry, identity protection and Taken Out interventions. Does not resolve unrelated Resistance-threshold questions. |
| Borrowed Might, Ward the Threshold, The Reveal and Immunity | `76e59ce5762752b515640d2aabbbbbed7dc3cd26` | Scoped replacements implement patron-powered automatic action, ward crossing, case-related setup/compromise and legal-referral procedures. The Reveal remains a setup/compromise exception, not automatic success. |
| Batch 51: conflict procedures and split | `b5b1827d42f6fad7b008d2ef7c222b0c46edf8f1` | Implements free setup Help, versus doubles/Woe and supplementary permissions in §10; splits the source before §10.8 with an explicit include. |
| Batch 51: resolution and Effects | `f9c2ca265b6231843854ca1ef6c95d46c6bb6c4f` | Reconciles Core Rules §§2 and 5 with §10: ordinary versus setup Help, Difficulty outcomes, exceptional doubles, Woe exceptions and Effects permissions. Quick Reference and broader records remain pending. |
| Batch 52: Furcifer | `ca671c6a1e27c4a433cd9209e13a69658ec527c8` | Implements the participant-specific opening, Opportunist and Deadly Precision with timing, component, stacking, area and finishing limits. Updates the decision package and adds `batch-52-implementation-status.md`; broader summaries and validation remain pending. |

### Decision records versus source implementation

- `918ead36134c750cf4834a38526e4fd9bc576c45` recorded Batch 51's approved decisions in `batch-51-core-rulings.md`; that documentation commit alone did not implement them. Use the two Batch 51 source commits above for implementation status.
- `01d7d369c39c7b21acf152e6a11cee63163c2064` recorded Batch 52's approved proposals; active Furcifer implementation followed in `ca671c6a1e27c4a433cd9209e13a69658ec527c8`.

### Current follow-up to historical questions

- Setup Help's pool-point cost, exceptional doubles against opposed totals, ordinary-failure Woe for versus losses/ties/trumped actions, and supplementary-Effect permissions are settled and implemented by Batch 51. They remain in the historical list below as earlier findings, not current unresolved core rulings.
- Batch 52 resolves the recorded Opportunist/Deadly Precision trigger, timing and component questions in active Furcifer source. Its intentional offensive increase remains unplaytested; inspect `batch-52-implementation-status.md` for scoped remaining work.
- Later ability replacements listed above supersede the corresponding earlier pending-entry notes. Preserve the dated findings and original blob SHAs; do not treat a source edit as proof that every related setting entry or summary is reconciled.
- Perfect Strike's shared exceptional-doubles procedure is settled by Batch 51. This does not by itself certify every affected entry or summary.
- Highest-die Resistance thresholds under negative Edge, uninspected setting exceptions and unrelated deferred rulings are not settled by these integrations.
- Quick Reference, the broader audit/status documents, root changelog and Phase 1 tracker still need their own reconciliation. This ledger extension does not amend those files.

## Historical limits of the individual-entry clarifications

The following notes describe the batches 39–49 snapshot. Read them with
the later integrations and current follow-up above, not as a fresh claim
that every listed question remains open.

Batches 39–49 preserve the listed numerical benefits. Their targeted
clarifications do not certify every entry in the affected files as fully
reviewed or resolved. In particular:

- Second Wind's bonus-dice-cap reminder does not settle its immediate-action
  timing, script replacement, rotation or Taken Out permissions.
- Perfect Strike's exceptional-doubles interaction remains open.
- Menacing and Unstoppable were not revised by the Bellator batch.
- Smooth Recovery's versus interaction and Command's rotation-exception
  details were not revised by the Interlocutor batch.
- The Reveal is not an automatic-success ability. Batch 38 corrected the
  design notes, not its +4 Disposition benefit or named compromise exception.
  Its eligible-conflict scope and compromise interpretation still need
  explicit review before replacement wording is adopted.
- Explicit escape, automatic-entry, pursuit-ending and Taken Out benefits
  were not silently replaced by generic reminders.
- Existing highest-die Resistance thresholds, including Trap Sense and
  Unshakeable, were not changed to settle negative-Edge interactions.
- Borrowed Might, Not Yet and Ward the Threshold were not amended by
  batch 48's bonus-dice reminders.

Read `conflict-ability-audit.md` as dated inspection findings, not a current
completion checklist. Later source edits can change its recorded blob SHAs
without resolving the substantive questions it identifies.

## Source roles

- `../chapter-2-core-rules.typ` includes `../chapter-2.10-conflict-system.typ`
  (introduction and §§10.1–10.7), which includes
  `../chapter-2.10-conflict-system-aftermath.typ` (§§10.8–10.16).
  The core chapter also includes `../chapter-2.10-area-and-interpose.typ`
  (Area Effects §10.17 and Interpose §10.18). Do not include the aftermath
  file a second time in the parent assembly.
- `chapter-2.10-conflict-system-rewrite.md` is a design proposal, not the
  included conflict source.
- `conflict-shared-rules.md` records the approved design standard. It is
  not proof that every individual ability or setting entry is amended.
- `batch-51-core-rulings.md` records approved decisions; use the source
  commits above for current implementation status.
- `batch-52-furcifer-rulings.md` records the approved Furcifer package and
  its source integration; `batch-52-implementation-status.md` records
  scoped completion and remaining reconciliation/validation.
- `legacy-pool-6.9.typ` is retired historical text. It grants no active
  currency, Keepsake or Echo rule.
- See `README.md` for included fragments, module replacements and credits;
  its older conflict-source description still needs reconciliation.

## Historical remaining rulings and review questions

These are the questions recorded through batch 49, preserved as history.
The first three are superseded by Batch 51 as noted above. Other items
remain tracked for review or playtesting unless a separately verified
source decision resolves them; this extension does not re-audit them.

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

1. Continue auditing individual abilities and setting exceptions against
   the active branch. Deadly Precision and The Reveal now have the scoped
   replacements recorded above; verify related summaries and interactions
   rather than treating those entries as untouched. Awaken the Blood,
   staking interactions and uninspected entries still require review.
   The dated individual-entry audit and this ledger do not complete it.
2. Complete the active-source sweep for retired Legacy currency, death
   triggers and obsolete section references; preserve historical records
   and ordinary narrative uses of the word legacy.
3. Reconcile the root `CHANGELOG.md` and Phase 1 implementation tracker
   with the controlling decisions and actual source commits. The root
   changelog already records Legacy retirement; the drafts README's
   request to verify tracker/changelog coverage is not evidence that
   those records are absent. The full compatibility-batch ledger here
   has not itself been copied into either record. Reconcile Quick Reference,
   the drafts README, decision-status notes and the dated ability audit
   with the later integrations while preserving historical findings.
4. Compile the current core and setting books, rebuild PDFs and inspect
   rendered layout, tables, cross-references and character-sheet panels.
5. Run the relevant playtests and recalibrate numerical guidance. Historical
   simulations and approximate pacing tables are not validation of the
   current review branch.

No current-branch compilation, PDF rebuild, rendered-layout verification
or playtest is claimed by this record.
