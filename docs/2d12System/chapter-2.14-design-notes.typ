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
    [#strong[Mouse Guard];], [Full conflict scripting, Disposition, compromise, BIG, weapons as action bonuses, the Grind (Module B)], [Disposition from 2d12; actions spend Power], [Nature, Persona],
    [#strong[Blades];], [Playbooks, resistance, stress-as-currency, clocks, load-out], [Stress tracks are the four pools], [Action dice pools, Position/Effect grid, crew sheets],
    [#strong[2d20];], [Momentum, Woe, Truths, Module C, buy-offs, Escalation], [Momentum from unspent Power; Truths shift Difficulty; complication range → Risk die (§2.7)], [d20 roll-under],
  )]
  , kind: table
  )
  
=== 14.1 Known Risks
- #strong[Currency load:] pools + Tychē + Momentum + Woe is the upper limit for medium crunch. Keep spend menus short on the sheet.
- #strong[Modifier range (revised):] max is skill +4, tags +2, helpful status up to +6, Tychē invoke +2. Statuses are now the largest swing. Playtest a ±3 status cap.
- #strong[Effort for Power] may make high-Edge characters very efficient. Watch Edge-3 pools where Effort is free; consider a minimum cost of 1.
- #strong[Resistance dice (revised):] Edge now adds Resistance dice (2 + Edge, keep the highest) instead of reducing the cost, and only a double 12 is free. Below Edge −1 you keep the lowest of |Edge| dice, so stacked penalties (such as #emph[Exposed] and #emph[Shaken] on a 0-Edge pool) make Resisting very expensive; watch how often that happens. High-Edge pools still pay about 1 per Resist, so watch whether Resistance drains pools faster than before, and whether the double-12 result (1--6%) is too rare to matter.
- #strong[Four pools] means more pool points to track. The sheet should put all four in one row with Edge beside each.
- #strong[Conflict length:] with scripting used for every big contest, the conflict test (§10.1) is what stops overuse.
- #strong[Running dry (revised R3):] running dry now imposes a status at tier 1 + overrun instead of an automatic Taken Out, and a Scar comes from tier 6 instead of from an empty pool. Playtest the 2-recovery-points-per-tier rate for depletion statuses, the one-Scar-per-event limit, and how often Resisting at an empty pool reaches tier 4 or higher.
- #strong[Damage cycle (unified):] watch whether the once-per-conflict injury trade (tier 2/3/4 cancels 1/2/3 loss) is a hard choice or always taken, and whether it drags conflicts out. Also test the compromise tiers (now 2/3/4), the healing intervals, the 3-segment Dying clock, and whether the 1-tier treatment limit makes Restore-cost abilities (#emph[Field Medic], #emph[Field Surgeon]) feel too weak against lasting injuries.
- #strong[Shared Disposition:] each side has one shared Disposition track (§10.7), so ordinary loss does not remove individuals. Current setup divides the Disposition roll by 3, rounded down, then adds helpers and all flat modifiers at full value (§10.2). Flat modifiers have no stacking cap; enforce minimum 1 before Superiority. The typical starting band is 8--11. Earlier simulations found mirrored fights about 23.5% shorter than with personal Disposition. A later, now-superseded double-halving model averaged about 6 starting Disposition (range 3--9) and about 6 volleys. Those results describe earlier models, not validation of the current formula. Recalibrate P, Grit and Encounter Budget in Phase 4, then rerun the fights. Also watch whether a lone remaining participant acting repeatedly feels heroic or too forgiving, and whether larger parties get too many injury trades.
- #strong[Attack and Feint +1:] a successful Attack or Feint removes its committed Power + 1 Disposition (§10.6). The +1 is loss, not Power, so it cannot be spent on other effects; apply any eligible injury trade afterward. Test its effect on conflict length under the current setup formula. Watch whether Defend can keep pace, whether Feint becomes the default action, and how the +1 stacks with ability bonuses such as #emph[Crowd Work] and #emph[Every Trick in the Book].
- #strong[Superiority:] apply up to 3 after setup modifiers and the minimum-1 floor (§10.3). Superiority alone may reduce starting Disposition to 0, resolving the conflict at setup as a win at no cost. Watch whether preparation becomes routine and whether it double-counts preparation abilities such as #emph[Ambusher] and #emph[The Reveal]. PC/opposition symmetry, opposition eligibility for the automatic setup win and simultaneous reduction of both sides to 0 remain playtest/review questions; no automatic-win tie ruling is selected.
