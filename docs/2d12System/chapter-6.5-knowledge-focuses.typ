#import "common.typ": *
#pagebreak() 
== 5. Knowledge Focuses <foc-knowledge-focuses>
#columns(2, gutter: 6mm)[
=== 9. Builds Impossible Things
#quote(block: true)[
An artificer, engineer, or inventor who makes what shouldn\'t work, work.
]

- #strong[Power tags:] #emph[workshop hands];, #emph[it\'ll work, trust me]
- #strong[Weakness tag:] #emph[never quite finished]
- #strong[PC link:] \"I built \[PC\]\'s gear, and I\'m still tinkering with it.\"

#figure(
  [#table(
    columns: (7%, 18%, 75%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Jury-Rig];], [#ability(
      trigger: [You Craft a temporary gadget.],
      cost: [#strong[1 Power].],
      benefit: [Create a Truth that lasts the scene, or instead a helpful rating-1 Situational Condition from the gadget (#emph[makeshift brace 1]).],
      limit: [Once per scene. One Truth or one Condition, rating 1 only.],
    )],
    [2a], [#strong[Inventor];], [#ability(
      trigger: [During downtime, you work on a gadget.],
      cost: [A 6-segment clock.],
      benefit: [Turn the gadget into a permanent item with 1 power tag and 1 action tag.],
      limit: [Count its benefit once per roll.],
    )],
    [2b], [#strong[Field Repairs];], [#ability(
      trigger: [You Restore gear, vehicles or constructs, or repair damaged armour.],
      cost: [The normal Restore cost.],
      benefit: [Restore effects work on gear, vehicles and constructs. Repair damaged armour without downtime.],
      limit: [No additional limit.],
    )],
    [3a], [#strong[Master-work];], [#ability(
      trigger: [During downtime, you work on a masterwork.],
      cost: [A 12-segment downtime clock.],
      benefit: [Create one #strong[artifact] (Module A). You pay no Refresh to attune your own masterwork.],
      limit: [Needs Module A. One masterwork at a time: you can start another only after the current one is lost, destroyed or given away.],
    )],
    [3b], [#strong[★ Rig the Field];], [#ability(
      trigger: [You rig the area with gadgets.],
      cost: [2 Power total.],
      benefit: [Create #strong[two] Truths. You may also give one of them a helpful #strong[rating-2] Situational Condition from the rigging, at no extra cost.],
      limit: [Once per scene. One Condition only, rating 2 at most.],
    )],
  )]
  , kind: table
  )

// ART: A workbench crowded with a half-built contraption and scattered tools.
#art-fill(min: 6cm)[A workbench crowded with a half-built contraption and scattered tools.]
#colbreak()
=== 10. Heals the Broken
#quote(block: true)[
Doctor, field medic, herbalist, or combat surgeon.
]

- #strong[Power tags:] #emph[calm hands];, #emph[bedside manner]
- #strong[Weakness tag:] #emph[can\'t refuse anyone in pain]
- #strong[PC link:] \"I patched up \[PC\] when no one else would.\"

#figure(
  [#table(
    columns: (7%, 18%, 75%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Triage];], [#ability(
      trigger: [You treat an ally.],
      cost: [No additional cost.],
      benefit: [Reduce the ally's harmful status by #strong[1 tier] without a roll.],
      limit: [Once per scene.],
    )],
    [2a], [#strong[Battlefield Surgeon];], [#ability(
      trigger: [In a conflict, you Defend when you can reach and treat an ally.],
      cost: [No additional cost.],
      benefit: [You may Defend with #strong[Medicine]. On a successful Defend, restore Disposition normally and also clear one tier-1 harmful status from that ally that your treatment can address.],
      limit: [Only an ally you can reach and treat.],
    )],
    [2b], [#strong[Remedy];], [#ability(
      trigger: [A Players' Turn (Module B).],
      cost: [#strong[No Check].],
      benefit: [Clear one Grind hardship from one ally.],
      limit: [Once per Players' Turn.],
    )],
    [3a], [#strong[Miracle Worker];], [#ability(
      trigger: [An ally has a tier-6 physical status.],
      cost: [No additional cost.],
      benefit: [They return at tier 4, are no longer Taken Out, and may rejoin an unresolved conflict if circumstances allow. A Dying ally stops Dying; this counts as definitive care (Core Rules @core-dying-stabilisation). Erase the Scar they gained from reaching tier 6 with this status.],
      limit: [Once per session. It can't undo death. A settled defeat stays settled.],
    )],
    // PLAYTEST: R2/B8, short rest replaced by the Third rest only.
    [3b], [#strong[★ Physician\'s Care];], [#ability(
      trigger: [You treat allies during a Third rest.],
      cost: [No additional cost.],
      benefit: [They recover #strong[all] pool points instead of that rest's normal recovery.],
      limit: [The Third rest only.],
    )],
  )]
  , kind: table
  )
  
// ART: A field medic stitching a wound by lamplight.
#art-fill(min: 6cm)[A field medic stitching a wound by lamplight.]
#colbreak()
=== 11. Solves the Unsolvable
#quote(block: true)[
Detective, investigator, or analyst: you follow the thread to the end.
]

- #strong[Power tags:] #emph[nothing gets past me];, #emph[follows the thread]
- #strong[Weakness tag:] #emph[obsessed with the case]
- #strong[PC link:] \"\[PC\] was part of the case that made me.\"

#figure(
  [#table(
    columns: (7%, 18%, 75%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Case File];], [#ability(
      trigger: [You start a case, or buy Discover on it.],
      cost: [No additional cost.],
      benefit: [Start a #strong[Mystery clock] (6 or 8). Every Discover you buy also advances it 1 segment. When it fills, the GM reveals the core truth.],
      limit: [One clock per case.],
    )],
    // PLAYTEST: Balance FO B7, rider added (overlaps Tracker).
    [2a], [#strong[Interro-gator];], [#ability(
      trigger: [You buy Discover while questioning someone.],
      cost: [The normal Discover cost.],
      benefit: [Each Discover gives #strong[two answers]. You also learn whether the subject believes each answer.],
      limit: [No additional limit.],
    )],
    [2b], [#strong[Recon-struction];], [#ability(
      trigger: [You're at the scene of a past event.],
      cost: [No additional cost.],
      benefit: [Ask #strong[three] Discover questions for free.],
      limit: [Once per location.],
    )],
    // PLAYTEST: B1, was +4 starting Disposition; matches the Word Is Law capstone.
    [3a], [#strong[The Reveal];], [#ability(
      trigger: [You publicly name the culprit in a case you've investigated and explain the evidence.],
      cost: [A wrong accusation gives nothing and uses the session's use.],
      benefit: [The GM confirms whether you're right. If you are, your side gains #strong[+3 starting Disposition] in the next conflict this session in which it confronts the culprit over the case; declare it before Disposition is rolled. If your side wins, the culprit gets no compromise protecting them from the case-related outcome in the stakes; others on their side keep theirs.],
      limit: [Once per session. It doesn't prove guilt without evidence, expand the stakes, force a confession or skip a finishing procedure.],
    )],
    [3b], [#strong[★ One Step Ahead];], [#ability(
      trigger: [The GM spends Woe, before its effect resolves.],
      cost: [No additional cost.],
      benefit: [Reveal that you anticipated the move: #strong[cancel that Woe spend]. The Woe returns to the GM.],
      limit: [Once per session, one spend. The GM can't spend Woe on the same move again this scene.],
    )],
  )]
  , kind: table
  )

// ART: A detective holding a single clue up to the light.
#art-fill(min: 6cm)[A detective holding a single clue up to the light.]
#colbreak()
=== 12. Remembers What Was Forgotten
#quote(block: true)[
Historian, archaeologist, or keeper of lost lore.
]

- #strong[Power tags:] #emph[walks among ruins];, #emph[reads dead languages]
- #strong[Weakness tag:] #emph[lives in the past]
- #strong[PC link:] \"\[PC\] helped me recover something that was lost.\"

#figure(
  [#table(
    columns: (7%, 18%, 75%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Echoes of the Past];], [#ability(
      trigger: [You're at an old or abandoned place.],
      cost: [No additional cost.],
      benefit: [Ask one free Discover question about its history.],
      limit: [Once per scene, one question.],
    )],
    // PLAYTEST: B5, was 0 Power.
    [2a], [#strong[Lost Knowledge];], [#ability(
      trigger: [You've read about this before.],
      cost: [#strong[1 Power].],
      benefit: [Create a Truth (#emph[Ancient Weakness], #emph[Forgotten Route]), or instead a helpful rating-1 Situational Condition from what you recall (#emph[known weakness 1]).],
      limit: [Once per session. One Truth or one Condition, rating 1 only.],
    )],
    [2b], [#strong[Relic Hunter];], [#ability(
      trigger: [You find cyphers or treasure, or encounter an artifact.],
      cost: [No additional cost.],
      benefit: [Roll or draw #strong[twice] and choose. You identify artifacts automatically.],
      limit: [No additional limit.],
    )],
    // PLAYTEST: B2, was two steps; Master of the Field capstone gives one.
    [3a], [#strong[Living Archive];], [#ability(
      trigger: [You make a Lore roll about history, legends or old cultures.],
      cost: [No additional cost.],
      benefit: [It is #strong[one Difficulty step lower].],
      limit: [Difficulty reductions apply only against a Difficulty (@foc-ability-limits).],
    )],
    [3b], [#strong[★ Rewrite History];], [#ability(
      trigger: [You set out to prove a Campaign Truth false.],
      cost: [A 12-segment research clock.],
      benefit: [When the clock fills, the Truth changes (Module C).],
      limit: [Needs Module C. One Campaign Truth per clock.],
    )],
  )]
  , kind: table
  )
// ART: A scholar brushing dust from a carved tablet in a ruin.
#art-fill(min: 6cm)[A scholar brushing dust from a carved tablet in a ruin.]
]
