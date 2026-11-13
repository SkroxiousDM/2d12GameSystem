#import "common.typ": *

== Module C --- Truth-Driven Sandbox (2d20)
#columns(2, gutter: 4mm)[
Truths become the backbone of an open-world campaign: regions, sites, and factions are defined by Truths that players can discover, exploit, and change.

=== C.1 Truth Layers
#figure(
  [#table(
    columns: (20%, 50%, 30%),
    align: (auto,auto,),
    table.header([Layer], [Example], [Lifespan],),
    table.hline(),
    [#strong[Campaign];], [#emph[The old empire\'s roads still hold its magic];], [Changes only through major arcs],
    [#strong[Region];], [#emph[Lawless borderland];, #emph[Endless rain];], [Changes through faction clocks],
    [#strong[Site];], [#emph[Flooded lower levels];, #emph[Ghosts guard the vault];], [Changes when PCs act on them],
    [#strong[Scene];], [#emph[Pitch Dark];, #emph[Hostile Crowd];], [One scene],
  )]
  , kind: table
  )

Record scope, rank and removal condition as usual (Core Rules §8). A Truth's layer sets its scale and how long it lasts, not its rank: rank 2 and the three-step cap still apply.

=== C.2 Site Sheets
Each location gets a short sheet:

- #strong[3 Truths] (at least one hidden; at most one at rank 2)
- #strong[A Woe seed:] 1--3 Woe the GM adds when the party arrives
- #strong[A danger clock] (what happens if the party lingers)
- #strong[A secret] (something worth discovering)
- #strong[Rumours] (see C.4)

Give the danger clock a real trigger or deadline. It doesn't tick on every failed conflict action (Core Rules §7, §10.7).

=== C.3 Truth Generator Tables (d12)
Roll once per column or pick.

#figure(
  [#table(
    columns: (7%, 20%, 23%, 20%, 30%),
    align: (auto,auto,auto,auto,auto,),
    table.header([d12], [Terrain / Feature], [Atmosphere], [Hazard], [Secret],),
    table.hline(),
    [1], [Ruined fortification], [Eerie silence], [Unstable ground], [Hidden passage],
    [2], [Dense forest], [Constant rain], [Disease], [A traitor among allies],
    [3], [Flooded lowland], [Oppressive heat], [Predators], [Buried treasure],
    [4], [Market town], [Festival crowds], [Watchful authorities], [A forgotten god sleeps here],
    [5], [Mountain pass], [Biting wind], [Rockfall], [Smuggling route],
    [6], [Abandoned facility], [Flickering lights], [Toxic air], [Experiment gone wrong],
    [7], [River crossing], [Thick fog], [Rapids], [Drowned village below],
    [8], [Sacred grove], [Watched by unseen eyes], [Spirit anger], [A pact with the old powers],
    [9], [Remote camp], [Desperation], [Bandits], [Someone is not who they claim],
    [10], [Underground ways], [Echoes], [Collapse], [Lost civilisation],
    [11], [Noble estate], [Hollow luxury], [Political danger], [Blackmail ledger],
    [12], [Wasteland], [Unnatural stillness], [Exposure], [Gateway to elsewhere],
  )]
  , kind: table
  )

=== C.4 Rumours
A #strong[rumour] is an unconfirmed claim, not yet an established Truth. When players test it through Discover, investigation or arriving, the GM rolls d12 to determine what is actually true:

#figure(
  [#table(
    columns: (12%, 88%),
    align: (auto,auto,),
    table.header([d12], [Result],),
    table.hline(),
    [1--4], [#strong[False] --- and someone benefits from spreading it],
    [5--8], [#strong[Twisted] --- partly true, with a dangerous difference],
    [9--12], [#strong[True] --- becomes a Truth],
  )]
  , kind: table
  )

Use the table only for an unsettled rumour, never to overturn something already established. Record what's actually true, including how it differs from the claim. Discovering a hidden Truth reveals it; it doesn't create the fact you wanted.

=== C.5 Faction Turns
#strong[With Module E,] use its World Turn (E.10) instead of this section, after the stay's endeavours if Module D is in use (D.7). The rest of Module C still applies.

Without Module E, between sessions (or each in-world week), the GM takes a #strong[World Turn];:

+ Each active faction rolls #strong[2d12 + its rating (+1 to +4)] vs. Standard 15 for its current project.
+ Power ticks the faction\'s #strong[project clock] (sized by the change it makes, below).
+ When a clock fills, the faction #strong[creates, removes, or changes the appropriate Site or Region Truth] (e.g. #emph[The Guild controls the river] replaces #emph[The river is free];). Campaign Truths still require a major arc, not an ordinary completed clock.
+ PCs who hear about it can respond; PC actions can tick faction clocks forward or back using Advance.

A faction project changes a Site Truth with an 8-segment clock and a Region Truth with a 12-segment clock. A Campaign Truth changes only through a major arc (C.6).

=== C.6 Player Influence on Truths
- #strong[Discover] effects and Momentum spends reveal hidden Truths.
- #strong[Create] effects and 2 Momentum create Scene Truths; bigger changes need a progress clock (8 segments for a Site Truth, 12 for a Region Truth).
- Major arcs can rewrite Campaign Truths. These are the \"legacy\" moments of the campaign.

Create costs 2 Power per rank (Core Rules §5). A 2-Momentum Truth starts at rank 1, and the same cost again raises it to rank 2 (Core Rules §8). A Scene Truth can't stand in for a Site or Region change.

#strong[In a conflict,] Discover, Advance and other off-menu Effects need a permitted action or explicit exception (Core Rules §10.6). Winning achieves the conflict's stated intent, not every related project clock. A Truth can set up a scenery feature, but using it takes a scenery Maneuver (Core Rules §10.8). Preparation counts toward Superiority only under Core Rules §10.3.

#include "chapter-3-module-c.7-entanglements.typ"
]