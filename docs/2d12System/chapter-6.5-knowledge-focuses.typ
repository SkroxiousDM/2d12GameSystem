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
    [1], [#strong[Jury-Rig];], [Once per scene, Craft a temporary gadget (a story tag) that lasts the scene and costs #strong[1 Power] to Create.],
    [2a], [#strong[Inventor];], [During downtime, turn a gadget into a permanent item with a 6-segment clock. It gets 1 power tag and 1 action tag.],
    [2b], [#strong[Field Repairs];], [Restore effects work on gear, vehicles, and constructs. Repair damaged armour without downtime.],
    [3a], [#strong[Master-work];], [Create one #strong[artifact] (Module A) with a 12-segment downtime clock. You pay no Refresh to attune your own masterwork.],
    [3b], [#strong[★ Rig the Field];], [Once per scene, rig the area with gadgets: Create #strong[two] story tags for 2 Power total.],
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
    [2a], [#strong[Battlefield Surgeon];], [In conflicts, you may Defend with #strong[Medicine] when you can reach an ally and provide appropriate treatment. On a successful Defend, restore your side\'s Disposition normally and clear one tier-1 harmful status from that ally that your treatment can address.],
    [2b], [#strong[Remedy];], [In each Players\' Turn, clear one Grind condition (Module B) from one ally #strong[without spending a Check];.],
    [3a], [#strong[Miracle Worker];], [Once per session, bring an ally back from a tier-6 physical status. They return at tier 4 and are no longer Taken Out.],
    [3b], [#strong[★ Physician\'s Care];], [Allies you treat during a short rest recover #strong[all] pool points, not just 1 + Edge.],
  )]
  , kind: table
  )
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
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Case File];], [Start a #strong[Mystery clock] (6 or 8) for a case. Every Discover you buy also Advances it 1 segment. When it fills, the GM reveals the core truth.],
    [2a], [#strong[Interro-gator];], [When questioning someone, each Discover gives #strong[two answers];.],
    [2b], [#strong[Recon-struction];], [At the scene of a past event, ask #strong[three] Discover questions for free (once per location).],
    [3a], [#strong[The Reveal];], [Once per session, name the culprit in front of others. If you\'re right, your side starts any conflict against them with #strong[+4 Disposition];, and they get no compromise if they lose.],
    [3b], [#strong[★ One Step Ahead];], [Once per session, reveal that you anticipated an opponent\'s move: #strong[cancel one GM Woe spend] as it happens.],
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
    [2a], [#strong[Lost Knowledge];], [Once per session, you\'ve read about this before: Create a story tag (#emph[ancient weakness];, #emph[forgotten route];) for #strong[0 Power];.],
    [2b], [#strong[Relic Hunter];], [When you find cyphers or treasure, roll or draw #strong[twice] and choose. You identify artifacts automatically.],
    [3a], [#strong[Living Archive];], [Lore rolls about history, legends, and old cultures are #strong[two Difficulty steps lower];.],
    [3b], [#strong[★ Rewrite History];], [Prove a Campaign Truth is false with a 12-segment research clock. When it fills, the Truth changes (Module C).],
  )]
  , kind: table
  )
]
