# Action Roll Probability Matrix

## Overview

All uncertain actions — attacks, skill checks, and certain spell uses — are resolved with an **action roll**: 2d12, one of which is designated the **Complication die**. The total is compared against the **Challenge Threshold (CT)**, where **lower totals succeed** (roll-under resolution).

This document provides the exact analytical probabilities for every possible outcome at every CT value from 2 to 24, derived from all 144 ordered outcomes of 2d12 (12 x 12, since the two dice are distinguishable -- one is the Complication die).

## Outcome Rules

| Outcome | Condition |
|---|---|
| Critical Success (Success And...) | Total <= CT **and** both dice show the same face |
| Success (Success) | Total <= CT, dice differ, Complication die is **higher** |
| Success with Complication (Success, But...) | Total <= CT, dice differ, Complication die is **lower** |
| Marginal Failure (Failure, But...) | Total > CT, dice differ, Complication die is **higher** |
| Failure with Complication (Failure) | Total > CT, dice differ, Complication die is **lower** |
| Critical Failure / Fumble (Failure And...) | Total > CT **and** both dice show the same face |

Matching dice always resolve to a critical outcome (success or failure) based on whether the total beats the CT -- the higher/lower Complication-die comparison only applies when the two dice show different values.

## Full Probability Matrix (CT 2-24)

Each row sums to 100% (144 of 144 ordered outcomes accounted for). Percentages are exact fractions of 144 rounded to two decimals.

| CT | Critical Success | Success | Success w/ Complication | Marginal Failure | Failure w/ Complication | Critical Failure |
|----|------------------:|--------:|-------------------------:|------------------:|--------------------------:|-------------------:|
| 2 | 0.69% | 0.00% | 0.00% | 45.83% | 45.83% | 7.64% |
| 3 | 0.69% | 0.69% | 0.69% | 45.14% | 45.14% | 7.64% |
| 4 | 1.39% | 1.39% | 1.39% | 44.44% | 44.44% | 6.94% |
| 5 | 1.39% | 2.78% | 2.78% | 43.06% | 43.06% | 6.94% |
| 6 | 2.08% | 4.17% | 4.17% | 41.67% | 41.67% | 6.25% |
| 7 | 2.08% | 6.25% | 6.25% | 39.58% | 39.58% | 6.25% |
| 8 | 2.78% | 8.33% | 8.33% | 37.50% | 37.50% | 5.56% |
| 9 | 2.78% | 11.11% | 11.11% | 34.72% | 34.72% | 5.56% |
| 10 | 3.47% | 13.89% | 13.89% | 31.94% | 31.94% | 4.86% |
| 11 | 3.47% | 17.36% | 17.36% | 28.47% | 28.47% | 4.86% |
| 12 | 4.17% | 20.83% | 20.83% | 25.00% | 25.00% | 4.17% |
| 13 | 4.17% | 25.00% | 25.00% | 20.83% | 20.83% | 4.17% |
| 14 | 4.86% | 28.47% | 28.47% | 17.36% | 17.36% | 3.47% |
| 15 | 4.86% | 31.94% | 31.94% | 13.89% | 13.89% | 3.47% |
| 16 | 5.56% | 34.72% | 34.72% | 11.11% | 11.11% | 2.78% |
| 17 | 5.56% | 37.50% | 37.50% | 8.33% | 8.33% | 2.78% |
| 18 | 6.25% | 39.58% | 39.58% | 6.25% | 6.25% | 2.08% |
| 19 | 6.25% | 41.67% | 41.67% | 4.17% | 4.17% | 2.08% |
| 20 | 6.94% | 43.06% | 43.06% | 2.78% | 2.78% | 1.39% |
| 21 | 6.94% | 44.44% | 44.44% | 1.39% | 1.39% | 1.39% |
| 22 | 7.64% | 45.14% | 45.14% | 0.69% | 0.69% | 0.69% |
| 23 | 7.64% | 45.83% | 45.83% | 0.00% | 0.00% | 0.69% |
| 24 | 8.33% | 45.83% | 45.83% | 0.00% | 0.00% | 0.00% |

## Quick-Reference: Net Success vs. Failure

For fast GM reference -- combined probability of any success (critical, plain, or complicated) versus any failure at each CT.

| CT | Total Success % | Total Failure % |
|----|------------------:|------------------:|
| 2 | 0.69% | 99.31% |
| 3 | 2.08% | 97.92% |
| 4 | 4.17% | 95.83% |
| 5 | 6.94% | 93.06% |
| 6 | 10.42% | 89.58% |
| 7 | 14.58% | 85.42% |
| 8 | 19.44% | 80.56% |
| 9 | 25.00% | 75.00% |
| 10 | 31.25% | 68.75% |
| 11 | 38.19% | 61.81% |
| 12 | 45.83% | 54.17% |
| 13 | 54.17% | 45.83% |
| 14 | 61.81% | 38.19% |
| 15 | 68.75% | 31.25% |
| 16 | 75.00% | 25.00% |
| 17 | 80.56% | 19.44% |
| 18 | 85.42% | 14.58% |
| 19 | 89.58% | 10.42% |
| 20 | 93.06% | 6.94% |
| 21 | 95.83% | 4.17% |
| 22 | 97.92% | 2.08% |
| 23 | 99.31% | 0.69% |
| 24 | 100.00% | 0.00% |

## Reading the Table

- **CT = 13** is the exact midpoint of the 2d12 range (2-24), giving the closest thing to a 50/50 split: 54.17% total success vs. 45.83% total failure. This corresponds to a Challenging task (modifier +0) for a character with a combined Attribute + Skill + Trait of +5.
- **Critical Success/Failure rates shrink toward the table's edges.** At very low CTs (2-4), critical failures are common (6.9-7.6%) because almost every match lands above the threshold; at very high CTs (21-24), critical successes dominate the matches instead.
- **Success-with-Complication and Marginal Failure mirror each other** around CT 13, since the Complication die is equally likely to be the higher or lower of the pair whenever the two dice differ.
- Because dice can't total below 2 or above 24, CT <= 2 and CT >= 24 represent the practical floor and ceiling -- below CT 2, only a double-1 (total 2) can succeed; at CT 24, every roll succeeds (a double-12 becomes a guaranteed critical).

## Worked Example

At **CT = 13** (Challenging task, total bonuses +5): rolling two 4s (total 8, match) is a **Critical Success** -- total <= 13 and dice match. Rolling two 7s (total 14, match) is a **Critical Failure** -- total > 13 and dice match, even though 7 is only one pip over threshold. This is the asymmetry worth calling out to players: matched dice are binary, all-or-nothing relative to the CT, with no in-between complication state.
