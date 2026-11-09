# Revised guardian engine: B01–B03

This engine derives from the immutable legacy checkpoint in `../checkpoints/2026-11-09-legacy-guardian-engine/`. It verifies the checkpoint Git blob before applying narrowly checked source transformations in memory. It never edits the checkpoint.

Changes: once-per-guardian-per-exchange Self-Repair after independent completion, including recovery from 0; normal scripted Domain targets without automatic scope adjustments; target-only Protocol disclosure, early commitment, retained knowledge and paid changes separated from hunter snapshots.

The active Core Rules assembly includes `chapter-2.10-guardian-domain-clarifications.typ` as §§10.19–10.21. These specific procedures supplement the existing adversary and Domain entries.

Requires Python, NumPy and pandas. From this directory:

```bash
python -m unittest -v test_clarifications
python combat_engine.py --count 100 --output revised-results
```

Validation performed: 22 targeted tests against the actual derived engine and six complete smoke combats. The prior standalone adapter's 126 passes are not claimed here. No new 300-combat balance comparison was run. Typst compilation and rendered inspection were not performed.

Scope remains the Sealed Gate and the original party/policies. This is not a full rulebook implementation: general Backlash, status/recovery and finishing coverage still needs work. The new physical-status repair path is available, but the automatic combat policy continues to prefer Disposition repair. Normal NPC script-change API is implemented; the existing NPC policy does not automatically choose paid changes. Deterministic fixed-dice controls exist for regression tests and are off in normal simulations.

Do not interpret these focused passes as full combat-engine certification. Historical findings and the legacy checkpoint remain unchanged.
