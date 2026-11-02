# Changelog

All notable changes to the 2d12 Game System will be documented here.

Format loosely based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/). Dates are ISO 8601 (YYYY-MM-DD).

## [Unreleased]

### Changed and clarified — Residual Phase 1 abilities, items and Specials (2026-11-01)
- P1: Monster-Slayer and Its Servants Die First apply their setup reduction once to the opposing side's starting shared Disposition when that side includes a qualifying participant, including mixed sides. Normal setup ordering and the minimum-1 floor apply.
- P2: Deadly Precision and Strike While It Sleeps preserve outside-conflict half-price Attack effects. In conflicts, p committed Power removes 2p + 1 shared Disposition, with the +1 applied once and no individual status or additional Power for other Effects. The Stalker's separate killing-strike reduction remains.
- P3–P4: Bring Them In Alive uses capture-alive intent and normal conflict loss, preserving outside-conflict subdual and the bounty benefit. Baited Trap uses the Maneuver's −3 next-roll Impede effect instead of a persistent restraint or Athletics escape roll.
- These six ability replacements are implemented in `1bace6c`. That commit also accidentally shortened Furcifer's signature-equipment alignment tuple; `26f11c5` restores exactly that line. The initial commit is not a clean six-line-only diff.
- IS-01: moved the Bounty Veteran's Attack from Volley 2 to Volley 3 in Frontier Opposition §16.6, leaving one opposition actor per volley (`c1af5f0`; exactly two lines replaced).
- IS-02: added Adversaries §6.12 deferred Special injury settlement (`8f1a825`; 17 lines added) and linked Feed and Shock Field (`297e512`; two rows replaced). Each qualifying paid activation records a separate tier-2 application, resolved at conflict end regardless of outcome after any Last Stand deferral. Pending records are not statuses. Resolve eligible Resistance/reduction and stacking separately before ordinary compromise credit; existing injuries cannot discharge the applications, but injuries actually remaining may satisfy ordinary compromise costs. Concessions cannot waive the pending effects; they remain resistable imposed effects. Fail-safe's separate procedure is unchanged.
- IS-03: Venom / Infection now records deferred poisoned-2 on a successful conflict Attack, without a second compromise application. Outside-conflict poisoning and progression after actual infliction remain (`b969a14`; one row replaced).
- IS-04: The House Answers creates one rank-1 scene Truth with explicit facility scope and removal condition, ending at scene end or earlier removal; its purchase includes no higher rank, extended duration or Site-Truth change. Listed Woe cost and prerequisite remain (`fff09c9`; one row replaced).
- IS-05a–c: Interlocutor's bribery item directly grants a once-per-mission rank-1 scene Truth without Power; Savant's reagents are an actual tier-2 Create cypher; Ember-Brand's 1-Power rider inflicts a separate burning-1 status when a status is inflicted, not from ordinary conflict loss (`21eb5f6`; three lines replaced across three files).
- IS-05d: the tier-4 true-light capsule applies fixed Sun-Sick +2 to one vampire instead of ordinary conflict Attack loss, using its entire output with no surplus Power or Momentum; the husk-only killing-method restriction remains (`55728a9`; one row replaced).
- Complete commit diffs for these source changes and the alignment correction were inspected. All approved P1–P4 and IS-01–IS-05 source replacements are complete within scope, not exhaustive reference clearance or Phase 1 closure.
- No Typst compilation, PDF rebuild, rendered-layout verification, numerical recalibration or playtest validation was performed. Older supplemental-record and status reconciliation remains separate; historical entries below are preserved.

### Clarified — Frontier Attack bonuses and Sun-Sick precedence (2026-10-31)
- Awaken the Blood's physical-status cap does not block the full-day Sun-Sick advance from tier 5 to tier 6 under Frontier Rules §7.1 (`57e9bfd`). The closing Typst figure delimiter accidentally removed in that commit was restored separately in `aa06849`.
- Awaken the Blood, Knows How They Die, Full Transformation, Serum and Killing Ground retain +1 status tier on eligible Attacks outside conflicts. During conflicts, their eligible successful Attacks instead gain +1 Power restricted to that Attack's Disposition-loss effect.
- The Charge uses the same restricted +1 Power during the first exchange of a mounted Fight; it gains no outside-conflict benefit.
- This bonus Power grants no individual status, cannot buy another Effect and cannot become Momentum. Existing target restrictions, activation conditions, durations, costs and other benefits remain.
- Ability conversions implemented in `27f9818` and `327041f`. Both diffs were inspected: six ability lines replaced across five source files, with no unrelated changes.
- These scoped source fixes do not close Phase 1 or the broader Frontier sweep. No Typst compilation, PDF rebuild, layout verification or playtest validation is claimed.

### Fixed — Reference-sweep contradictions (2026-10-31)
- Core Rules §14.1 design notes now describe the current Disposition setup formula and modifier ordering instead of prescribing the superseded double-halving model. Adjacent Attack/Feint and Superiority notes no longer use the approximately-6 starting track as the current baseline. Earlier simulation figures are retained as historical results; numerical recalibration and fight reruns remain deferred to Phase 4.
- Frontier Rules §15 design notes now describe Bled-6 as Taken Out and a Scar, with the core three-segment Dying clock when lethal stakes permit, rather than immediate death. The note also identifies Bled's existing penalty, recovery and transfusion exceptions and distinguishes the Thirst's separate rules. The underlying Frontier procedures are unchanged.
- Heals the Broken, Tier 3b: Physician's Care now reads, “Allies you treat during a rest recover all pool points.” Replaced the undefined “short rest” trigger and obsolete “1 + Edge” comparison with the designer-selected wording. No additional treatment restrictions, status healing, Scar removal or rest-cycle reset were added.
- Source corrections implemented in `fe510ba`. The commit diff was verified: five lines replaced across three files, with no unrelated changes.
- These fixes resolve three identified active-source contradictions, not the broader reference sweep or Phase 1. No Typst compilation, PDF rebuild, layout check, numerical recalibration or playtest validation is claimed.

### Clarified — Major-ability acquisition prices (2026-10-31)
- Core Rules §4.1, the compact §11 Playbooks summary and the Frontier Playbooks overview now explicitly distinguish the first playbook ability's additional-slot exemption from the Major surcharge, and state that a Major creation extra costs 2 Refresh total (`0f5f93a`).
- The setting introduction's Major notation and character-sheet Playbook Abilities reminder now state the same totals and preserve the separate veteran surcharge (`ad7e9e5`). Ordinary creation extras cost 1 Refresh; a first Major playbook ability costs 1 Refresh; minimum Refresh remains 1.
- Own-playbook advancement Majors still cost an Advance and 1 Refresh; veteran Majors cost an Advance and 2 Refresh total. Focus prices and tier access, capstone requirements, artifact costs and ability effects are unchanged.
- Phase 1 implementation tracking records these five scoped wording fixes as complete in source, not an exhaustive reference sweep or Phase 1 closure. Historical playtest arithmetic is preserved; superseded ruling R2 is not reinstated.
- Both source commit diffs were reviewed. No Typst compilation, PDF rebuild, character-sheet layout check or playtest validation is claimed; the longer sheet reminder still needs build and layout verification.

