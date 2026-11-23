#import "common.typ": *


== 5. Effects <core-effects>

#figure(
  [#table(
    columns: (12%, 14%, 74%),
    align: (auto,auto,auto,),
    table.header([Effect], [Cost], [What it does],),
    table.hline(),
    [#strong[Attack];], [1 Power per tier], [Inflict a #strong[Status] (e.g. #emph[wounded −2];, #emph[rattled −1];, #emph[on fire −3];). In conflicts, Attack removes Disposition instead (@core-actions-effects)],
    [#strong[Weaken];], [1 (one status tier or Suppress a tag); 2 per rating (Situational Condition)], [Reduce one of the target\'s statuses by 1 tier, reduce a harmful Situational Condition by 1 rating by addressing its cause, or #strong[Suppress] one of the target's tags for the scene. In conflicts, only with an explicit ability (@core-actions-effects)],
    [#strong[Create];], [2 (Truth) or 2 per rating (Situational Condition)], [Create a scene #strong[Truth] (#emph[A Rope Bridge Spans the Gap]; @core-truths) or a #strong[Situational Condition] (#emph[smoke cover 2], #emph[crowd on our side 1]; @core-situational-conditions). Either lasts for the scene or until its removal condition is met. +1 Power: it ignores the end of the scene. Record it in the standard format],
    [#strong[Enhance];], [1 per tier], [Give an ally a helpful personal status (#emph[inspired +2];)],
    [#strong[Restore];], [1 per tier], [Reduce a harmful status on yourself or an ally. Lasting injuries have limits (@core-treatment-healing)],
    [#strong[Discover];], [1], [Ask the GM one question; you get a true, useful answer],
    [#strong[Advance];], [1 per segment], [Tick a #strong[progress clock] (@core-progress-clocks)],
    [#strong[Disrupt];], [3], [Cancel or delay an enemy\'s prepared action, or take 1 point off the GM\'s Woe. In conflicts, see @core-actions-effects],
    [#strong[Extra Feat];], [1], [Achieve a second, related goal with the same action. In conflicts, once per action (@core-actions-effects)],
  )]
  , kind: table
  )
#columns(2, gutter: 6mm)[
Each point of Power buys an Effect that fits what your character did in the fiction. The Effects you buy are the action's result (@core-outcomes): an Effect you don't buy doesn't happen, even when it was the declared goal. Buy the Effect that serves the declared goal before a secondary goal with Extra Feat. No purchase is mandatory; all purchases share one Power budget, and any unspent Power becomes #strong[Weal];.

#strong[In scripted conflicts,] each action can buy only the Effects @core-actions-effects permits. Fictional relevance is required but doesn't unlock anything else.

#strong[Free] waives only the stated cost, not timing, permissions or limits.

#strong[Create discounts.] Only an ability or item that states a discount lowers Create's cost, and only for the purchase it names: −1 Power per discount, minimum 1 unless it says the purchase is free. Being relevant doesn't make a tag or Truth a discount. Truths above scene scale need clocks or major arcs (Module C.6).

#strong[One circumstance, one purchase.] Creating a Situational Condition establishes its ordinary basis: buying #emph[smoke cover 2] creates the smoke, so don't also charge for a Truth. A Truth doesn't come with a free rating. The action must reach the people or area affected; these purchases add no area or selective targeting of their own (@core-area-effects).

#strong[Recording temporary facts.] Record every temporary mechanical fact (a status, a Situational Condition, a Truth, or a temporary benefit or penalty such as Gain Position or Impede) in one line, in this order:

#strong[Name --- category/rating --- scope --- ending condition]

- #strong[Category/rating:] what kind of fact it is and its value: a personal status's tier, a Situational Condition's rating, a Truth's scale, or a temporary benefit's stated effect. Truths and unrated effects stay unrated; don't invent a rating for them.
- #strong[Scope:] who or what it affects, and when it applies.
- #strong[Ending condition:] its duration and any event that ends it early. A removal condition never extends a duration.

The shared format doesn't change any fact's category or mechanics: a temporary benefit doesn't become a status, and a Truth doesn't gain a modifier. In running text, write a personal status with a space and a signed value (#emph[wounded −2], #emph[inspired +2]).

=== 5.1 Personal Statuses <core-personal-statuses>
A #strong[status] is a physical, mental or emotional state of a person (or of a group that shares one, @core-situational-conditions): #emph[wounded], #emph[inspired], #emph[terrified]. External circumstances are Situational Conditions (@core-situational-conditions), and established facts are Truths (@core-truths).

- Statuses have #strong[tiers 1--6];. On a roll, add the tier of the highest relevant helpful status and subtract the tier of the highest relevant harmful status (@core-roll).
- #strong[Signed notation.] Write a helpful status as #emph[inspired +2] and a harmful status as #emph[wounded −2]. The sign stays attached to the number, with a space after the name; − means minus, not a hyphenated separator. The tier is the magnitude: both examples are tier 2. Costs, stacking, Resistance and recovery still use the tier. A specific rule that gives a status no roll modifier still applies.
- #strong[Recording a status.] When you create a status, record its name and signed value, its #strong[scope] (who or what it affects, and in which circumstances), and its #strong[removal condition] (the event, recovery, treatment, or change that ends it), in the format above. The scope must follow from the fiction. #emph[Injured ankle −2] --- personal status, tier 2 --- running, jumping and balancing on the injured leg --- ends through appropriate treatment and recovery.
- #strong[What it hinders.] A status modifies only rolls within its scope: #emph[slashed thigh −3] hinders running and climbing, not reading a ledger. A status can also decide what is possible: no roll lets you use a hand you no longer have. If circumstances change, review its scope; don't broaden it just because its name allows another reading.
// PLAYTEST: simplified stacking (one above the higher tier). Matches the old "existing + new − 1" rule within 1 tier in every case; check heavy repeated hits in seeded batches.
- #strong[Stacking.] New harm of the same kind sets the status to #strong[one tier above the higher] of the existing and incoming tiers (#emph[wounded −2] hit by #emph[wounded −3] becomes #emph[wounded −4]). Harm is the same kind when it worsens the same injury, affliction or condition, whatever it's called: another cut worsens #emph[wounded], renewed menace worsens #emph[terrified], but a fresh burn needn't stack with a concussion. The GM says whether new harm stacks #strong[before] you decide to Resist or accept an injury (@core-accepting-injury).
- #strong[Order.] Resistance and armour reduce incoming harm before it stacks; they can't reduce a protected payment such as an accepted injury trade (@core-costs-failures-complications). Harm reduced to tier 0 isn't recorded. A status can't go above tier 6.
- #strong[Tier 6:] the target is #strong[Taken Out] of whatever that status represents (dead, unconscious, captured, convinced, routed), within its scope. A harmful status reaching tier 6 also gives a #strong[Scar] unless a specific rule replaces it (@core-tier-6-scars). Death needs a lethal cause and established stakes; a physical status at tier 6 can make you #strong[#emph[Dying]] (@core-dying-stabilisation).
- #strong[Impede is not a status.] It is a temporary conflict penalty (@core-actions-effects). An ongoing hindrance needs its own name, tier, scope and removal condition.

=== 5.2 Situational Conditions <core-situational-conditions>
A #strong[Situational Condition] is an external circumstance that helps or hinders particular actions by a number: terrain, visibility, positioning, preparation, resources, or other people's responses (#emph[slippery bridge], #emph[rehearsed escape plan], #emph[supporting witnesses]).

- #strong[Ratings 1--6.] On a roll, add the rating of the highest relevant helpful Situational Condition and subtract the rating of the highest relevant harmful one (@core-roll). The same Condition can help one action and hinder another: #emph[thick smoke] hinders aiming through it and helps hiding in it.
- #strong[Recording.] Use the standard format: #emph[rehearsed escape plan] --- Situational Condition 2 --- helps participants follow the agreed routes, signals and fallbacks --- ends when the escape is completed or circumstances invalidate the plan.
- #strong[Creating and reducing.] Create buys a Situational Condition at #strong[2 Power per rating], and Weaken reduces one at #strong[2 Power per rating] by addressing its cause (@core-effects). Established circumstances, equipment, hazards, consequences and explicit abilities can also supply one through their own rules. Weal and Woe can't buy ratings directly (@core-weal-woe).
// PLAYTEST: Situational Condition stacking (one above the higher rating, as statuses); test whether 2 Power per rating prices broad Conditions fairly against 1 per status tier.
- #strong[Stacking.] Building on the same circumstance sets the Condition to #strong[one rating above the higher] of the existing and new ratings, never above 6 (#emph[dim lighting 3] darkened by a rating-2 Condition becomes #emph[dim lighting 4]). This matches status stacking (@core-personal-statuses).
- #strong[Rating 6] is the most a Condition can be. When a harmful Condition first reaches rating 6, the GM gets #strong[one free consequence] that fits it (the guards are called, a contact cuts ties) #strong[or a matching Truth] that prohibits or requires something (#emph[discredited 6]: nobody here will vouch for you), whichever is more narratively appropriate, with no Woe spent. Choose a consequence as in @core-outcomes and keep either within the stakes; a Truth created this way lasts as long as the Condition. The Condition doesn't Take Out, cause a Scar or inflict harm by itself; a dangerous place uses its listed Danger or harm procedure (@core-dangers-conflicts, @core-resistance-harm-recovery).
- #strong[Set the category by cause.] Classify by what caused the fact, not by its name, where it's written or the most useful slot. Renaming doesn't change it; review category and scope only when circumstances genuinely change.
]
#table(
  columns: (50%, 50%),
  table.header([Personal status], [Situational Condition]),
  table.hline(),
  [An injury impairs movement], [Mud obstructs movement],
  [Fear disrupts concentration], [Enemy positioning restricts an approach],
  [Encouragement renews resolve], [Allies actively support an argument],
  [Fatigue reduces endurance], [A rehearsed plan guides action],
)
#columns(2, gutter: 6mm)[
#strong[Groups and places.] Record a shared status or Condition once; a group isn't a third category. A frightened patrol shares one personal status, a party following a rehearsed plan shares one Situational Condition, and smoke in a courtyard is one Situational Condition for the relevant actions there. Members must actually share the cause; joining or leaving a group doesn't by itself grant or remove one. A group represented by one rules entry applies the modifier once, not per member. A place Condition doesn't become a status on everyone inside it, and leaving its scope stops it applying without healing any separate injury.

#strong[No duplication.] One circumstance doesn't create several effects automatically. Smoke doesn't give both a visibility penalty and a free #emph[smoke-blinded] status, and a crowd doesn't give both #emph[supporting crowd] and #emph[inspired]. A distinct effect needs its own fictional or mechanical basis: smoke can obstruct sight and separately inflict an established lung injury, resolved through its own harm procedure.

#strong[Harm comes from procedures, not categories.] A category or rating alone doesn't cause damage, Disposition loss, removal or a Scar. Resistance, worsening, recovery and protected payments follow their own rules (@core-resistance-harm-recovery, @core-costs-failures-complications), and choosing the highest modifier doesn't stop other statuses and Conditions existing or worsening.

=== 5.3 Example Statuses and Conditions <core-example-statuses-conditions>
The following names are examples, not a closed list. When recording one, give a personal status a signed value and tier, or a Situational Condition a rating, along with a specific scope and removal condition (@core-personal-statuses, @core-situational-conditions). Use a more precise name whenever it makes the effect clearer. These examples grant no new permission to purchase or inflict anything; normal Effect costs and conflict permissions still apply.
]
#table(
  columns: (22%, 78%),
  table.header([Helpful status], [Typical scope]),
  table.hline(),
  [#emph[Inspired]], [Acting on renewed hope, encouragement, or conviction.],
  [#emph[Focused]], [Concentrating, analysing information, or resisting distraction.],
  [#emph[Composed]], [Maintaining restraint and clarity under emotional or social pressure.],
)

#table(
  columns: (22%, 78%),
  table.header([Harmful status], [Typical scope]),
  table.hline(),
  [#emph[Wounded]], [Physical actions affected by a particular injury.],
  [#emph[Exhausted]], [Sustained effort using the depleted physical or mental capacity.],
  [#emph[Unsteady]], [Balance, coordination, reflexes, or precise movement.],
  [#emph[Rattled]], [Concentration and clear thinking after shock, confusion, or intimidation.],
  [#emph[Terrified]], [Facing, approaching, or acting against a particular source of fear.],
)

#table(
  columns: (22%, 78%),
  table.header([Situational Condition], [Typical scope]),
  table.hline(),
  [Prepared], [Helps actions that follow specific plans, reconnaissance, or rehearsed procedures.],
  [Supported], [Helps actions drawing on established backing from allies, a crowd, or an institution.],
  [Trusted], [Helps persuading or reassuring a particular person or group that believes in you.],
  [Discredited], [Hinders claims and appeals made to an audience whose trust has been damaged.],
  [Concealed], [Helps hiding or moving unseen through smoke, darkness or cover.],
  [Obstructed], [Hinders movement or sight through terrain, weather, smoke or darkness.],
)
#columns(2, gutter: 6mm)[
#strong[Make the scope specific.] Prepared and Supported need an established basis: name the plan, information, allies, or backing involved. Trusted and Discredited apply to a named audience and subject, not everyone or every interaction. They are not universal reputation scores and do not automatically decide what another character believes. #emph[Exhausted] should identify the depleted capacity rather than penalise everything.

#block(sticky: true)[#strong[Recording examples.]]
- #emph[mapped patrol routes] --- Situational Condition 2 --- helps evading the observed patrols --- ends when their routes change.
- #emph[trusted by the village council] --- Situational Condition 2 --- helps persuading the council about local threats within your established credibility --- ends when that trust is withdrawn or betrayed.
#colbreak()
- #emph[Mentally exhausted −3] --- personal status, tier 3 --- sustained mental work --- ends through appropriate recovery (@core-rest-recovery).
- #emph[discredited before the merchant guild] --- Situational Condition 2 --- hinders claims about the disputed shipment made to the guild --- ends when the accusation is disproved or credibility is restored.

#strong[Special conditions stay separate.] These examples use the normal status and Situational Condition rules. Grind hardships --- #emph[Hungry & Thirsty], #emph[Weary], #emph[Exposed], #emph[Shaken], #emph[Sick], and #emph[Broken] --- use their listed effects and recovery requirements (Module B.3), not generic tiers inferred from their order. Running-dry statuses also follow their pool-specific procedure (@core-running-dry-statuses). Impede is a temporary conflict effect, not a status (@core-actions-effects).
]
