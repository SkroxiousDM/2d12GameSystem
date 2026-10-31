# Phase 1: Frontier option sweep

Date: 2026-10-31. Branch: `boss-phases-fixed-thresholds`. This is a scoped source inspection, not Phase 1 closure or a new designer ruling.

## Coverage

Read the complete contents of these files under `docs/TestamentOfDust/`, including abilities, equipment and examples:

- `tod-playbooks-broker.typ`
- `tod-playbooks-cyborg-hunter.typ`
- `tod-playbooks-frontier-doctor.typ`
- `tod-playbooks-mutant.typ`
- `tod-playbooks-occultist.typ`
- `tod-playbooks-rider.typ`
- `tod-playbooks-stalker.typ`
- `tod-playbooks-warden.typ`
- `tod-focuses-bloodline.typ`
- `tod-focuses-frontier.typ`
- `tod-focuses-household.typ`
- `tod-focuses-occult.typ`
- `tod-focuses-oldworld.typ`
- `tod-focuses-village.typ`

Also inspected the controlling Phase 1 decisions, core rest/recovery fragment and setting §§8–14 to cross-check selected rulings and references. Reading all 14 files does not mean all their interactions are cleared.

## Editorial correction in this batch

`tod-playbooks-warden.typ` §9.1: Hold the Gate and Hold Until Dawn now name the conflict Siege Until Dawn, matching `tod-setting-rules-8.typ` §§11–11.1. Only the two conflict-name occurrences change. Bonuses, frequency, Dawn-clock ticks, ability names and all other text remain unchanged.

## Findings retained for review

- Recovery vocabulary and Edge: `tod-playbooks-mutant.typ` §7.1 Regeneration and `tod-focuses-bloodline.typ` §3, Mother's Blood, both restore `2 + Edge` Sōma on a short rest. Core §6.5 says Edge does not apply to recovery. Determine the intended rest stage and whether these are selected bespoke exceptions before replacing their benefits. No replacement formula is selected by this sweep.
- Other short-rest triggers: `tod-playbooks-cyborg-hunter.typ` §8.1 Glitches and §8.2 Self-Repair need comparison with Module B and the four-stage rest cycle. Preserve their stated repair/recovery benefits pending that reconciliation.
- Physical-status cap: `tod-focuses-bloodline.typ`, Awaken the Blood, says physical statuses cannot exceed tier 5 while active. Check its intended interaction with the selected full-day Sun-Sick tier-6 progression; do not silently override either rule.
- Tier bonuses in conflicts: `tod-playbooks-mutant.typ` Full Transformation; `tod-playbooks-frontier-doctor.typ` Serum; `tod-playbooks-warden.typ` Killing Ground; `tod-focuses-bloodline.typ` Awaken the Blood and Knows How They Die; and `tod-focuses-frontier.typ` The Charge use Attack tier bonuses. Establish their intended scope against the rule that ordinary conflict Attacks remove shared Disposition rather than inflict statuses. Do not convert tier bonuses to Power or add a status grant without a ruling.
- Remote harm: `tod-focuses-occult.typ`, Feedback and Take the Hand, need an interaction check for explicit mental-status permission and harm charged to Pneuma. Do not invent personal Disposition tracks or automatic pool damage from ordinary shared Disposition loss.
- Companion action timing: `tod-focuses-frontier.typ`, Bond of Steel, grants the horse one action per exchange. Check how this fits shared-side scripting and rotation; retain the explicit benefit rather than inventing a free extra volley.
- Shared Spirit: `tod-focuses-frontier.typ` grants +1 Disposition per kin. Verify setup timing and later arrivals without treating each kin's bonus as a personal share or subtracting it automatically on removal.
- Create: Broker Silver Tongue, Stalker smoke pellets, Warden Trapmaker/warding gear and relevant Focus abilities include discounts or fixed/free effects. Preserve prices pending the wider discount-versus-exception review. Do not infer rank-2 pricing or stacking from flat-price shorthand.
- Occultist §6.1 says the Adept Domain rules apply unchanged but summarizes backlash only as doubles on a failure. Cross-check the generic Domain's failure/Success-at-a-Cost trigger during the core/setting summary reconciliation.
- Minor prose: Cyborg Hunter §8.1 contains “old-world works that disrupts machines”. This grammatical issue is recorded but is outside this two-occurrence rules-reference correction.

## Selected procedures preserved

- Stalker's sleeping-vampire killing-strike reduction remains −3 and explicitly stacks with applicable killing-strike reductions. Its ranged staking gear refers to the separate §8.1 procedure.
- Cyborg Hunter's blade-arm beheading and stake-launcher references retain the revised killing-strike/staking distinction.
- Frontier Doctor's Standard-15 Bled stabilisation, kit-free transfusion, 10-minute Not on My Table recovery and treatment-limit reminder remain intact. Field Surgeon gains no new treatment-limit exception.
- Village Field Armourer retains its selected 10-minute repair timing. Give of Yourself retains its tier-5 ceiling.
- Rider's Chase benefits, explicit companion/helper rules and playtest flag are not rebalanced.
- Bloodline, household and capstone Truth effects retain their explicit text; this inspection does not resolve the deferred Region/Campaign Truth questions.
- Explicit tier-6 rescue and Taken Out exceptions remain unchanged. No general Scar removal, pool refill or participant return is inferred.

## Remaining work

Inspect Module B and remaining core/setting supporting sources; resolve the findings above through existing controlling text or designer decisions; reconcile summaries and audit-status documents; complete the remaining item/Special/example and include/navigation checks. The Focus overview and playbook overview were not part of this 14-file read.

No Typst compilation, PDF rebuild, layout verification, numerical recalibration or playtest was performed. Historical records and main are unchanged.
