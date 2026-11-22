#import "common.typ": *

== 2. Core Resolution <core-core-resolution>
  #columns(2, gutter: 6mm)[
=== 2.1 The Roll <core-roll>
#strong[Declare the goal first.] Before rolling, say what you want to accomplish and how. Agree which Effects can express it and what it takes: the Truth, tier, rating or clock segments needed (@core-effects). Settle this before the roll, and don't announce a new requirement afterward. If one action can't accomplish the whole goal, say what a smaller result achieves, or use a clock or a conflict.

#strong[Roll 2d12 + Skill + Modifiers vs. Difficulty.]

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
Chance to hit the number needed on the dice (after subtracting your bonuses):

#figure(
  [#table(
    columns: (31.68%, 10.89%, 28.71%, 28.71%),
    align: (auto,auto,auto,auto,),
    table.header([Need on dice], [2d12], [3d12 keep 2], [4d12 keep 2],),
    table.hline(),
    [7+], [90%], [98%], [99%],
    [9+], [81%], [94%], [98%],
    [11+], [69%], [88%], [95%],
    [13+], [54%], [78%], [89%],
    [15+], [38%], [65%], [80%],
    [17+], [25%], [48%], [66%],
    [19+], [15%], [32%], [48%],
    [21+], [7%], [17%], [28%],
  )]
  , kind: table
  )

Example: Skill +3 and #emph[focused +1] (+1) vs. Standard 15 → need 11+ → #strong[69%];, or #strong[88%] with one bonus die.

=== 2.4 Bonus Dice and Effort <core-bonus-dice-effort>
You can add d12s to the roll and #strong[keep the best two];. Maximum #strong[+2 bonus dice] (4d12 keep 2) from any combination of:

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
- #strong[+1 Power] --- declared #strong[after] a Success or Success at a Cost. It cannot turn a failure into a success.

Example: Effort Level 2 lets you buy one bonus die before the roll, then spend again for +1 Power if you succeed.

#strong[Paying costs.] Pay Effort and Help in full; you can't spend points a pool doesn't have unless a rule says so (@core-running-dry). Paying the last point runs the pool dry; a cost of 0 never does. Pay each listed cost separately, when its rule says. If a cost takes you out, finish that action, but buy no more Effort or abilities for it.

#strong[Free benefits.] Free bonus dice still count toward the +2 cap. Free Help waives only the pool cost: the helper must still be relevant and still shares the risk. Backing a side at the start of a conflict is not Help (@core-setup).

#strong[What Woe buys.] When you buy a die with Woe, say what you do differently to earn the better chance. If the approach makes extra exposure apparent, the GM describes it; it doesn't add a second automatic consequence. The Woe is the price, and the GM spends it later (@core-woe).

=== 2.5 Outcomes <core-outcomes>
#figure(
  [#table(
    columns: (24%, 76%),
    align: (auto,auto,),
    table.header([Result], [Outcome],),
    table.hline(),
    [#strong[Beat the target by 3+];], [#strong[Success] --- Tag Power + 1, +1 per full 3 points over],
    [#strong[Meet the target];], [#strong[Success] --- Tag Power + 1],
    [#strong[Miss by 1--3];], [#strong[Success at a Cost] --- Tag Power + 0; the GM names a consequence, or gains 1 Woe instead (player\'s choice)],
    [#strong[Miss by 4+];], [#strong[Failure] --- no Power; the GM makes a move; GM gains 1 Woe],
  )]
  , kind: table
  )
#strong[Tag Power.] Each relevant tag supplies #strong[+1 Power];, #strong[maximum +2 per action];. A tag is relevant only when it materially supports the declared approach; being on your sheet isn't enough. The same tag can help one action and be compelled in another (@core-tags, @core-tyche-points). On a Failure, tags supply nothing, and their Power doesn't become Weal.

#strong[Power buys the result.] Spend Power on #strong[Effects] (@core-effects); the Effects you buy are what the action accomplishes. A successful roll lets you buy them, but doesn't grant the declared goal by itself. If your purchases meet the requirement agreed before the roll, the goal is achieved; if they fall short, record the progress they make. Any Power you don\'t spend becomes #strong[Weal] (party pool, max 6), and accomplishes nothing in the fiction now.

#strong[A cost with no Power.] With no relevant tags, a Success at a Cost has 0 Power: you buy no Effect, and the cost still applies. Post-roll Effort (@core-bonus-dice-effort) or another explicit source can add Power. Don't invent a free status, answer or segment to make up for it.

#strong[Choosing a consequence.] When a rule calls for a consequence, such as Success at a Cost, a failure's GM move or a complication, the table below suggests the kind of trouble to pick. It creates no new trigger and no severity track, and scripted conflicts still follow @core-costs-failures-complications: judge severity by fictional impact. A minor consequence changes the next decision; a more serious one changes the scene or leaves a problem to deal with afterward. Name the consequence before the player chooses. #strong[If the test succeeded, keep what it bought:] a consequence can't cancel or empty an Effect already purchased, but it needn't grant the part of the goal the Power didn't reach.

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

#strong[Versus tests, conflicts and automatic success.] Versus tests compare opposing totals instead of using this table (@core-scripting-volleys). Inside scripted conflicts, @core-costs-failures-complications limits what failure, costs and Woe can do. An automatic success replaces the roll: apply its listed Power plus any Tag Power, with no dice-based critical or complication.

=== 2.6 Doubles (Twists) <core-doubles>
If your two #strong[kept] dice show the same number:

- #strong[On a success:] Critical --- +1 Power and add a narrative flourish.
- #strong[On a failure or cost:] Complication --- the GM introduces a complication right away.
- #strong[Double 12s:] an independent test always succeeds, with +2 Power instead of +1.
- #strong[Double 1s:] always bring a complication, even on a success, but don't fail automatically. A success still gains the +1 critical Power.
- #strong[Buying it off.] When the dice give you a complication (a twist, or a Risky roll, @core-risky-rolls), you may cancel it by giving the GM #strong[2 Woe]: a problem now, or a problem later. If you keep it and the GM can't think of a fitting complication, the GM gains the 2 Woe instead.
- #strong[NPCs.] When the dice give an NPC a complication, the GM may spend #strong[2 Woe] to cancel it. Otherwise the GM describes the complication, or invites the players to.

Base chance of doubles on 2d12 is about 8% (1 in 12). Doubles created by an ability count as rolled doubles. For doubles in versus tests and conflicts, see @core-costs-failures-complications.

=== 2.7 Risky Rolls (Optional) <core-risky-rolls>
Some rolls aren't harder, just more dangerous. Before a roll, the GM may call it #strong[Risky 1], #strong[2] or #strong[3].

- #strong[Risk die.] Roll one extra d12 of a different colour with the others. It's never kept, doesn't add to the total and doesn't count toward the bonus dice maximum.
- #strong[Complication.] If the Risk die shows the rating or lower, a complication occurs after the roll is resolved, whatever the result and on top of any twist. You can buy it off for 2 Woe (@core-doubles).
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

// ART: A climber on a fraying rope bridge, one odd-coloured die tumbling into the gorge below.
#art-fill(min: 6cm)[A climber on a fraying rope bridge, one odd-coloured die tumbling into the gorge below.]

  ]
