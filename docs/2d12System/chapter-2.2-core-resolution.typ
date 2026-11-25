#import "common.typ": *

== 2. Core Resolution <core-core-resolution>
  #columns(2, gutter: 6mm)[
=== 2.1 The Roll <core-roll>
#strong[Declare the goal first.] Before rolling, say what you want to accomplish and how. Agree which Effects can express it and what it takes: the Truth, tier, rating or clock segments needed (@core-effects). Settle this before the roll, and don't announce a new requirement afterward. If one action can't accomplish the whole goal, say what a smaller result achieves, or use a clock or a conflict.

The GM sets the Difficulty and names the danger: what could go wrong. State unavoidable costs separately. If the action is Risky, establish its rating before rolling. The GM needn't name every possible severity. A named danger occurs only when a rule triggers it.

#strong[Roll 2d12 + Skill + Modifiers vs. Difficulty.]

Designate one d12 as the Complication die. Roll any bonus dice alongside the two action dice, to the normal maximum of 2 bonus dice. Always retain the Complication die and the highest single other action die. Discard the rest; don't select a lower die to create a match. Use the same retained pair for the total and outcome comparison. Add both retained dice, Skill and applicable modifiers. Meet or exceed Difficulty to succeed; a lower total fails.

- #strong[Skill:] +0 to +4 (from the skill pyramid; untrained = +0).
- #strong[Personal statuses:] + the tier of the highest relevant helpful status, − the tier of the highest relevant harmful status (@core-personal-statuses).
- #strong[Situational Conditions:] + the rating of the highest relevant helpful Condition, − the rating of the highest relevant harmful one (@core-situational-conditions).
- #strong[Truths] add nothing to the roll. They decide whether an action is possible, certain or needs something first (@core-truths).
- #strong[Tags] add nothing to the roll. A relevant tag supplies Power instead (@core-outcomes).

Use at most one helpful and one harmful modifier from each of the two slots; equal ratings don't combine, and the others stay recorded for other actions. Assess each actor separately in a versus test, and don't add an extra modifier just because the opponent is hindered.

// PLAYTEST: flat modifiers outside the slots (M4)
#strong[Fixed modifiers.] A rule that names a fixed modifier, such as Impede (−3, @core-actions-effects) or the Grind's #emph[sick] (−1, Module B.3), applies it in addition to the slots; it isn't a status or Condition and doesn't use a slot. Adversary Guard raises the Difficulty instead (@core-scripting-volleys), and Gain Position adds a bonus die (@core-bonus-dice-effort). (Playtest Value)

// PLAYTEST: status and Condition slots together range from −12 to +12; no lower Situational cap adopted.
#emph[Example:] dice 16 + Skill 3 + (#emph[exhausted −3]) + #emph[rehearsed plan 2] − #emph[slippery bridge 3] = 15.

Why 2d12 summed: it produces a bell curve (2--24, average 13) --- predictable for skilled characters, swingy at the extremes, and big enough that +1 modifiers matter without dominating.

=== 2.2 Difficulty Ladder <core-difficulty-ladder>
#figure(
  [#table(
    columns: (19%, 11%, 70%),
    align: (auto,auto,auto,),
    table.header([Difficulty], [Target], [Example],),
    table.hline(),
    [Trivial], [---], [No roll; it happens],
    [Routine], [9], [Climb a rough wall with plenty of handholds],
    [Easy], [12], [Climb a knotted rope],
    [Standard], [15], [Pick a decent lock],
    [Hard], [18], [Track someone over bare rock],
    [Formidable], [21], [Talk down a warlord in front of his troops],
    [Heroic], [24], [Hold a collapsing gate long enough for a village to escape],
    [Epic], [27], [Things legends are made of],
    [Divine], [30], [Miraculous],
  )]
  , kind: table
  )

Roll only when the outcome is uncertain and matters; otherwise the action is Trivial and simply happens. Each step of Difficulty is 3 points. Modifiers can push a target below Routine 9; it is still a number to roll against, not an automatic success.

#strong[Permission comes first.] Before setting a Difficulty, ask whether the character can attempt the action at all. A relevant background, Knowledge Skill (@core-skill-pyramid), tool or ability can make an action possible, or remove an obstacle caused only by its absence. Permission isn't a bonus: it adds no die or modifier unless a rule says so. A suitable diagnostic kit lets you inspect a sealed mechanism without damaging it; it doesn't guarantee you identify the fault. Relevant Truths are part of this check (@core-possibility-before-difficulty). If the outcome is still uncertain and matters, roll.

=== 2.3 Odds Reference <core-odds-reference>
Chance to meet or exceed the number needed on the retained dice: Difficulty − Skill − net applicable roll modifiers. Total success includes Clean Success, Success with Complication and Critical Success.

#figure(
  [#table(
    columns: (28%, 24%, 24%, 24%),
    align: (auto,auto,auto,auto,),
    table.header([Need on dice], [No bonus dice], [1 bonus die], [2 bonus dice],),
    table.hline(),
    [7+], [89.58%], [96.82%], [98.91%],
    [9+], [80.56%], [91.90%], [96.22%],
    [11+], [68.75%], [83.51%], [90.23%],
    [13+], [54.17%], [70.72%], [78.99%],
    [15+], [38.19%], [54.11%], [62.33%],
    [17+], [25.00%], [38.19%], [45.83%],
    [19+], [14.58%], [23.90%], [30.08%],
    [21+], [6.94%], [12.15%], [16.11%],
  )]
  , kind: table
  )

Example: Skill +3 and #emph[focused +1] (+1) vs. Standard 15 → need 11+ → 68.75% success, 83.51% with one bonus die, or 90.23% with two.

These figures assume fair independent dice, mandatory Complication-die retention, and no rerolls or face changes. Tags supply Power and don't affect these odds. The figures are unconditional, before complication buyoff, mitigation or Resistance, and exclude independent Risky triggers. They aren't versus-test probabilities: opposing totals, modifiers and bonus dice determine those results. Matching retained faces occur in 1 roll in 12 overall on fixed-Difficulty action rolls with 0, 1 or 2 bonus dice; Difficulty determines their split between Critical Success and Critical Failure.

=== 2.4 Bonus Dice and Effort <core-bonus-dice-effort>
You can add d12s to the roll. Always retain the Complication die and highest single other action die. Maximum #strong[+2 bonus dice] from any combination of:

#figure(
  [#table(
    columns: (24%, 76%),
    align: (auto,auto,),
    table.header([Source], [Cost],),
    table.hline(),
    [#strong[Effort];], [3 points from the relevant pool, minus that pool\'s Edge (min 0), per use],
    [#strong[Weal];], [1 for the first die, 2 for the second],
    // PLAYTEST: Woe-bought dice cost the Weal price in Woe (M3)
    [#strong[Woe];], [Give the GM Woe equal to the Weal cost (1 for the first die, 2 for the second) (Playtest Value)],
    [#strong[Help];], [An ally spends 1 point from a pool and shares the consequences],
    [#strong[Specialisation];], [Free: one die when a Specialisation directly applies (@core-skill-pyramid)],
  )]
  , kind: table
  )

#strong[Effort.] You can use Effort up to your #strong[Effort Level] times per roll (1 at start; advancement unlocks 2 and 3). Each use buys one of:

- #strong[+1 bonus die] --- declared before rolling.
- #strong[+1 Power] --- declared after success. It cannot turn a failure into a success.

Example: Effort Level 2 lets you buy one bonus die before the roll, then spend again for +1 Power if you succeed.

Eligible automatic successes also permit post-success Power purchases. Establish the specified Power award, then purchase Power before allocation and mitigation. Normal pool costs, Effort limits and explicit restrictions still apply. Lost, tied and trumped actions don't qualify; two opposing automatic successes that produce a stalemate don't qualify either. Bonus-die purchases have no effect on an action roll that isn't made.

#strong[Paying costs.] Pay Effort and Help in full; you can't spend points a pool doesn't have unless a rule says so (@core-running-dry). Paying the last point runs the pool dry; a cost of 0 never does. Pay each listed cost separately, when its rule says. If a cost takes you out, finish that action, but buy no more Effort or abilities for it.

#strong[Free benefits.] Free bonus dice still count toward the +2 cap. Free Help waives only the pool cost: the helper must still be relevant and still shares the risk. Backing a side at the start of a conflict is not Help (@core-setup).

#strong[What Woe buys.] When you buy a die with Woe, say what you do differently to earn the better chance. If the approach makes extra exposure apparent, the GM describes it; it doesn't add a second automatic consequence. The Woe is the price, and the GM spends it later (@core-woe).

=== 2.5 Outcomes <core-outcomes>
Compare the final retained faces after explicit face changes (@core-dice-manipulation), without Skill or roll modifiers.

#figure(table(columns: (30%, 35%, 35%),
  table.header([Complication die], [Total meets or exceeds Difficulty], [Total below Difficulty]),
  [Lower than the other die], [Clean Success], [Failure with a Benefit],
  [Higher than the other die], [Success with Complication], [Failure with Complication],
  [Matching the other die], [Critical Success], [Critical Failure],
))

“Success,” “succeeds” and “successful” include Clean Success, Success with Complication and Critical Success. A rule requiring a particular outcome names it explicitly.

Every total below Difficulty fails. Matching retained dice produce one critical outcome instead of the higher/lower comparison. Double 1s and double 12s have no special action overrides. Independent complications still resolve. Resistance's multiple-12 procedure remains separate (@core-resistance-harm-recovery).

#strong[Success Power.] Generate applicable Tag Power + 1 Power, +1 per full 3 points above Difficulty. Clean Success and Success with Complication generate the same Power. Critical Success adds +1 Power and a flourish fitting the purchased result, not an unpaid Effect or mechanical benefit.

#strong[Failure Power.] Failure generates no Power, including Tag Power, and no automatic failure Woe. Accepting, mitigating or Resisting a complication grants no replacement Woe. Other explicit Woe triggers retain their own rules.

#strong[Tag Power.] Each relevant tag supplies #strong[+1 Power];, #strong[maximum +2 per action];. A tag is relevant only when it materially supports the declared approach; being on your sheet isn't enough. The same tag can help one action and be compelled in another (@core-tags, @core-tyche-points). On a Failure, tags supply nothing, and their Power doesn't become Weal.

#strong[Power buys the result.] Spend Power on #strong[Effects] (@core-effects); the Effects you buy are what the action accomplishes. A successful roll lets you buy them, but doesn't grant the declared goal by itself. If your purchases meet the requirement agreed before the roll, the goal is achieved; if they fall short, record the progress they make. Any Power you don\'t spend becomes #strong[Weal] (party pool, max 6), and accomplishes nothing in the fiction now.

#strong[Failure with a Benefit.] The attempt fails. The GM names a useful fictional opening arising from the attempt and informed by the approach. It may reveal another route, clarify an obstacle or create an opportunity, but doesn't accomplish the failed goal. It grants no Power, Weal, Tychē Points, numerical bonus, status tier or Condition rating. Acting on it follows normal rules and doesn't guarantee success. Independent complications must remain compatible with the opening.

#strong[Failure with Complication.] Fail and suffer a complication arising from the named danger. Judge severity by fictional impact; it isn't automatically moderate or major. Cancelling or reducing it doesn't accomplish the failed goal.

#strong[Critical Failure.] Fail and suffer one major complication arising from the danger named before rolling. Its severity is fixed, but its consequences fit the established fiction and stakes; a critical introduces no otherwise unestablished death, permanent injury or unrelated catastrophe. Cancel it for 3 Woe before mitigation or Resistance, or Resist normally (@core-doubles). Failure supplies no Power, and ordinary post-success Effort is unavailable; Power mitigation requires another explicit permission. Reducing or cancelling the complication doesn't accomplish the failed goal.

#strong[Choosing a consequence.] Success with Complication triggers a complication arising from the named danger. The examples below suggest trouble when a rule triggers it; they create no additional trigger. State the concrete consequence and its minor, moderate or major severity before a response is chosen (@core-doubles). Scripted-conflict limits still apply (@core-costs-failures-complications). #strong[If the test succeeded, keep what it bought:] a consequence can't cancel or empty an Effect already purchased, but it needn't grant the part of the goal the Power didn't reach.

#figure(
  [#table(
    columns: (20%, 40%, 40%),
    align: (auto,auto,auto,),
    table.header([Action], [Immediate complication], [Longer-lasting consequence],),
    table.hline(),
    [Inquiry], [You get the name, but someone notices you asking], [You get the records, but the source can't safely give further access],
    [Negotiation], [You secure passage, but only at an inconvenient time], [You secure passage, but the agreement creates an obligation],
    [Repair], [It works, but must be shut down after this use], [It works, but a separate capability stays offline until serviced],
    [Travel], [You arrive, but leave supplies behind], [You arrive, but your usual return route is closed],
  )]
  , kind: table
  )

#strong[Versus tests.] Compare opposing final totals instead of using Difficulty. Higher wins: generate applicable Tag Power + 1 Power, +1 per full 3 points of winning margin. Each actor's own retained faces classify their success or failure under the table above. Matching faces don't override a higher opposing total. The loser generates no Power; cancelling or reducing a complication doesn't turn that loss into success or prevent the winner's purchased Effects. Exact ties are neutral stalemates: no Power, normal action Effect or comparison-based benefit, complication or critical. Paid costs remain spent; independent complications still resolve (@core-scripting-volleys).

#strong[Scripted conflicts.] Independent actions use Standard 15, adjusted by explicit Difficulty modifiers such as Guard; statuses and Situational Conditions modify totals. Classify each action separately; don't compare their totals. Complete both independent actions before checking defeat or mutual defeat, even if one defeats a side or takes its actor out. Preserve explicit exceptions and their timing. Comparison-based complications can't impose additional Disposition loss or harmful statuses without explicit permission, duplicate an opposing purchase, freely change the script or cancel an independent action. Independent hazards and abilities retain only their stated consequence permissions. Use @core-costs-failures-complications for action permissions, Power reservation and consequence limits.

#strong[Automatic success.] Replace an otherwise permitted action's roll, not its permissions, stakes, scripted interaction or assigned turn. Apply its listed Power plus applicable Tag Power unless already included. Add no calculated margin, extra base-success point or matching-dice bonus. No action dice means no comparison-based complication. Independent consequences remain, including a permitted Risky action's separate Risk die unless explicitly exempted. Automatic success grants no extra action or rescue of a trumped action.

In a versus interaction, one automatic success wins and neither actor rolls action dice. The opponent generates no Power and receives no comparison-based failure benefit, complication or critical. The winner still prevents the opposing normal Effect. Two automatic successes produce a neutral stalemate unless explicitly overridden; neither generates Power or a normal action Effect. Paid costs stay spent. Eligible post-success Effort follows @core-bonus-dice-effort. Pending Impede and Gain Position expire unused on a no-roll scripted action; neither modifies the automatic-success Power award or transfers to Risk or Resistance dice.

=== 2.6 Complications and Responses <core-doubles>
State each concrete complication and its original severity before choosing a response. Judge severity by impact in the current fiction, not its name. A delay matters only when time matters; exposure matters only when someone can act on it. A complication can't cancel or empty a purchased Effect.

#figure(table(columns: (18%, 64%, 18%),
  table.header([Severity], [Fictional impact], [Woe buyoff]),
  [Minor], [Changes the next decision or creates a limited problem], [1],
  [Moderate], [Significantly changes the scene or creates a substantial follow-up problem], [2],
  [Major], [Dramatically escalates the situation or creates serious, lasting trouble], [3],
))

Resolve each distinct complication separately:
+ Choose whether to cancel it with a Woe buyoff at its original severity.
+ If not, spend eligible surplus Power on mitigation, if desired.
+ Resist the remaining consequence once, if permitted and desired.
+ Resolve what remains.

Before resources are committed, the GM explains what reduction changes in the fiction. Each distinct complication receives its own severity, buyoff decision, mitigation and possible Resistance. Don't charge twice for different descriptions of the same consequence.

#strong[Woe buyoff.] Give the GM 1/2/3 Woe for minor/moderate/major to cancel the whole complication without spending Power or reducing the purchased Effect. Once Power mitigation or Resistance begins against it, buyoff is unavailable. Use original severity, not reduced severity.

#strong[Power mitigation.] Each Power reduces one severity band: major → moderate → minor → none. Partial mitigation is allowed: major to moderate costs 1 Power, major to minor costs 2, and major to none costs 3. A complication reduced to none doesn't occur.

Retain enough Power to fund the required Effect agreed before rolling; don't shrink that Effect to free Power for mitigation. Only surplus Power is available. Surplus generated and purchased Power share the action's budget. Multiple purchases can reduce the same complication, subject to normal Effort costs, timing and limits. There is no separate mitigation cap.

On a successful scripted action, choose permitted Effects and reserve their costs before mitigation. Fund at least one permitted Effect; it needn't be the action's primary purchase. Scripting an action category doesn't itself commit Power to its primary Effect or require a numerical target before rolling. Preserve any minimum requirement agreed before rolling. Insufficient Power leaves no surplus; a cheaper purchase doesn't satisfy that requirement or free Power for mitigation. Eligible additional Power purchases may supply more. Don't spend Power twice; a flourish or fictional opening isn't a funded Effect. This reservation requirement applies only to Power mitigation, not Woe buyoff or eligible Resistance, and grants no Power or purchases to failed, tied or trumped actions (@core-costs-failures-complications).

Reserve Effect Power and declare mitigation before supplementary declarations close. Cancellation leaves purchases spent, frees no Power for mitigation and doesn't reopen declarations. Preserve expressly later ability windows, including Self-Repair (Adversaries @adv-shared-special-timing).

#strong[Narrative Resistance.] After mitigation, or without spending Power first, Resist a remaining imposed narrative complication once to reduce it by one band, including minor to none. Describe a fitting response and choose its pool. The GM states the reduced consequence before the player commits. Use the normal Resistance roll and pool cost (@core-resistance-harm-recovery); the roll determines cost, not whether reduction occurs. Each distinct complication requires its own roll and payment and can be Resisted only once.

For an incoming harmful status, use normal 2-tier Resistance instead; don't apply both reductions from one Resistance. Complication severity isn't status tier: major doesn't automatically mean tier-3 harm. Resistance's dice and multiple-12 cost procedure are unchanged.

#strong[Boundaries.] Cancelling or reducing a complication doesn't reverse failure, revoke purchased Effects, award replacement Woe or create a replacement cost. Mitigation and Resistance address consequences as they unfold; they don't erase already-resolved events. Unavoidable costs and protected payments remain excluded, including explicitly accepted concession terms or an injury trade (@core-costs-failures-complications). Choosing an imposed complication instead of its buyoff doesn't turn it into a protected payment. Mitigation and narrative Resistance address eligible complications, not an opponent's ordinary purchased Disposition effect.

#strong[NPCs.] State the consequence and original severity first. The GM may cancel it by spending existing Woe equal to original severity: minor 1, moderate 2, major 3. Pay in full before mitigation; Woe can't be overrun. Declining or being unable to cancel generates no Woe. Otherwise the NPC may spend surplus action Power after Effect reservation, reducing one band per Power. Once mitigation begins, cancellation is unavailable. Treat distinct complications separately, using one shared action Power budget.

These permissions grant ordinary NPCs no pool-based Effort, narrative Resistance or generic Woe purchase of additional Power. Existing explicit abilities, status-reduction procedures and full-PC resource rules retain their permissions. Cancellation or mitigation doesn't reverse failure, cancel an opposing purchased Effect or bypass scripted-conflict limits.

Interpose redirects only an eligible incoming status, not its underlying complication or separate consequences. Hold the Line reduces only its permitted ordinary Disposition loss, not complication severity. Neither grants permission to inflict a status or additional Disposition loss.

#emph[Example:] an action generates 3 Power and requires 2 for its goal. A major narrative complication triggers. The player may first give the GM 3 Woe to cancel it. Instead, they reserve 2 Power, spend the surplus 1 to reduce major to moderate, then Resist once to reduce moderate to minor and pay the rolled pool cost. Resolve the funded Effect and remaining minor consequence. Eligible Power purchases could mitigate further before Resistance. Cancelling this complication wouldn't cancel a separate Risky complication.

=== 2.7 Risky Rolls (Optional) <core-risky-rolls>
Some rolls aren't harder, just more dangerous. Before a roll, the GM may call it #strong[Risky 1], #strong[2] or #strong[3].

- #strong[Risk die.] Roll one extra d12 of a different colour with the others. It's never kept, doesn't add to the total and doesn't count toward the bonus dice maximum.
- #strong[Complication.] If the Risk die shows the rating or lower, an independent complication triggers on any outcome, including Critical Success. Assign its severity separately; Critical Failure doesn't automatically make it major. Use @core-doubles for buyoff, mitigation and Resistance.
- #strong[Raising the stakes.] The GM may spend #strong[1 Woe] to make a roll Risky 1, or to raise its rating by 1 (maximum 3). Settings may make some hazards Risky by default.

#figure(
  [#table(
    columns: (22%, 34%, 44%),
    align: (auto,auto,auto,),
    table.header([Rating], [Risk die shows], [Chance of a complication],),
    table.hline(),
    [Risky 1], [1], [about 8%],
    [Risky 2], [1--2], [about 17%],
    [Risky 3], [1--3], [25%],
  )]
  , kind: table
  )

=== 2.8 Dice Manipulation <core-dice-manipulation>
An ability keeps its own trigger, cost, timing and limits. The procedure below governs action-roll manipulation; it doesn't expand ability eligibility or replace Resistance's own procedure. An explicit ability rule overrides this shared procedure.

#strong[Choosing a reroll.] When an ability lets you reroll and keep the better result, the player whose character made the roll chooses either the original roll or the reroll as a whole, even when another character grants it. Use the chosen roll's total, retained-die comparison, outcome and resulting Power. Don't combine dice, totals or comparisons from different rolls.

I Planned for This and Ace use complete-roll selection. Invoke remains replacement-only; it doesn't gain a keep-original option. Existing triggers, costs, frequency limits and prohibitions on undoing resolved consequences remain unchanged.

#strong[Face changes.] An explicit face change replaces a retained die's value for that action. Use the replacement for both total and retained-face comparison. Skill and roll modifiers affect only the total, never die faces. Die identity doesn't change: a Complication die remains the Complication die. Don't swap roles or reconsider the retained pair or discarded bonus dice.

Perfect Strike can change either retained die. Matches created by a face change use the normal critical procedure: no automatic success and no override of a versus tie. Changing one die of a match can remove its critical. The final retained faces determine the comparison. Face changes leave the separate Risk die unchanged.

A face change belongs only to its roll. Keeping that roll preserves the change; replacing it loses the change, which doesn't carry to new dice. Apply each later face change to the current value of the chosen retained die. A further use on the chosen or replacement roll requires the ability's own trigger, timing and limits; rerolling doesn't refresh an ability or grant another use.

#strong[Sequential manipulation.] Resolve eligible abilities one at a time:
+ Choose an eligible ability and pay its cost.
+ Resolve that ability completely before choosing another.
+ Complete any reroll replacement or complete-roll selection before further manipulation. Never combine rolls.
+ Recalculate total and retained-face comparison using the current retained faces. Check further eligibility against the current result.
+ Repeat while choosing eligible abilities. Finish all manipulation before Effects or consequences begin resolving. Don't reopen the action roll afterward unless an explicit rule permits it.

Costs remain spent even if a later manipulation replaces the affected roll or removes its benefit. A generic action reroll leaves the separate Risk die unchanged unless a rule explicitly permits rerolling it; the original Risk result remains.

#emph[Example:] change a retained die, then use an ability offering a reroll and a choice of which complete roll to keep. Choose between the modified original roll and the reroll before using another manipulation ability. Keeping the original preserves its face change; keeping the reroll loses it. Further manipulation requires another eligible use and its normal cost.

// ART: A climber on a fraying rope bridge, one odd-coloured die tumbling into the gorge below.
#art-fill(min: 6cm)[A climber on a fraying rope bridge, one odd-coloured die tumbling into the gorge below.]

  ]
