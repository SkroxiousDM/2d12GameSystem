#import "common.typ": *
#pagebreak() 
== 5. Knowledge Focuses <foc-knowledge-focuses>
#columns(2, gutter: 6mm)[
=== 9. Builds Impossible Things
#quote(block: true)[
An artificer, engineer, or inventor who makes what shouldn\'t work, work.
]

- #strong[Tags:] #emph[There Has to Be a Way to Build It];, #emph[I Can Always Improve It]
- #strong[PC link:] \"I built \[PC\]\'s gear, and I\'m still tinkering with it.\"

#emph[There Has to Be a Way to Build It]

Power: Invent a solution and overcome practical design obstacles. \
Compel: You pursue an expensive or dangerous construction instead of accepting a limitation.

#emph[I Can Always Improve It]

Power: Repair, adapt, or refine a device. \
Compel: You modify something reliable at the wrong moment or refuse to call it finished.

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
      benefit: [Turn the gadget into a permanent item with 1 tag and 1 action tag.],
      limit: [Count its benefit once per roll.],
    )],
    [2b], [#strong[Field Repairs];], [#ability(
      trigger: [You Restore gear, vehicles or constructs, or repair damaged armour.],
      cost: [The normal Restore cost.],
      benefit: [Restore effects work on gear, vehicles and constructs. Repair damaged armour without downtime.],
      limit: [No additional limit.],
    )],
    [3a], [#strong[Master-work];], [#ability(
      trigger: [During downtime, you build or substantially rebuild a signature item.],
      cost: [Complete a 12-segment crafting clock with suitable materials and facilities.],
      benefit: [The masterwork has two tags and one conflict action tag appropriate to its function. Once per scene, when its user succeeds on an action directly using it, they gain +1 Power. With Module A: The masterwork is an artifact, with the bonus Power as its special ability. Agree its depletion rating and quirk with the GM when it becomes an artifact. You pay no Refresh to attune your own masterwork. Waiving attunement Refresh does not waive the normal attunement-slot limit when attunement is required. Other artifact rules apply.],
      limit: [You can maintain one masterwork at a time. Giving it away does not free this slot. You may replace it through a new crafting project, but the old item then loses its masterwork bonus Power. Its ordinary tags remain. With Module A: When replaced, the former masterwork remains an artifact but loses the bonus-Power ability and attunement exemption granted by Masterwork. It retains its tags, depletion rating, quirk, and any independently established properties. Normal artifact and attunement rules apply; replacement does not grant a substitute special ability.],
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

- #strong[Tags:] #emph[No One Is Beyond My Care];, #emph[The Patient Comes First]
- #strong[PC link:] \"I patched up \[PC\] when no one else would.\"

#emph[No One Is Beyond My Care]

Power: Treat difficult patients and earn the trust of the neglected. \
Compel: You help someone whom your allies need you to refuse.

#emph[The Patient Comes First]

Power: Make clear treatment decisions and protect someone in your care. \
Compel: A patient’s needs take priority over the mission or your own safety.

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
      trigger: [You spend ten uninterrupted minutes treating yourself or an ally with suitable supplies.],
      cost: [The treatment time and supplies.],
      benefit: [Reduce one temporary harmful physical Personal status by 2 tiers, without a roll, when your treatment can address its cause. With Module B: Instead of reducing a tiered status, clear Hungry & Thirsty, Exposed, or Sick from the patient. Meet that hardship's normal fictional recovery requirements, including any required rest; no recovery roll is needed.],
      limit: [Once per scene, across all patients. It does not treat lasting injuries, running-dry depletion, or tier-6 harm, and cannot remove an affliction whose source requires a different cure. It does not restore pools or Disposition, erase a Scar, or return a Taken Out character to an ongoing conflict.],
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

- #strong[Tags:] #emph[Every Detail Must Fit];, #emph[I Follow the Case Wherever It Leads]
- #strong[PC link:] \"\[PC\] was part of the case that made me.\"

#emph[Every Detail Must Fit]

Power: Reconstruct events and expose contradictions. \
Compel: You fixate on an inconsistency while a pressing danger develops.

#emph[I Follow the Case Wherever It Leads]

Power: Pursue difficult evidence and challenge convenient explanations. \
Compel: You cross a dangerous boundary or expose someone you wanted to protect.

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

- #strong[Tags:] #emph[The Past Still Has Something to Say];, #emph[What Was Lost Must Be Preserved]
- #strong[PC link:] \"\[PC\] helped me recover something that was lost.\"

#emph[The Past Still Has Something to Say]

Power: Interpret ruins, records, and historical patterns. \
Compel: You give an old precedent more weight than present circumstances deserve.

#emph[What Was Lost Must Be Preserved]

Power: Recover, identify, and safeguard endangered knowledge or relics. \
Compel: You risk people or resources rather than abandon a discovery.

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
      trigger: [You draw on history, legends, or old cultures to explain a useful fact you have studied.],
      cost: [#strong[1 Power].],
      benefit: [Create a Truth (#emph[Ancient Weakness], #emph[Forgotten Route]), or instead a helpful rating-1 Situational Condition from what you recall (#emph[known weakness 1]).],
      limit: [Once per scene. Create one scene Truth or one helpful rating-1 Situational Condition. It supplies present-day leverage from old knowledge; it cannot rewrite established history.],
    )],
    [2b], [#strong[Relic Hunter];], [#ability(
      trigger: [You examine an old, unusual, or valuable object, or treasure is randomly generated for your party. With Module A, the generation trigger also includes cyphers.],
      cost: [No additional cost.],
      benefit: [Ask one free Discover question about its origin, purpose, authenticity, or safe handling. When treasure is randomly generated, roll or draw twice and choose one result. With Module A: The selection benefit also applies to cyphers. You identify an artifact's function, activation requirements, depletion, and quirk without a roll; identification does not attune it or remove its risks.],
      limit: [One free question per object. Examining the same object again does not renew it. Make the additional treasure roll or draw before the result is resolved; this cannot reroll treasure already found or examined. The selection benefit changes which treasure is found, not its quantity.],
    )],
    // PLAYTEST: B2, was two steps; Master of the Field capstone gives one.
    [3a], [#strong[Living Archive];], [#ability(
      trigger: [You make a Lore roll about history, legends or old cultures.],
      cost: [No additional cost.],
      benefit: [It is #strong[one Difficulty step lower].],
      limit: [Difficulty reductions apply only against a Difficulty (@foc-ability-limits).],
    )],
    [3b], [#strong[★ Rewrite History];], [#ability(
      trigger: [You investigate a consequential historical claim.],
      cost: [Complete a 12-segment research clock using evidence and sources relevant to the claim.],
      benefit: [Establish a previously unknown historical fact that overturns the claim. The GM confirms the finding and identifies the evidence that makes it demonstrable. With Module C: If the agreed project concerns a Campaign Truth, completing it can replace that Truth with the demonstrated finding.],
      limit: [Agree the claim and possible scope before starting the clock. This reveals what happened; it does not change a resolved past event, dictate how people respond, or automatically settle an ongoing conflict. Maintain only one Rewrite History project at a time.],
    )],
  )]
  , kind: table
  )
// ART: A scholar brushing dust from a carved tablet in a ruin.
#art-fill(min: 6cm)[A scholar brushing dust from a carved tablet in a ruin.]
]
