#import "common.typ": *

== 14. Design Notes --- What Was Kept, Changed, Cut
#figure(
  [#table(
    columns: (14%, 37%, 28%, 21%),
    align: (auto,auto,auto,auto,),
    table.header([Source], [Kept], [Changed], [Cut],),
    table.hline(),
    [#strong[Fate];], [Skill pyramid, Tychē Points, invoke/compel, Refresh as cost of power], [Aspects are replaced by tags and Truths], [Fudge dice, stress boxes],
    [#strong[Cypher];], [Pools, Edge, the sentence, Effort on rolls and on Power, cyphers and artifacts (Module A)], [Four pools instead of three; Effort buys bonus dice instead of lowering difficulty], [d20 task levels, GM intrusions (replaced by compels and Woe)],
    [#strong[:Otherscape];], [Power/weakness tags, statuses with tiers, effects, burning tags], [Power comes from roll margin; tag cap +2], [Themebooks, Improve/Abandon tracks],
    [#strong[Mouse Guard];], [Full conflict scripting, shared Disposition, outcome-first compromise, BIG, weapons as action bonuses, the Grind (Module B)], [Rolled Disposition divides the setup total by 3 before backers and flat modifiers; actions spend Power], [Nature, Persona],
    [#strong[Blades];], [Playbooks, resistance, stress-as-currency, clocks, load-out], [Stress tracks are the four pools], [Action dice pools, Position/Effect grid, crew sheets],
    [#strong[2d20];], [Momentum, Woe, Truths, Module C, buy-offs, Escalation], [Momentum from unspent Power; Truths shift Difficulty; complication range → Risk die (§2.7)], [d20 roll-under],
  )]
  , kind: table
  )
  
=== 14.1 Known Risks
- #strong[Currency load:] pools + Tychē + Momentum + Woe is the upper limit for medium crunch. Keep spend menus short on the sheet.
- #strong[Modifier range:] max is skill +4, tags +2, helpful status up to +6, Tychē invoke +2. Statuses are the largest swing. Playtest a ±3 status cap.
- #strong[Effort for Power] may make high-Edge characters very efficient. Watch Edge-3 pools where Effort is free; consider a minimum cost of 1.
- #strong[Resistance dice:] Edge adds Resistance dice instead of reducing the cost, and only a double 12 is free (§6). Watch how often stacked penalties (#emph[Exposed] plus #emph[Shaken] on a 0-Edge pool) push Resistance to negative Edge, whether high-Edge pools drain faster than before, and whether the double-12 result (1--6%) is too rare to matter.
- #strong[Four pools] means more pool points to track. The sheet should put all four in one row with Edge beside each.
- #strong[Conflict length:] with scripting used for every big contest, the conflict test (§10.1) is what stops overuse.
- #strong[Running dry:] running dry imposes a status at tier 1 + overrun, and Scars come from tier 6, not from an empty pool (§6.1--6.3). Playtest the 2-points-per-tier depletion rate, the one-Scar-per-scene limit, and how often Resisting on an empty pool reaches tier 4 or higher.
- #strong[Damage cycle:] watch whether the injury trade (§10.11) is a hard choice or always taken, and whether it drags conflicts out. Test the healing intervals, the 3-segment Dying clock, and whether the 1-tier treatment limit makes Restore-cost abilities (#emph[Field Medic], #emph[Field Surgeon]) too weak against lasting injuries.
- #strong[Shared Disposition:] one track per side (§10.2, §10.9). Watch whether a lone remaining participant acting repeatedly feels heroic or too forgiving, and whether larger parties get too many injury trades.
- #strong[Old simulation figures:] earlier notes reported mirrored fights about 23.5% shorter with shared Disposition, and an older setup averaging about 6 Disposition (range 3--9) and 6 volleys. Those figures predate the divide-by-three setup; re-run them before predicting conflict length. A fixed track of 5 is a possible comparison, not a rule.
- #strong[Attack and Feint +1] (§10.6): watch whether Defend keeps pace, whether Feint becomes the default action, and how the +1 stacks with #emph[Crowd Work] and #emph[Every Trick in the Book].
- #strong[Superiority] (§10.3): watch whether preparation becomes routine, how often both sides claim it, and whether one advantage is being described several ways to claim more categories.
- #strong[Playtest flags in the text:] §5.1 stacking; §6 negative Edge; §6.3 one Scar per scene; §10.3 PC/opposition symmetry and Superiority eligibility; §10.5 Feint versus Maneuver; §10.13 four-step compromise; §10.17 area effects. These notes don't settle them.
