#import "common.typ": *

== 5. Effects

#figure(
  [#table(
    columns: (12%, 14%, 74%),
    align: (auto,auto,auto,),
    table.header([Effect], [Cost], [What it does],),
    table.hline(),
    [#strong[Attack];], [1 Power per tier], [Inflict a #strong[Status] (e.g. #emph[wounded-2];, #emph[rattled-1];, #emph[on fire-3];). In a conflict, an ordinary Attack removes Disposition equal to the Power committed to that effect + 1 instead (§10.6); it inflicts no status unless an explicit rule permits one],
    [#strong[Weaken];], [1], [Reduce one of the target\'s statuses by 1 tier, or #strong[Burn] one of its tags for the scene],
    [#strong[Create];], [2 Power per rank], [Create a #strong[Truth] that lasts for the scene (#emph[smoke cover];, #emph[crowd on our side];). It may end sooner if its removal condition is met. One extra Power makes it last until its removal condition is met. State its scope, rank (1 costs 2 Power; 2 costs 4 Power before discounts) and removal condition (§8)],
    [#strong[Enhance];], [1 per tier], [Give an ally a helpful status (#emph[inspired-2];)],
    [#strong[Restore];], [1 per tier], [Reduce a harmful status on yourself or an ally. Lasting injuries have limits (§6.6)],
    [#strong[Discover];], [1], [Ask the GM one question; you get a true, useful answer],
    [#strong[Advance];], [1 per segment], [Tick a #strong[progress clock] (§7)],
    [#strong[Disrupt];], [3], [Cancel or delay an enemy\'s prepared action, or take 1 point off the GM\'s Woe],
    [#strong[Extra Feat];], [1], [Achieve a second, related goal with the same action],
  )]
  , kind: table
  )
#columns(2, gutter: 6mm)[
Each point of Power buys an Effect. Players choose Effects that fit what their character did in the fiction.

#strong[Conflict boundaries.] The general Effect list grants no additional scripted turn, action-interaction bypass or objective outside the declared stakes. Resolve the scripted action under §10.5--10.6; explicit abilities may permit additional purchases such as Create on an Attack. A trumped action produces no effect. Do not use Disrupt, Extra Feat or a supporting Truth to retroactively cancel resolved actions or reopen a settled outcome.
// OPEN: the complete action-by-action permission list for supplementary general Effects remains unresolved.

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
#pagebreak()
