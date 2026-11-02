## Boss phases and Last Stand on boss-phases-fixed-thresholds

- Commit `9c89972`: replaced Adversaries §7.1 with fixed post-setup shared-Disposition thresholds; integrated the final Special-reveal schedule, designated-Best clarification and Weak +2 rule for Defend-best bosses.
- Command now depends on active Leader participation. Reinforcements increase current and starting shared Disposition while leaving phase references fixed.
- Last Stand now postpones defeat at 0 for one additional volley, once per side per conflict, without stacking, restoring Disposition or activating new phases.
- Added the Iron Marshal worked example, setup reminders and checklist updates.
- Commit `c07ea90`: Core Rules §§10.10 and 10.14 now recognize Last Stand and place phase checks after volley resolution and defeat checks.
- Commit `7dfc168`: restored Hedge Adept Guard +1 after an unintended transcription change. The correction changes only that line.
- Commit `2ac0a32`: reconciled the controlling decision document and marked the boss-phase design draft integrated and amended.
- These scoped source integrations are complete on this branch. Fail-safe is implemented separately in `954b71e`, as recorded below. Quick Reference source coverage was subsequently added in `a89ec97`, as recorded below. Broader consistency sweeps, compilation, PDF rebuilding, layout checks and playtest verification remain outstanding.

## Fail-safe timing and source implementation on boss-phases-fixed-thresholds

- Commit `a7f2159`: recorded the designer-approved final-defeat timing model in the controlling decision document.
- Commit `954b71e`: updated the Guardian Special row and added Adversaries §6.11. Fail-safe costs 3 Woe, requires an active Guardian with the Special available, and resolves when defeat at 0 shared Disposition becomes final, after any Last Stand volley and before compromise.
- Each PC within the blast's established reach adds burned-3 as an additional compromise injury. Existing-injury credit and Resistance apply under Core Rules §10.12; the Guardian is destroyed. The effect grants no action, volley or Disposition change.
- Excludes Superiority setup wins, accepted concessions, mutual defeat and defeat solely because no participant can continue. An unavailable Special or a Guardian already removed from participation cannot activate it.
- The `954b71e` diff was checked: only the Fail-safe table row and new procedure changed; no unrelated profile statistics or text changed. This is diff verification, not compilation or playtest verification.
- The decisions file and this tracker record the scoped source implementation as complete. Quick Reference source coverage was subsequently added in `a89ec97`, as recorded below. The changelog and boss-phase design summary still require reconciliation. Broader reference checks, Typst compilation, PDF rebuilding, layout checks and playtesting remain pending.

## Major-ability pricing wording reconciliation on boss-phases-fixed-thresholds

- Commit `0f5f93a`: clarified Core Rules §4.1, the compact Core Rules §11 Playbooks summary and the Frontier Playbooks overview in `tod-playbooks.typ`.
- Commit `ad7e9e5`: clarified the setting introduction's Major notation and the Playbook Abilities reminder in `2d12-character-sheet-v2.typ`. These complete the five scoped wording fixes approved for PR #41.
- The first playbook ability has no additional-slot cost; if it is Major, its 1-Refresh Major cost still applies. Ordinary creation extras cost 1 Refresh each; Major creation extras cost 2 Refresh total each. Minimum Refresh remains 1.
- Own-playbook advancement Majors cost an Advance and 1 Refresh. The veteran surcharge remains additional: a veteran Major costs an Advance and 2 Refresh total. Focus tier access and prices, capstone eligibility and costs, artifact attunement and ability effects are unchanged.
- Both source commit diffs were reviewed and contain only the approved wording passages. Generic Playbooks and the core introduction already stated the creation-extra total and were not changed in this pass. Historical playtest arithmetic and superseded ruling R2 were not rewritten.
- This is scoped source and documentation completion, not an exhaustive ability-entry sweep or full Phase 1 closure. Remaining summaries and references require the broader consistency pass. Typst compilation, PDF rebuilding and layout verification of the longer sheet reminder remain pending; no build or playtest validation is claimed.

## Reference-sweep contradiction fixes on boss-phases-fixed-thresholds

- Commit `fe510ba`: reconciled five approved passages across three active Typst source files following the read-only reference sweep.
- `docs/2d12System/chapter-2.14-design-notes.typ` §14.1: replaced present-tense double-halving instructions with the current setup formula: divide the Disposition roll by 3, round down, then add helpers and flat modifiers at full value; minimum 1 before Superiority. Updated the adjacent Attack/Feint and Superiority notes to remove the superseded approximately-6 baseline. Earlier simulation figures remain explicitly historical, not validation of the current formula. P, Grit and Encounter Budget recalibration and fight reruns remain deferred to Phase 4.
- `docs/TestamentOfDust/tod-setting-rules-15-design-notes.typ` §15: replaced the statement that Bled-6 means death with Taken Out and a Scar, plus the core three-segment Dying clock when lethal stakes permit. The note now distinguishes Bled's penalty, recovery and transfusion exceptions from ordinary status procedures and points to the Thirst's separate rules. The underlying Frontier procedures were not changed.
- `docs/2d12System/chapter-6.5-knowledge-focuses.typ`, Heals the Broken, Tier 3b: Physician's Care now reads, “Allies you treat during a rest recover all pool points.” This is the designer-selected wording, replacing “short rest” and the obsolete “1 + Edge” comparison. No new minimum duration, treatment roll, kit requirement, frequency limit, status healing, Scar removal or rest-cycle reset was added.
- The commit diff was verified: exactly five lines replaced across the three files, with no unrelated changes. These three identified contradictions are resolved in source; this does not complete the broader reference sweep or Phase 1.
- At that pass, remaining work included other recovery and Create references, Quick Reference coverage, navigation references and audit-status reconciliation. Subsequent scoped completions are recorded below, including Quick Reference coverage in `a89ec97` and recovery mappings in `3fe0680`. Broader sweeps and validation remain pending. Typst compilation, PDF rebuilding, layout checks, numerical recalibration and playtesting were not performed.

