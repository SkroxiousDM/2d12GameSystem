#import "common.typ": *

== 5. Effects

#figure(
  [#table(
    columns: (12%, 14%, 74%),
    align: (auto,auto,auto,),
    table.header([Effect], [Cost], [What it does],),
    table.hline(),
    [#strong[Attack];], [1 Power per tier], [Inflict a #strong[Status] (e.g. #emph[wounded-2];, #emph[rattled-1];, #emph[on fire-3];). In a conflict, an ordinary Attack instead requires at least 1 Power committed to Disposition loss and removes the committed Power + 1 Disposition (§10.6). Apply the +1 base loss once per action; no commitment means no loss. It inflicts no status unless an explicit rule permits one],
    [#strong[Weaken];], [1], [Reduce one of the target\'s statuses by 1 tier, or #strong[Burn] one of its tags for the scene. During scripted conflicts, requires an explicit ability; ordinary asset denial uses Maneuver's Disarm (§10.6)],
    [#strong[Create];], [2 Power per rank], [Create a #strong[Truth] that lasts for the scene (#emph[smoke cover];, #emph[crowd on our side];). It may end sooner if its removal condition is met. One extra Power makes it last until its removal condition is met. State its scope, rank (1 costs 2 Power; 2 costs 4 Power before discounts) and removal condition (§8)],
    [#strong[Enhance];], [1 per tier], [Give an ally a helpful status (#emph[inspired-2];)],
    [#strong[Restore];], [1 per tier], [Reduce a harmful status on yourself or an ally. Lasting injuries have limits (§6.6)],
    [#strong[Discover];], [1], [Ask the GM one question; you get a true, useful answer],
    [#strong[Advance];], [1 per segment], [Tick a #strong[progress clock] (§7)],
    [#strong[Disrupt];], [3], [Cancel or delay an enemy\'s prepared action, or take 1 point off the GM\'s Woe. During scripted conflicts, use only as permitted by §10.6; this grants no generic interference with committed scripts],
    [#strong[Extra Feat];], [1], [Achieve a second, related goal with the same action. During scripted conflicts, at most once per action unless explicitly overridden; no extra turn or roll, prohibited purchase or duplicate Disposition effect (§10.6)],
  )]
  , kind: table
  )
#columns(2, gutter: 6mm)[
Each point of Power buys an Effect. Players choose Effects that fit what their character did in the fiction.

#strong[Conflict boundaries.] The general Effect list gives prices and functions, not permission to purchase every Effect with every scripted action. During conflicts, use the action-specific permissions and purchase limits in §10.6. Fictional relevance is necessary but does not unlock a prohibited purchase.

A successful action may spend all earned Power on permitted supplementary Effects; no primary-effect purchase is mandatory. All purchases share one Power budget. Winning a versus test prevents the opposing action's normal effect even when no Power is spent on Disposition loss or recovery. Independent opposing actions still resolve. A trumped action produces no effect.

Specific exceptions grant only their stated purchase, trigger, cost, frequency and scope. No general Effect grants another scripted action, expands declared stakes or reopens a settled outcome. Do not use Disrupt, Extra Feat or a supporting Truth to retroactively cancel resolved actions.

#strong[Separate bonuses.] Additional Power, additional Disposition loss and additional status tiers are distinct. Apply a bonus only to its stated component; do not apply one offensive bonus to both loss and a status. Ordinary conflict Attacks and Feints do not drain pools or create injuries through narration alone (§10.6).

#strong[Free and healing Effects.] Free waives the stated resource cost, not timing, permissions or participation limits (§10.5). Restore treats an existing status; it does not prevent an accepted payment from being recorded, restore Disposition, refresh injury trades or erase Scars. Prevention, redirection, Resistance and incidental clearing benefits cannot cancel protected payments (§10.7).

#strong[Create costs and discounts.] The baseline is 2 Power per Truth rank, equally inside and outside conflicts. Each explicit Create discount from an ability or item reduces the cost by 1 Power, to a minimum of 1. A relevant tag or Truth does not grant a Create discount merely by being relevant. Discounts must be stated in the ability or item entry. Larger-scale Truth changes still require their normal clocks or major arcs (Module C.6).
  
Any unspent Power → #strong[Momentum];.

=== 5.1 Statuses
- Statuses have #strong[tiers 1--6];.
- #strong[Recording a status.] When you create a status, record its name and tier, its #strong[scope] (who or what it affects, and in which circumstances), and its #strong[removal condition] (the event, recovery, treatment, or change that ends it). The scope must follow from the fiction. Normal recovery and removal rules still apply. #emph[Mapped patrol routes-2] --- evading the patrols you watched; ends when the routes change.
- #strong[Stacking:] a new status of the same kind raises the existing tier by the new tier minus 1 (minimum +1), so small hits accumulate slowly.
- #strong[Tier 6:] the target is #strong[Taken Out] of whatever that status represents (dead, unconscious, captured, convinced, routed), within the status's scope. A harmful status reaching tier 6 also gives one #strong[Scar] (§6.3), subject to explicit creature-specific breaking-point replacements (§10.14). Death needs a lethal cause and established stakes. Sun-Sick and Thirst use their listed setting outcomes rather than an additional generic Scar; Bled retains the core Scar procedure.
#colbreak()
- Statuses modify rolls by #strong[± their tier] (use only the highest relevant harmful status and the highest relevant helpful status).

- #strong[Same kind.] Harm is the same kind when it worsens the same injury, affliction or condition. Renaming it doesn't stop it stacking: another cut worsens #emph[wounded], renewed menace worsens #emph[terrified], but a fresh burn needn't stack with a concussion. The GM says whether new harm stacks #strong[before] you decide to Resist or accept an injury (§10.11).
- #strong[Order.] Resistance and armour reduce imposed incoming harm before it stacks. They cannot reduce an accepted injury-trade payment or another protected payment (§10.7, §10.11). Harm reduced to tier 0 isn't recorded and doesn't stack. A status can't go above tier 6; extra tiers have no effect unless a rule says so.
- #strong[What it hinders.] A status modifies only rolls within its recorded scope: #emph[slashed thigh-3] hinders running and climbing, not reading a ledger. A status can also decide what is possible: no roll lets you use a hand you no longer have. If circumstances change, review its scope; don't broaden it just because its name allows another reading.
- #strong[Impede is not a status.] Impede is the temporary −3 conflict effect in §10.6. It does not stack with another pending Impede and is not removed by Restore merely because Restore removes statuses. An ongoing hindrance needs its own name, tier, scope and removal condition.
- #strong[Life-threatening harm.] A physical status that reaches tier 6 can make you #strong[Dying] when lethal stakes are in play (§6.7).
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
