#import "common.typ": *

== 2. Core Resolution
  #columns(2, gutter: 6mm)[
=== 2.1 The Roll
#strong[Roll 2d12 + Skill + Modifiers vs. Difficulty.]

- #strong[Skill:] +0 to +4 (from the skill pyramid; untrained = +0).
- #strong[Tags:] +1 per relevant #strong[power tag];, #strong[maximum +2 per roll];. −1 per relevant #strong[weakness tag] (no cap).
- #strong[Statuses:] ± the tier of the highest relevant harmful status and the highest relevant helpful status.
- #strong[Truths:] shift Difficulty by steps (§8), not the roll: one step per rank, ±3 steps at most.

Why 2d12 summed: it produces a bell curve (2--24, average 13) --- predictable for skilled characters, swingy at the extremes, and big enough that +1 modifiers matter without dominating.

=== 2.2 Difficulty Ladder
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

Each step of Difficulty is 3 points. Apply increases and reductions without a minimum target. A reduced target below Routine 9 remains a numerical target; it does not automatically become Trivial. Trivial means the action requires no roll. Roll only when uncertainty or the consequences make resolving the action worthwhile.

=== 2.3 Odds Reference
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

Example: Skill +3 and one tag (+1) vs. Standard 15 → need 11+ → #strong[69%];, or #strong[88%] with one bonus die.

=== 2.4 Bonus Dice and Effort
You can add d12s to the roll and #strong[keep the best two];. Maximum #strong[+2 bonus dice] (4d12 keep 2) from any combination of:

#figure(
  [#table(
    columns: (18%, 82%),
    align: (auto,auto,),
    table.header([Source], [Cost],),
    table.hline(),
    [#strong[Effort] (Cypher)], [3 points from the relevant pool, minus that pool\'s Edge (min 0)],
    [#strong[Momentum] (2d20)], [1 for the first die, 2 for the second],
    [#strong[Woe] (2d20)], [Give the GM 1 Woe per die],
    [#strong[Help];], [An ally spends 1 point from a pool and risks sharing the consequences],
  )]
  , kind: table
  )

#strong[Effort (revised).] Each use of Effort costs 3 − Edge from the relevant pool. You may use Effort a number of times per roll equal to your #strong[Effort Level] (1 at start; 2 and 3 are unlocked by advancement). Each use buys one of:

- #strong[+1 bonus die] --- declared before rolling.
- #strong[+1 Power] --- declared #strong[after] a Success or Success at a Cost (Cypher\'s \"effort on damage\"). It cannot turn a failure into a success.

Example: Effort Level 2 lets you buy one bonus die before the roll, then spend again for +1 Power if you succeed.

=== 2.5 Outcomes
#figure(
  [#table(
    columns: (24%, 76%),
    align: (auto,auto,),
    table.header([Result], [Outcome],),
    table.hline(),
    [#strong[Beat the target by 3+ per step];], [Success with extra Power],
    [#strong[Meet the target];], [#strong[Success] --- 1 Power],
    [#strong[Miss by 1--3];], [#strong[Success at a Cost] --- 1 Power, but the GM adds a consequence or gains 1 Woe (player\'s choice of which)],
    [#strong[Miss by 4+];], [#strong[Failure] --- the GM makes a move; GM gains 1 Woe],
  )]
  , kind: table
  )
#strong[Power] = 1 for meeting the target, +1 for every full 3 points over it. Power is spent on #strong[Effects] (§5). Any Power you don\'t spend becomes #strong[Momentum] (party pool, max 6).

=== 2.6 Doubles (Twists)
If your two #strong[kept] dice show the same number:

- #strong[On a success:] Critical --- +1 Power and add a narrative flourish.
- #strong[On a failure or cost:] Complication --- the GM introduces a complication right away.
- #strong[Double 12s:] always a success with +2 Power. #strong[Double 1s:] always a complication, even on a success.
- #strong[Buying it off.] When the dice give you a complication (a twist, or a Risky roll, §2.7), you may cancel it by giving the GM #strong[2 Woe]: a problem now, or a problem later. If you keep it and the GM can't think of a fitting complication, the GM gains the 2 Woe instead.
#colbreak()
- #strong[NPCs.] When the dice give an NPC a complication, the GM may spend #strong[2 Woe] to cancel it. Otherwise the GM describes the complication, or invites the players to.

Base chance of doubles on 2d12 is about 8% (1 in 12).

=== 2.7 Risky Rolls (Optional)
Some rolls aren't harder, just more dangerous. Before a roll, the GM may call it #strong[Risky 1], #strong[2] or #strong[3].

- #strong[Risk die.] Roll one extra d12 of a different colour with the others. It's never kept, doesn't add to the total and doesn't count toward the bonus dice maximum.
- #strong[Complication.] If the Risk die shows the rating or lower, a complication occurs after the roll is resolved, whatever the result and on top of any twist. You can buy it off for 2 Woe (§2.6).
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
  ]
        