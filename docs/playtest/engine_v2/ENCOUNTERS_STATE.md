# Reconstructed encounter and state increment

Status: local reconstruction for review, not an exact recovery of the missing archive.
All six proposed cards remain unreviewed. No combat smoke fight or balance batch was run.

## Pinned inputs

Repository: SkroxiousDM/2d12GameSystem; target branch: playtest only.
Input revision: 69f2dee73ea0ab757c1c34d50fc10ae3ca14417e.

- docs/playtest/tollhouse-collectors-calibration-cards-proposed.md
  Git blob: 3907e37afd770737311a5d81b6d603774f75325a.
- docs/playtest/collectors-rank-grit-calibration-plan.md
  Git blob: df69dd3cee0cc1c4727507cec15c22c47f4402ab.
- docs/2d12System/chapter-adversaries.typ
  Git blob: 2d413f56d76020b1606a1d74fa992df4b4add048.
- core.py: Git blob 728136cd9dea656d280d70a68682645cb9127c5f.
- test_core.py: Git blob 2ab8beadf169078f353d7e6801b0bcb41ad91133.

The two existing Python files were reproduced from retrieved text and verified against
Git blob hashes before execution. They are included unchanged for reproducibility.
No dependency on the old engine or legacy checkpoint is introduced.

## New files

- encounters.py: six populated immutable draft cards; all seven configurations;
  rank packages; separate role traits, selected Specials and ability permission
  contracts; source/proposal provenance; strict run validation.
- state.py: shared starting/current Disposition, participation-aware rotation,
  actor resource/status/usage containers, script validation, authorization guards,
  copied knowledge views, isolated rollout state, dice namespaces and event logs.
- test_encounters_state.py: 28 new test methods, including parameterized cases.
- ENCOUNTERS_STATE.md: this scope and implementation-boundary note.

## Deliberate boundaries

All production cards are unreviewed. create_conflict has no ignore-review flag and
rejects those cards. Tests use visibly named reviewed_fixture objects created
with dataclasses.replace; this changes no production definitions or documentation.
Marking a fixture reviewed cannot bypass missing-field or rank/policy validation.

Minor has a one-Special allowance; Established has a two-Special allowance.
Each of these cards selects only one. Promotion never fills an unused slot.
Card ratings include tags/equipment; no extra rating bonuses are applied here.
No machine traits, Guardian Protocol, ordinary-adversary Effort or PC pools are added.
Harm is descriptive card data for appropriate outside-conflict use, not an automatic
conflict-Attack status. Armour and Shrugs values are data, not reduction execution.

The factory sets Woe 6 and Momentum 1, and copies supplied fresh hunter snapshots.
Hunter fixtures are synthetic state tests, NOT verified builds for Mara, Tavi and Ione.
Full hunter-build validation, setup calculations and opening-policy enforcement remain
future work. The factory does not claim to make a run combat-ready.

Generic rotation skips unavailable actors and permits repetition with one remaining
participant. The Collectors' fixed named script is not silently reassigned after a
removal: it fails validation if eligibility no longer permits it. A future resolver
must handle an interrupted script under reviewed rules rather than invent substitutions.
Script projection/validation never consumes an activation; take_turn is explicit.

Status storage does not implement stacking, resistance, reductions or automatic
eligibility changes. Usage counters do not implement Special eligibility or refresh.
The injury-trade marker has no inferred expiry/reset behavior in this increment.
No pending Impede application/expiry, volley reveal procedure, exchange advancement,
Power allocation, injury trade, Special execution, victory, policy port or runner exists.
Ability permission contracts describe requirements; they are not executed effects.

Authorization is a boundary check only, not an information purchase API. Hunters'
legal information opportunities are not disabled; no human receives Protocol.
Knowledge views show own scripts/actors and explicit revealed entries, not opponents'
hidden scripts or private pools. They intentionally exclude raw event payloads.
Discovery content/rules and reveal authorization remain later work.

Rollout labels are restricted to safe characters and unique per parent; nested
namespaces are distinct. Forks start a separate event list, carry no actual history
as hypothetical output, and return no actual-event log. Event payloads and views
are copied. No actual/forecast mechanical parity is claimed before resolution exists.

The implementation is a Python state/data API, not an adversarial sandbox: trusted
engine code can mutate state fields. Guards apply at the provided construction,
script and authorization boundaries.

## Reproduce the tests

From docs/playtest/engine_v2:

    python -m unittest -v test_core test_encounters_state

Executed locally: 40 tests passed (12 unchanged foundation + 28 new encounter/state).
These tests are not complete fights, guardian comparisons or balance results.
The 2,100-fight experimental batch remains unrun.

## Repository boundary

No remote write was performed. Commit the four new files only after confirmation.
Do not overwrite core.py or test_core.py: their archive copies are unchanged inputs.
Do not modify main, the old engine, historical findings, original cards or checkpoint.
