# Testament of Dust — Combat Playtest Findings
## November 8, 2026

Status: Draft research report  
Scope: Automated combat simulations, tactical comparisons, and preliminary encounter calibration  
Rules baseline: GitHub revision `5ba56ae337cb8196b877b5ee4576907f32c90f80`

## Executive summary

Today’s tests provide **preliminary** evidence that the revised conflict system produces consequential tactical choices, that information purchases carry meaningful opportunity costs, and that encounter difficulty cannot be predicted from Grit alone.

Three opposition groups were constructed at total Grit 9, 11, and 13. A fresh three-character hunter party faced them through individual walkthroughs and repeated 100-fight simulation batches. Later tests compared fixed scripts, observation-based adaptation, selective information purchasing, legal actor-order replanning, and a two-exchange rollout planner.

The principal findings were:

- Action matchups strongly affected outcomes. A fixed script that won 91% against the 9-Grit Collectors won only 4% against the 11-Grit Pack.
- Adaptation sometimes recovered a poor matchup, but did not reliably overcome the cost of a bad opening.
- Automatically purchasing Protocol information performed poorly against the guardians. Selective purchasing improved some results, but did not outperform the best tested fixed script.
- Longer-horizon planning reduced mutual defeats relative to the one-exchange planner, but remained limited by its search and evaluation heuristics.
- Tested fights averaged approximately 3.5–9 volleys, depending on opposition and policy.
- These results do not yet validate encounter labels, provisional area-effect balance, or human-table pacing.

## 1. Purpose and scope

The session examined four related questions:

1. Do the scripted action interactions create meaningful tactical differences?
2. How do the selected 9-, 11-, and 13-Grit encounters perform against one starting party?
3. Can hunters recognise a poor matchup and improve their decisions without seeing hidden scripts?
4. When does purchasing information improve decisions enough to justify its Power cost?

The session was not designed to validate the entire ruleset. It did not comprehensively test advancement, recovery, supernatural finishing procedures, campaign Truths, or non-combat conflicts.

The historical October playtest was used as background, not as a current mechanical baseline. That earlier test used individual Disposition shares, spill-over, and a different setup formula. Historical reference: October 17, 2026, rules commit `0582fbf`.

## 2. Test subjects

### Hunter party

The same starting party was retained throughout:

| Character | Build | Principal tested contribution |
|---|---|---|
| Mara Voss | Scarred Sellsword who Hunts the Kept | Fight Attacks, Blood Fury, emergency injury trades |
| Tavi Reed | Silent Stalker who Collects the Bounty | Stealth Maneuvers, Feints, Ghost, Quick Reflexes |
| Ione Bell | Devout Occultist who Keeps the Old Faith | Psychic-force Attacks, Notice Maneuvers, Focused Channel, Unleash |

Each character began with 42 pool points, 3 Edge, a legal skill pyramid, and creation abilities priced under the selected rules revision.

### Opposition

| Group | Composition | Total Grit | Participants |
|---|---|---:|---:|
| Tollhouse Collectors | Three Minor humans | 9 | 3 |
| Red-Maw Pack | Established beast, Minor beast, minion pack | 11 | 3 |
| Sealed Gate | Great guardian, Established guardian | 13 | 2 |

Each minion group counted as one conflict participant, including for rotation and area-effect Disposition bonuses.

These encounters differed in composition, roles, Guard, Specials, and action patterns. Their results therefore cannot isolate the effect of increasing Grit.

## 3. Methodology

Most comparisons used 100 fights per condition, with matched random seeds.

Common conditions included:

- Fresh character resources and abilities for each fight.
- Starting party Momentum 1, from Professional.
- Starting Woe 6.
- Rolled hunter starting Disposition.
- Fixed adversary starting Disposition equal to total Grit.
- No Superiority or reinforcements.
- No voluntary concessions in repeated simulation batches.
- Resolution of both independent actions before checking defeat.

Hunter starting Disposition averaged 8.02 across the repeated seed set, with a range of 5–12.

Matched seeds provided comparable starting rolls and shared per-volley random streams. They did not make every counterfactual action receive identical dice after actor orders, bonus dice, or decisions changed.

The same seed set was reused across several comparisons. Those reruns are controlled comparisons, not additional independent samples of overall game balance.

## 4. Tactical sensitivity

### Fixed-script comparison

The first two hunter scripts were:

| Volley | Original script | Second script |
|---|---|---|
| 1 | Tavi: Maneuver | Mara: Attack |
| 2 | Ione: Attack | Ione: Maneuver |
| 3 | Mara: Attack | Tavi: Feint |

Their results changed substantially with the opposition.

| Opposition and script | Hunter wins | Opposition wins | Mutual defeat |
|---|---:|---:|---:|
| Collectors — original | 83% | 11% | 6% |
| Collectors — second script | 91% | 9% | 0% |
| Pack — original | 83% | 16% | 1% |
| Pack — second script | 4% | 84% | 12% |

Against the Collectors, the second script placed Tavi’s Feint against Edda’s Defend, preventing recovery.

Against the Pack, the same Feint faced the runners’ Attack. Tavi’s action was trumped while the runners resolved their Attack independently.

### Finding

The interaction matrix materially changed outcomes. The tests support the historical observation that scripting decisions matter, while extending that observation across repeated simulated fights.

They do not establish that all actions are equally attractive or that human players will find every matchup engaging.

## 5. Adaptation against the Pack

An observation-based adaptive policy began with the poorly matched second script.

It could:

- Predict an Attack from the unrevealed runners after observing the earlier beast actions.
- Replace Tavi’s Feint with Maneuver when Momentum permitted, using Quick Reflexes.
- Change later exchange scripts after observing the relevant opposing actions.

It retained the original actor order and had no access to the actual unrevealed script.

| Policy | Hunter wins | Pack wins | Mutual defeat |
|---|---:|---:|---:|
| Repeat the mismatch | 4% | 84% | 12% |
| Observation-based adaptation | 15% | 76% | 9% |
| Better fixed script from the start | 83% | 16% | 1% |

Adaptation improved the poor script’s result, but did not approach the performance of starting with a suitable script.

Forty percent of adaptive fights ended during the first exchange. Tavi made a paid within-exchange replacement in 20% of fights.

### Finding

Legal adaptation can recover some bad situations. However, damage, injuries, limited Momentum, and an unchanged actor order can make the initial mistake difficult to reverse.

This does not settle the balance of script-change costs or Quick Reflexes.

## 6. Guardian tests: information and planning

The guardian experiments investigated whether Protocol information justified its Power cost.

Two openings were tested:

| Opening | Volley 1 | Volley 2 | Volley 3 |
|---|---|---|---|
| Previous opening | Mara: Attack | Ione: Maneuver | Tavi: Feint |
| Option B | Tavi: Maneuver | Mara: Attack | Ione: Attack |

### Outcome summary

Each row represents a separate 100-fight condition.

| Opening and policy | Hunter wins | Guardian wins | Mutual defeat |
|---|---:|---:|---:|
| Previous opening — fixed | 61% | 37% | 2% |
| Previous opening — information-first | 56% | 44% | 0% |
| Option B — fixed | 74% | 22% | 4% |
| Option B — information-first | 52% | 42% | 6% |
| Option B — selective one-exchange planning | 57% | 35% | 8% |
| Option B — two-exchange rollout planning | 63% | 35% | 2% |

The best tested guardian condition was fixed option B, with no Discover purchases.

### Information-first policy

This policy purchased relevant Protocol information before spending remaining Power on primary effects.

With option B, it averaged 5.56 Discover purchases per fight and won 52%.

### Selective one-exchange policy

This planner purchased information only when its estimated effect on the best legal next-exchange plan exceeded the immediate Power opportunity cost.

It also replanned legal actor orders.

It averaged 0.58 Discover purchases per fight and won 57%.

### Two-exchange rollout policy

The longer-horizon planner evaluated sampled futures up to six volleys ahead, carrying forward:

- Injuries and their penalties.
- Used injury trades.
- Pool, Momentum, Tychē, and Woe expenditure.
- Guardian repair.
- Area effects and defeat risk.

It averaged 3.30 Discover purchases per fight and won 63%.

Its improvement over the one-exchange planner came from reducing mutual defeats from 8% to 2%; guardian victories remained at 35%.

### Finding

Information has a meaningful opportunity cost. Purchasing more of it did not reliably produce better results.

However, these comparisons do not establish that Discover is overpriced. Information policy, action selection, planning horizon, and actor ordering changed together.

## 7. Disposition retained and price of victory

The final three-way guardian comparison showed:

| Measure | Fixed option B | One-exchange planner | Two-exchange planner |
|---|---:|---:|---:|
| Hunter Disposition remaining, averaged over all fights | 23.4% | 14.3% | 16.9% |
| Hunter Disposition remaining, victories only | 31.6% | 25.2% | 26.9% |
| Average accepted injury trades | 0.63 | 0.69 | 0.73 |
| Average fight length | 7.63 volleys | 6.01 volleys | 8.61 volleys |

Win rate alone therefore understates the differences between policies.

The longer-horizon planner won more often than the shorter-horizon planner, but still finished victories with less Disposition than the fixed control and accepted more injury trades on average.

## 8. Pacing

Representative mean fight lengths were:

| Condition | Average volleys |
|---|---:|
| Collectors — original script | 3.48 |
| Collectors — second script | 4.17 |
| Pack — original script | 4.02 |
| Guardians — fixed option B | 7.63 |
| Guardians — two-exchange planner | 8.61 |

These provide useful mechanical pacing evidence. They do not measure human deliberation, rules lookup, narration, or compromise negotiation.

No conclusion about actual table duration or player engagement should be drawn from simulation length alone.

## 9. Important assumptions and limitations

### Rules assumptions

Several declared assumptions materially affected results:

- Ione could use Occult for psychic-force Fight Attacks.
- Guardian Self-Repair was limited to one use after the guardian’s own successful scripted action, costing 1 Woe.
- Self-Repair could resolve before the final defeat check while independent actions were still being completed.
- A created Sealed Doors Truth increased the difficulty of specified independent hunter Attacks.
- Injury penalties used predefined scopes.
- Resource-spending and Tychē policies were automated and restricted.

These assumptions require confirmation before the guardian results become a formal calibration baseline.

### Agent limitations

The adaptive models were not optimal players.

The strongest model still used:

- A restricted candidate-plan shortlist.
- Twelve sampled futures per evaluation.
- A two-exchange horizon.
- A heuristic estimate beyond that horizon.
- Simplified second-exchange decisions inside rollouts.
- No recursive simulation of future information purchases.

The guardians did not counter-adapt to the hunters.

## 10. Outstanding questions: current status

| Question | Status after today |
|---|---|
| Do script matchups materially affect outcomes? | Supported in tested encounters |
| Can legal adaptation improve a poor matchup? | Demonstrated, but highly limited by opening and policy |
| Does Discover have a meaningful opportunity cost? | Demonstrated under tested policies |
| Are Grit and encounter labels calibrated? | Still open |
| Is provisional area scaling balanced? | Narrowly exercised; still open |
| Are script-change costs correctly priced? | Still open |
| Are injury trades appropriately costly? | Exercised, not isolated |
| Is combat fast and engaging at the table? | Still requires human play |
| Are Superiority, Rider, Interpose, recovery, and campaign Truth flags resolved? | Not meaningfully tested |

The tests also did not resolve the historical Doctor and Rider contribution concerns. Neither playbook was included in the new party.

## 11. Recommended follow-up

The next tests should isolate mechanics rather than add further agent complexity.

1. Confirm guardian Special timing, especially Self-Repair.
2. Validate the simulator against a small set of hand-resolved reference cases.
3. Vary Grit while holding composition, Woe, and tactical policy as constant as possible.
4. Compare area effects enabled versus disabled against the same opposition.
5. Separate information purchasing from actor-order replanning in controlled comparisons.
6. Test injury-trade policies separately, including their persistent post-conflict costs.
7. Run human sessions using the encounter-recalibration worksheet.

## Conclusion

Today’s simulations show a conflict system in which action matchups, actor placement, and Power allocation can strongly affect both victory and its cost.

They also show that more elaborate decision-making is not automatically better decision-making. The adaptive agents corrected some mistakes, but their information purchases and planning approximations sometimes performed worse than a suitable fixed script.

These runs should be retained as preliminary automated evidence. They support targeted follow-up testing, but do not yet justify changing encounter constants or closing the major balance questions.
