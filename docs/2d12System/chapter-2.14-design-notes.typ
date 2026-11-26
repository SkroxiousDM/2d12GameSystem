#import "common.typ": *

== 14. Design Notes --- What Was Kept, Changed, Cut <core-design-notes>
#figure(
  [#table(
    columns: (14%, 37%, 28%, 21%),
    align: (auto,auto,auto,auto,),
    table.header([Source], [Kept], [Changed], [Cut],),
    table.hline(),
    [#strong[Fate];], [Skill pyramid, Tychē Points, invoke/compel, Refresh as cost of power], [Aspects are replaced by tags and Truths], [Fudge dice, stress boxes],
    [#strong[Cypher];], [Pools, Edge, the sentence, Effort on rolls and on Power, cyphers and artifacts (Module A)], [Four pools instead of three; Effort buys bonus dice instead of lowering difficulty], [d20 task levels, GM intrusions (replaced by compels and Woe)],
    [#strong[:Otherscape];], [Tags as Power, compellable tags, statuses with tiers, effects, burning tags], [Single contextual tags instead of power/weakness; Power is Tag Power plus roll margin; tag cap +2], [Themebooks, Improve/Abandon tracks],
    [#strong[Mouse Guard];], [Full conflict scripting, shared Disposition, outcome-first compromise, BIG, weapons as action bonuses, the Grind (Module B)], [Rolled Disposition divides the setup total by 3 before backers and flat modifiers; actions spend Power], [Nature, Persona],
    [#strong[Blades];], [Playbooks, resistance, stress-as-currency, clocks, load-out], [Stress tracks are the four pools], [Action dice pools, Position/Effect grid, crew sheets],
    [#strong[2d20];], [Momentum (here called #strong[Weal]), Woe, Truths, Module C, buy-offs, Escalation], [Weal from unspent Power; Truths are unrated facts, and numerical circumstances are Situational Conditions; complication range → Risk die (@core-risky-rolls)], [d20 roll-under],
    [#strong[Shadowrun: Anarchy 2.0];], [Skill specialisations, unrated Knowledge Skills, narrative permissions, glitch examples as a consequence menu, circles versus named contacts, recovering signature assets, priced flashbacks], [A Specialisation adds one bonus die, not +2 to the rating; +2 skills count as professional knowledge; tags stand in for Keywords; flashbacks cost Tychē and stay obvious or reasonable (@core-prepared-advance)], [Risk Dice and Risk Reduction, Shadow Amp pricing, Essence, Edge extra actions, Dispositions and Cues, the Network skill, temporary equipment],
  )]
  , kind: table
  )
  
=== 14.1 Known Risks <core-known-risks>
- #strong[Currency load:] pools + Tychē + Weal + Woe is the upper limit for medium crunch. Keep spend menus short on the sheet.
- #strong[Modifier range:] max is skill +4, helpful status up to +6, helpful Situational Condition up to +6, Tychē invoke +2. The two slots together range from −12 to +12 and are the largest swing. Playtest a ±3 cap on either slot, and whether 2 Power per rating prices broad Situational Conditions fairly.
- #strong[Effort for Power] may make high-Edge characters very efficient. Watch Edge-3 pools where Effort is free; as a variant, consider a minimum cost of 1 (2.4 uses 0).
- #strong[Resistance dice:] Edge adds Resistance dice instead of reducing the cost, and only a double 12 is free (@core-resistance-harm-recovery). Watch how often stacked penalties (two −1 Edge penalties on a 0-Edge pool) push Resistance to negative Edge, whether high-Edge pools drain faster than before, and whether the double-12 result (1--6%) is too rare to matter.
- #strong[Four pools] means more pool points to track. The sheet should put all four in one row with Edge beside each.
- #strong[Conflict length:] with scripting used for every big contest, the conflict test (@core-when-use-conflict) is what stops overuse.
- #strong[Running dry:] running dry imposes a status at tier 1 + overrun, and Scars come from tier 6, not from an empty pool (@core-running-dry[§]--@core-tier-6-scars[]). Playtest the 2-points-per-tier depletion rate, the one-Scar-per-scene limit, and how often Resisting on an empty pool reaches tier 4 or higher.
- #strong[Damage cycle:] watch whether the injury trade (@core-accepting-injury) is a hard choice or always taken, and whether it drags conflicts out. Test the healing intervals, the 3-segment #emph[Dying] clock, and whether the 1-tier treatment limit makes Restore-cost abilities (#emph[Field Medic], #emph[Field Surgeon]) too weak against lasting injuries.
- #strong[Shared Disposition:] one track per side (@core-setup, @core-shared-disposition-participation). Watch whether a lone remaining participant acting repeatedly feels heroic or too forgiving, and whether larger parties get too many injury trades.
- #strong[Old simulation figures:] earlier notes reported mirrored fights about 23.5% shorter with shared Disposition, and an older setup averaging about 6 Disposition (range 3--9) and 6 volleys. Those figures predate the divide-by-three setup; re-run them before predicting conflict length. A fixed track of 5 is a possible comparison, not a rule.
- #strong[Attack and Feint +1] (@core-actions-effects): watch whether Defend keeps pace, whether Feint becomes the default action, and how the +1 stacks with #emph[Crowd Work] and #emph[Every Trick in the Book].
- #strong[Superiority] (@core-superiority): watch whether preparation becomes routine, how often both sides claim it, and whether one advantage is being described several ways to claim more categories.
- #strong[Specialisations and Knowledge] (@core-skill-pyramid): watch how often the Specialisation die applies, whether it changes the retained pair, whether it saves Effort or Woe, and how often the +2 cap makes it redundant. Narrow an overbroad Specialisation before changing the bonus. If players keep asking whether knowledge gives +1, clarify the wording rather than adding a modifier. Check that contacts create choices, that signature items matter without more routine bonus dice, and that consequences leave successful characters something to act on.
- #strong[Specialists in scripted conflicts:] if a character has no legal specialist contribution under the action lists, treat it as an action-design question; don't let a Specialisation override the script.
- #strong[Prepared in Advance] (@core-prepared-advance): watch Tychē use and overlap with the Furcifer's ★ #emph[Flashback].
- #strong[Playtest flags in the text:] @core-roll status and Condition range; @core-personal-statuses stacking; @core-situational-conditions Condition accumulation; @core-resistance-harm-recovery negative Edge; @core-woe dangerous-circumstance Woe cap; @core-scenery-maneuvers Floor Collapse and Make a Hazard prices; @core-tier-6-scars one Scar per scene; @core-superiority PC/opposition symmetry and Superiority eligibility; @core-scripting-volleys Feint versus Maneuver; @core-compromise four-step compromise; @core-area-effects area effects. These notes don't settle them.
