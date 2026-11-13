#import "common.typ": *

== 5. Knowledge Focuses
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
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Jury-Rig];], [Once per scene, Craft a temporary gadget: Create a Truth for #strong[1 Power] that lasts the scene.],
    [2a], [#strong[Inventor];], [During downtime, turn a gadget into a permanent item with a 6-segment clock. It gets 1 power tag and 1 action tag; count its benefit once per roll.],
    [2b], [#strong[Field Repairs];], [Restore effects work on gear, vehicles, and constructs. Repair damaged armour without downtime.],
    [3a], [#strong[Master-work];], [Create one #strong[artifact] (Module A) with a 12-segment downtime clock. You pay no Refresh to attune your own masterwork.],
    [3b], [#strong[★ Rig the Field];], [Once per scene, rig the area with gadgets: Create #strong[two] Truths for 2 Power total.],
  )]
  , kind: table
  )

=== 10. Heals the Broken
#quote(block: true)[
Doctor, field medic, herbalist, or combat surgeon.
]

- #strong[Power tags:] #emph[calm hands];, #emph[bedside manner]
- #strong[Weakness tag:] #emph[can\'t refuse anyone in pain]
- #strong[PC link:] \"I patched up \[PC\] when no one else would.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Triage];], [Once per scene, reduce an ally\'s harmful status by #strong[1 tier] without a roll.],
    [2a], [#strong[Battlefield Surgeon];], [In conflicts, you may Defend with #strong[Medicine] when you can reach and treat an ally. On a successful Defend, restore Disposition normally and also clear one tier-1 harmful status from that ally that your treatment can address.],
    [2b], [#strong[Remedy];], [In each Players\' Turn, clear one Grind condition (Module B) from one ally #strong[without spending a Check];.],
    [3a], [#strong[Miracle Worker];], [Once per session, bring an ally back from a tier-6 physical status: they return at tier 4, are no longer Taken Out, and may rejoin an unresolved conflict if circumstances allow. A settled defeat stays settled.],
    // PLAYTEST: R2/B8, short rest replaced by the Third rest only.
    [3b], [#strong[★ Physician\'s Care];], [Allies you treat during a Third rest recover #strong[all] pool points instead of that rest\'s normal recovery.],
  )]
  , kind: table
  )
  
=== 11. Solves the Unsolvable
#quote(block: true)[
Detective, investigator, or analyst: you follow the thread to the end.
]

- #strong[Power tags:] #emph[nothing gets past me];, #emph[follows the thread]
- #strong[Weakness tag:] #emph[obsessed with the case]
- #strong[PC link:] \"\[PC\] was part of the case that made me.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Case File];], [Start a #strong[Mystery clock] (6 or 8) for a case. Every Discover you buy also advances it 1 segment. When it fills, the GM reveals the core truth.],
    // PLAYTEST: Balance FO B7, rider added (overlaps Tracker).
    [2a], [#strong[Interro-gator];], [When questioning someone, each Discover gives #strong[two answers];. You also learn whether the subject believes each answer.],
    [2b], [#strong[Recon-struction];], [At the scene of a past event, ask #strong[three] Discover questions for free (once per location).],
    // PLAYTEST: B1, was +4 starting Disposition; matches the Word Is Law capstone.
    [3a], [#strong[The Reveal];], [Once per session, publicly name the culprit in a case you\'ve investigated and explain the evidence. The GM confirms whether you\'re right. If you are, your side gains #strong[+3 starting Disposition] in the next conflict this session in which it confronts the culprit over the case; declare it before Disposition is rolled. If your side wins, the culprit gets no compromise protecting them from the case-related outcome in the stakes; others on their side keep theirs. It doesn\'t prove guilt without evidence, expand the stakes, force a confession or skip a finishing procedure. A wrong accusation gives nothing and uses the session\'s use.],
    [3b], [#strong[★ One Step Ahead];], [Once per session, reveal that you anticipated an opponent\'s move: #strong[cancel one GM Woe spend] as it happens, before its effect resolves.],
  )]
  , kind: table
  )

=== 12. Remembers What Was Forgotten
#quote(block: true)[
Historian, archaeologist, or keeper of lost lore.
]

- #strong[Power tags:] #emph[walks among ruins];, #emph[reads dead languages]
- #strong[Weakness tag:] #emph[lives in the past]
- #strong[PC link:] \"\[PC\] helped me recover something that was lost.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Echoes of the Past];], [At any old or abandoned place, ask one free Discover question about its history.],
    // PLAYTEST: B5, was 0 Power.
    [2a], [#strong[Lost Knowledge];], [Once per session, you\'ve read about this before: Create a Truth (#emph[ancient weakness];, #emph[forgotten route];) for #strong[1 Power];.],
    [2b], [#strong[Relic Hunter];], [When you find cyphers or treasure, roll or draw #strong[twice] and choose. You identify artifacts automatically.],
    // PLAYTEST: B2, was two steps; Master of the Field capstone gives one.
    [3a], [#strong[Living Archive];], [Lore rolls about history, legends, and old cultures are #strong[one Difficulty step lower];.],
    [3b], [#strong[★ Rewrite History];], [Prove a Campaign Truth is false with a 12-segment research clock. When it fills, the Truth changes (Module C).],
  )]
  , kind: table
  )
]
