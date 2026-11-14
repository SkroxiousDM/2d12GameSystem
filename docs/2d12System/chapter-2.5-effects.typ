#import "common.typ": *

#pagebreak(weak: true)
== 5. Effects

#figure(
  [#table(
    columns: (12%, 14%, 74%),
    align: (auto,auto,auto,),
    table.header([Effect], [Cost], [What it does],),
    table.hline(),
    [#strong[Attack];], [1 Power per tier], [Inflict a #strong[Status] (e.g. #emph[wounded-2];, #emph[rattled-1];, #emph[on fire-3];). In conflicts, Attack removes Disposition instead (§10.6)],
    [#strong[Weaken];], [1], [Reduce one of the target\'s statuses by 1 tier, or #strong[Suppress] one of its tags for the scene. In conflicts, only with an explicit ability (§10.6)],
    [#strong[Create];], [2 Power per rank], [Create a #strong[Truth] (#emph[smoke cover];, #emph[crowd on our side];) that lasts for the scene or until its removal condition is met. +1 Power: it ignores the end of the scene. Record its scope, rank and removal condition (§8)],
    [#strong[Enhance];], [1 per tier], [Give an ally a helpful status (#emph[inspired-2];)],
    [#strong[Restore];], [1 per tier], [Reduce a harmful status on yourself or an ally. Lasting injuries have limits (§6.6)],
    [#strong[Discover];], [1], [Ask the GM one question; you get a true, useful answer],
    [#strong[Advance];], [1 per segment], [Tick a #strong[progress clock] (§7)],
    [#strong[Disrupt];], [3], [Cancel or delay an enemy\'s prepared action, or take 1 point off the GM\'s Woe. In conflicts, see §10.6],
    [#strong[Extra Feat];], [1], [Achieve a second, related goal with the same action. In conflicts, once per action (§10.6)],
  )]
  , kind: table
  )
#columns(2, gutter: 6mm)[
Each point of Power buys an Effect that fits what your character did in the fiction. No Effect is mandatory; all purchases share one Power budget, and any unspent Power becomes #strong[Momentum];.

#strong[In scripted conflicts,] each action can buy only the Effects §10.6 permits. Fictional relevance is required but doesn't unlock anything else.

#strong[Free] waives only the stated cost, not timing, permissions or limits.

#strong[Create discounts.] Only an ability or item that states a discount lowers Create's cost: −1 Power per discount, minimum 1. Being relevant doesn't make a tag or Truth a discount. Truths above scene scale need clocks or major arcs (Module C.6).

=== 5.1 Statuses
- Statuses have #strong[tiers 1--6];. They modify rolls by #strong[± their tier] (use only the highest relevant harmful status and the highest relevant helpful status).
- #strong[Recording a status.] When you create a status, record its name and tier, its #strong[scope] (who or what it affects, and in which circumstances), and its #strong[removal condition] (the event, recovery, treatment, or change that ends it). The scope must follow from the fiction. #emph[Mapped patrol routes-2] --- evading the patrols you watched; ends when the routes change.
- #strong[What it hinders.] A status modifies only rolls within its scope: #emph[slashed thigh-3] hinders running and climbing, not reading a ledger. A status can also decide what is possible: no roll lets you use a hand you no longer have. If circumstances change, review its scope; don't broaden it just because its name allows another reading.
// PLAYTEST: simplified stacking (one above the higher tier). Matches the old "existing + new − 1" rule within 1 tier in every case; check heavy repeated hits in seeded batches.
- #strong[Stacking.] New harm of the same kind sets the status to #strong[one tier above the higher] of the existing and incoming tiers (#emph[wounded-2] hit by #emph[wounded-3] becomes #emph[wounded-4]). Harm is the same kind when it worsens the same injury, affliction or condition, whatever it's called: another cut worsens #emph[wounded], renewed menace worsens #emph[terrified], but a fresh burn needn't stack with a concussion. The GM says whether new harm stacks #strong[before] you decide to Resist or accept an injury (§10.11).
- #strong[Order.] Resistance and armour reduce incoming harm before it stacks; they can't reduce a protected payment such as an accepted injury trade (§10.7). Harm reduced to tier 0 isn't recorded. A status can't go above tier 6.
- #strong[Tier 6:] the target is #strong[Taken Out] of whatever that status represents (dead, unconscious, captured, convinced, routed), within its scope. A harmful status reaching tier 6 also gives a #strong[Scar] unless a specific rule replaces it (§6.3). Death needs a lethal cause and established stakes; a physical status at tier 6 can make you #strong[Dying] (§6.7).
- #strong[Impede is not a status.] It is a temporary conflict penalty (§10.6). An ongoing hindrance needs its own name, tier, scope and removal condition.
]

=== 5.2 Example Statuses
Statuses can describe physical, mental, emotional, or social circumstances. The following names are examples, not a closed list. When recording one, give it a tier, a specific scope, and a removal condition (§5.1). Use a more precise name whenever it makes the effect clearer. These examples grant no new permission to purchase or inflict statuses; normal Effect costs and conflict permissions still apply.

#table(
  columns: (22%, 78%),
  table.header([Helpful status], [Typical scope]),
  table.hline(),
  [Inspired], [Acting on renewed hope, encouragement, or conviction.],
  [Focused], [Concentrating, analysing information, or resisting distraction.],
  [Composed], [Maintaining restraint and clarity under emotional or social pressure.],
  [Prepared], [Acting on specific plans, reconnaissance, or rehearsed procedures.],
  [Supported], [Drawing on established backing from allies, a crowd, or an institution.],
  [Trusted], [Persuading or reassuring a particular person or group that believes in you.],
)

#table(
  columns: (22%, 78%),
  table.header([Harmful status], [Typical scope]),
  table.hline(),
  [Wounded], [Physical actions affected by a particular injury.],
  [Exhausted], [Sustained effort using the depleted physical or mental capacity.],
  [Unsteady], [Balance, coordination, reflexes, or precise movement.],
  [Rattled], [Concentration and clear thinking after shock, confusion, or intimidation.],
  [Terrified], [Facing, approaching, or acting against a particular source of fear.],
  [Discredited], [Claims and appeals made to an audience whose trust has been damaged.],
)

#strong[Make the scope specific.] Prepared and Supported need an established basis: name the plan, information, allies, or backing involved. One circumstance does not automatically grant a status and a separate tag or Truth benefit; establish and apply each component by its own rules. Trusted and Discredited apply to a named audience and subject, not everyone or every interaction. They are not universal reputation scores and do not automatically decide what another character believes. Exhausted should identify the depleted capacity rather than penalise everything.

#strong[Recording examples.]
- #emph[Mapped patrol routes-2]: helps evade the observed patrols; ends when their routes change.
- #emph[Trusted by the village council-2]: helps persuade the council about local threats within your established credibility; ends when that trust is withdrawn or betrayed.
- #emph[Mentally exhausted-3]: hinders sustained mental work; ends through appropriate recovery (§6.5).
- #emph[Discredited before the merchant guild-2]: hinders claims about the disputed shipment made to the guild; ends when the accusation is disproved or credibility is restored.

#strong[Special conditions stay separate.] These examples use the normal tiered-status rules. Grind conditions --- Hungry & Thirsty, Weary, Exposed, Shaken, Sick, and Broken --- use their listed effects and recovery requirements (Module B.3), not generic tiers inferred from their order. Running-dry statuses also follow their pool-specific procedure (§6.2). Impede is a temporary conflict effect, not a status (§10.6).
#pagebreak()
