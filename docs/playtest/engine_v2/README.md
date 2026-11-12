# Combat engine v2

Status: foundation only; not ready for combat smoke tests or the Collectors batch.

This is an independent implementation. It imports neither the existing engine nor the legacy checkpoint and performs no source transformations. Work is restricted to playtest. The existing engine, historical findings and legacy checkpoint remain untouched.

## Scope and design baseline

Approved scope: a reusable conflict engine, initially covering the Collectors calibration and existing guardian comparison. Preserve the fixed option B, one-exchange adaptive and two-exchange adaptive hunter decision algorithms while replacing guardian-specific inputs and resolution calls.

Design baseline: playtest a57d200a516771fcc5fc7da9effdd4e52f1a0122. The eventual run must pin its own rules and engine revisions; this baseline is not a full-conformance claim.

Rules sources in docs/2d12System/: chapter-2.2-core-resolution.typ sections 2.4-2.6; chapter-2.10-conflict-system.typ sections 10.5-10.7; chapter-2.10-conflict-system-aftermath.typ sections 10.9-10.15. Resolve paths relative to docs, not as an import dependency.

## Implemented in this first increment

- core.py: typed action, roll, outcome, encounter-spec and shared-side-state primitives.
- All sixteen action interactions, best-two dice selection, basic independent/versus Power and doubles evaluation.
- Explicit fixed-roster actor order; no character-name-dependent rules.
- Recovery capped by each side's recorded start, atomic resource debits, deep-copy isolation.
- Keyed dice streams with seed, namespace, exchange, volley, side and reroll attempt. Actor, configuration, bonus count and modifier are deliberately absent from the key for matched random numbers. The namespace separates actual and hypothetical streams. Future manifests must record Python version and this stream version.

Outcome evaluation returns Power and complication flags only. It does not allocate Power, choose Success-at-a-Cost consequences, generate Woe, buy off complications, resolve a volley, or determine victory. Resource debits do not yet implement Effort, Edge or running-dry consequences. Encounter permission fields are data contracts, not enforced purchase APIs.

## Planned structure; not yet implemented

1. encounters: complete reviewed cards, equipment, objectives, starting resources and scripts; rank validation and configuration construction.
2. state: full conflict state, availability-aware rotation, statuses, knowledge, usage limits and transactional events.
3. resolution: full volley ordering, resource costs, effects, independent completion, injury trades and outcomes; use the same kernel in actual fights and rollouts.
4. specials: explicit trait/ability permissions, timing and legal-use checks; human and guardian behaviour isolated by card data.
5. policies: port the existing hunter algorithms and implement the approved fixed Collectors policy. Do not silently redesign the algorithms.
6. simulation/reporting: runner, isolated rollouts, actual-only event logs, matched seeds, manifests and invariant reports.
7. tests: rule fixtures, integration, complete smoke fights, reproducibility and guardian comparisons.

## Settled Collectors policy

Repeat Noll Maneuver, Venn Attack, Edda Defend every exchange. No separate target-selection policy. Use selected Specials whenever legally available under their costs, timing, limits and fictional requirements. Collectors may neither purchase information nor pay to change scripts. Hunters retain legal information opportunities; humans receive no Guardian Protocol exception. No complete Collectors cards are included in this increment.

## Validation and release gates

From this directory:

    python -m unittest -v test_core

Initial execution: 12 tests passed, including a table-driven check of all sixteen action pairs. This count is separate from the existing engine's 31 tests; those were not rerun for this increment. The new tests use small fixtures, not approved encounter cards. No balance results, human-encounter certification or policy-port completion are claimed.

Before the 2,100-fight batch: review all cards; implement and test selected Specials, legal information, eligibility and current area rules; establish actual/forecast parity; preserve guardian behaviour with comparison fixtures; pass smoke tests; pin the runner and manifest. Keep regressions and smoke fights outside the experimental sample.
