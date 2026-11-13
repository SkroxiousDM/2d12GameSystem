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
    [#strong[Mouse Guard];], [Full conflict scripting, shared Disposition, outcome-first compromise, BIG, weapons as action bonuses, the Grind (Module B)], [Rolled Disposition divides the setup total by 3 before helpers and flat modifiers; actions spend Power], [Nature, Persona],
    [#strong[Blades];], [Playbooks, resistance, stress-as-currency, clocks, load-out], [Stress tracks are the four pools], [Action dice pools, Position/Effect grid, crew sheets],
    [#strong[2d20];], [Momentum, Woe, Truths, Module C, buy-offs, Escalation], [Momentum from unspent Power; Truths shift Difficulty; complication range → Risk die (§2.7)], [d20 roll-under],
  )]
  , kind: table
  )
  
=== 14.1 Known Risks
- #strong[Currency load:] pools + Tychē + Momentum + Woe is the upper limit for medium crunch. Keep spend menus short on the sheet.
- #strong[Modifier range (revised):] max is skill +4, tags +2, helpful status up to +6, Tychē invoke +2. Statuses are now the largest swing. Playtest a ±3 status cap.
- #strong[Effort for Power] may make high-Edge characters very efficient. Watch Edge-3 pools where Effort is free; consider a minimum cost of 1.
- #strong[Resistance dice (revised):] Edge now adds Resistance dice (2 + Edge, keep the highest) instead of reducing the cost, and only a double 12 is free. At negative Edge you roll 1d12, and at −2 or lower the cost rises by 1 (maximum 3), so stacked penalties (such as #emph[Exposed] and #emph[Shaken] on a 0-Edge pool) make Resisting expensive; watch how often that happens. High-Edge pools still pay about 1 per Resist, so watch whether Resistance drains pools faster than before, and whether the double-12 result (1--6%) is too rare to matter.
- #strong[Four pools] means more pool points to track. The sheet should put all four in one row with Edge beside each.
- #strong[Conflict length:] with scripting used for every big contest, the conflict test (§10.1) is what stops overuse.
- #strong[Running dry (revised R3):] running dry now imposes a status at tier 1 + overrun instead of an automatic Taken Out, and a Scar comes from tier 6 instead of from an empty pool. Playtest the 2-recovery-points-per-tier rate for depletion statuses, the one-Scar-per-event limit, and how often Resisting at an empty pool reaches tier 4 or higher. Explicit creature breaking-point replacements apply only where stated (§6.3).
- #strong[Damage cycle (unified):] watch whether the injury trade is a hard choice or always taken, and whether it drags conflicts out. It is once per character per conflict, with at most one participant trading against each Attack or Feint; tier 2/3/4 cancels 1/2/3 incoming Disposition loss (§10.11). Compromise is one outcome-first package, not an automatic injury: tiers 2/3/4 are guidance, and eligible existing injuries receive credit once (§10.13). Test the healing intervals, the 3-segment Dying clock, and whether the 1-tier treatment limit makes Restore-cost abilities (#emph[Field Medic], #emph[Field Surgeon]) feel too weak against lasting injuries. Later healing does not refund payments or refresh injury trades.
- #strong[Shared Disposition:] each side has one Disposition track (§10.9), so ordinary loss no longer removes individuals. Current rolled setup is 2d12 + Disposition skill + the highest Edge in its pool, divided by 3 and rounded down; add +1 per eligible backer and all flat modifiers afterward at full value, apply a minimum of 1, then Superiority (§10.2--10.3). There is no second halving or flat-modifier stacking cap. Grit-built sides use the adversary setup exception. Watch whether a lone remaining participant acting repeatedly feels heroic or too forgiving, and whether larger parties get too many injury trades.
- #strong[Historical simulation caveat:] earlier notes reported mirrored fights about 23.5% shorter with shared rather than personal Disposition, and a separate twice-halved setup averaging about 6 Disposition (range 3--9) and about 6 volleys. Those figures describe earlier procedures, not validation of the current divide-by-three setup with full-value flat modifiers. Re-run comparisons before using those figures to predict current conflict length; a fixed track of 5 remains a possible playtest comparison, not an alternate rule here.
- #strong[Attack and Feint +1:] a successful Attack or Feint removes its committed Power + 1 Disposition (§10.6). The +1 is loss, not Power, so it cannot be spent on other effects. Declare an injury trade before applying the resulting loss. Watch whether Defend can keep pace, whether Feint becomes the default action, and how the +1 stacks with ability bonuses such as #emph[Crowd Work] and #emph[Every Trick in the Book]. Additional Power, Disposition loss and status tiers remain separate; ordinary Attacks and Feints do not also inflict statuses.
- #strong[Superiority:] up to 3 Superiority reduces opposing starting Disposition after all other modifiers and the minimum of 1 (§10.3). Only Superiority can reduce the adjusted start to 0, yielding a no-cost victory within the stakes. Watch whether preparation becomes routine, how often both sides claim it, and whether distinct preparation categories are being confused with repeated descriptions of one advantage. A preparation asset can retain its normal action benefits when independently relevant; this is not an automatic claim to several Superiority categories.
- #strong[Open conflict rulings:] exceptional doubles against opposed totals remain unresolved (§10.5). Feint versus Maneuver as a versus test, and PC/opposition symmetry and Superiority eligibility, retain their playtest flags. These notes do not settle them.
