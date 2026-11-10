# Collectors rank/Grit calibration plan

## Status and scope

Planned; not executed. This document records the next proposed calibration test after the starting-Woe and additional-participant area-bonus comparisons. Saving this plan does not certify the engine, approve new rules, or claim new simulation results.

Work is restricted to the playtest branch. Leave main, historical findings, and the legacy guardian checkpoint unchanged. Engine implementation and test results require separate work.

## Objective

Measure how legal adversary rank progression changes encounter difficulty within one consistent encounter family. Keep creature type, participant count, tactical roles, equipment, and selected Specials stable.

This is a rank-package test, not a pure Grit-only test: promotion also changes rank-dependent action ratings, Guard, Shrugs, and tag allowances. Verify these details against the pinned playtest rules before implementing cards. Do not attribute every observed change to the numerical Grit budget alone.

## Encounter family

Use the Tollhouse Collectors throughout, with shared opposition Disposition and three opposing participants:

- Venn Carrow: Shooter; Dead Aim and Volley.
- Edda Pike: Bulwark; Interpose and Dirty Trick.
- Noll Sable: Skirmisher; Hit and Run and Dirty Trick.

Retain their existing equipment, objectives, selected Specials, and opening assignments: Noll Maneuver, Venn Attack, Edda Defend. Do not silently invent later-exchange scripts or additional rank benefits; document and review the complete cards and opposition policy before running the batch.

Do not add Specials solely because a promoted adversary has a larger allowance. Any rank-dependent tag or rating changes must be explicit, with no double-counting of equipment or tags already included in ratings.

## Seven configurations

Minor contributes Grit 3; Established contributes Grit 5. Confirm the construction against the pinned rules before execution.

| ID | Total Grit | Venn | Edda | Noll |
|---|---:|---|---|---|
| G9-MMM | 9 | Minor | Minor | Minor |
| G11-EMM | 11 | Established | Minor | Minor |
| G11-MEM | 11 | Minor | Established | Minor |
| G11-MME | 11 | Minor | Minor | Established |
| G13-EEM | 13 | Established | Established | Minor |
| G13-EME | 13 | Established | Minor | Established |
| G13-MEE | 13 | Minor | Established | Established |

Testing every promotion combination avoids treating the effect of one stronger role as the general effect of increasing Grit.

## Controls

- Starting Woe: 6. Retain normal generation and spending rules.
- Starting Momentum: 1.
- Same hunter party: Mara Voss, Tavi Reed, and Ione Bell; retain the existing builds, equipment, and starting resources. Reset resources for every fight.
- Same hunter opening: Tavi Maneuver, Mara Attack, Ione Attack.
- Same three hunter decision models: fixed option B, one-exchange adaptive, and two-exchange adaptive. Their algorithms remain unchanged; forecasts and rollouts must use the actual encounter cards and mechanics.
- Same three opposition participants and tactical roles.
- Current provisional additional-participant area rule enabled normally for both sides, with normal Power + 1 loss and unchanged activation costs. Do not adopt an experimental area-bonus removal as a rule change.
- No Superiority, reinforcements, or voluntary concessions.
- Hold equipment, selected Specials, objectives, and the reviewed opposition policy stable across configurations except where legal rank changes require an explicitly documented adjustment.

## Sampling

Use 100 matched seeds per hunter policy per configuration:

7 configurations x 3 policies x 100 seeds = 2,100 experimental fights.

Use the same seed set across all configurations and policies. Record the seed range and random-stream conventions in the run manifest. Keep regression fixtures and smoke fights outside the experimental sample count. Pin the rules and engine revisions used.

## Engine prerequisites and validation gates

The existing committed engine is guardian-specific. Extend and verify it before treating human-encounter output as calibration evidence.

Required checks:

1. Three-adversary activation rotation, eligibility, and actor predictions; remove assumptions that only two guardians alternate.
2. Human stat cards, rank-dependent ratings, Guard, Shrugs, and legal Specials.
3. Dead Aim, Hit and Run, Dirty Trick, Volley, and Interpose, including costs, timing, limits, and fiction-dependent applicability.
4. Human information gathering without granting Guardian Protocol or guaranteed future-script knowledge.
5. No Self-Repair, Guardian Protocol, machine-only traits, or other guardian-specific behavior leaking into the human encounters.
6. Shared Disposition, ordinary conflict loss versus status/injury effects, and the current area-participant counting rule.
7. Consistent mechanics in actual resolution, forecasts, and rollout simulations.
8. Regression checks demonstrating that the existing guardian behavior has not silently changed.

Report targeted regressions, smoke tests, known omissions, and unresolved rulings separately from the 2,100-fight balance results. Do not claim full engine conformance from targeted tests alone. Resolve material rule or policy ambiguities before executing the batch.

## Required outputs

- Complete reviewed cards and opposition policy for all configurations.
- Reproducible runner and manifest with rules/engine revisions, seeds, controls, and limitations.
- Per-fight results and actual-volley logs, excluding hypothetical rollouts from actual-event totals.
- Hunter, opposition, and mutual-defeat counts by configuration and policy.
- Remaining Disposition percentages for both sides, including defeats, with clear denominators.
- Fight length, injury trades, resource spending, paid script changes, and information purchases.
- Matched-seed comparisons for rank promotions and same-Grit role combinations.
- Resource and activation-cost invariant checks, plus all failed checks or unresolved outcomes.

## Questions to answer

1. How strongly does rank progression affect victory and its price?
2. How differently do Shooter, Bulwark, and Skirmisher promotions perform at the same total Grit?
3. How much outcome variation remains within a Grit budget?
4. Does encounter guidance need role-composition warnings alongside Grit?

## Interpretation limits

This study covers one party and one human encounter family at starting Woe 6. It does not establish universal Grit thresholds, a Woe-to-Grit conversion, or final area scaling. Rank changes bundle several mechanics, and adaptive policies may respond differently to those changes. Keep observations, proposed rule changes, and approved rules distinct.
