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

Record scope, rank and removal condition when a Truth matters mechanically (Core Rules §8). Its layer describes scale and persistence, not a larger numerical rank: rank 2 remains the maximum, and the net Difficulty shift remains capped at three steps. A removal condition does not extend a Scene Truth beyond its duration.

=== C.2 Site Sheets
Each location gets a short sheet:

- #strong[3 Truths] (at least one hidden; at most one at rank 2)
- #strong[A Woe seed:] 1--3 Woe the GM adds when the party arrives
- #strong[A danger clock] (what happens if the party lingers)
- #strong[A secret] (something worth discovering)
- #strong[Rumours] (see C.4)

State the danger clock's actual trigger or deadline. Its presence is not permission to add a tick or an unrelated GM move to every ordinary failed conflict action; use Core Rules §7 and §10.7.

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
    columns: (8%, 92%),
    align: (auto,auto,),
    table.header([d12], [Result],),
    table.hline(),
    [1--4], [#strong[False] --- and someone benefits from spreading it],
    [5--8], [#strong[Twisted] --- partly true, with a dangerous difference],
    [9--12], [#strong[True] --- becomes a Truth],
  )]
  , kind: table
  )

Resolve an unsettled rumour with this table; do not use it to retroactively overturn a fact already established by successful investigation. Record the actual finding, including any meaningful difference from the claim. Discovering a hidden Truth reveals what exists; it is not the same as creating a desired fact.

=== C.5 Faction Turns
#strong[Module E replacement.] If Module E is enabled, use its World Turn procedure (E.10) instead of this section's faction action procedure; do not run both. With Module D, that World Turn takes place after the stay's endeavours (D.7). Retain the rest of Module C.

Without Module E, between sessions (or each in-world week), the GM takes a #strong[World Turn];:

+ Each active faction rolls #strong[2d12 + its rating (+1 to +4)] vs. Standard 15 for its current project.
+ Power ticks the faction\'s #strong[project clock] (sized by the change it makes, below).
+ When a clock fills, the faction #strong[creates, removes, or changes the appropriate Site or Region Truth] (e.g. #emph[The Guild controls the river] replaces #emph[The river is free];). Campaign Truths still require a major arc, not an ordinary completed clock.
+ PCs who hear about it can respond; PC actions can tick faction clocks forward or back using Advance.

A faction project changes a Site Truth with an 8-segment clock, a Region Truth with a 12-segment clock, and a Campaign Truth only through a major arc (C.6). Under Module E, use its declared-project, capability and action rules rather than substituting this basic rating roll.

=== C.6 Player Influence on Truths
- #strong[Discover] effects and Momentum spends reveal hidden Truths.
- #strong[Create] effects and 2 Momentum create Scene Truths; bigger changes need a progress clock (8 segments for a Site Truth, 12 for a Region Truth).
- Major arcs can rewrite Campaign Truths. These are the \"legacy\" moments of the campaign.

Create costs 2 Power per Truth rank before explicit discounts; a 2-Momentum creation starts at rank 1, with the same cost again to raise it to rank 2 (Core Rules §5, §8). A Scene Truth cannot bypass a larger project's scale merely by naming a lasting regional outcome.

#strong[Acting in a conflict.] Use permitted scripted actions and explicit exceptions for Discover, Advance or other Effects not on the ordinary action menu (§10.6). A faction project clock is not shared Disposition: winning a conflict achieves its stated intent within the stakes, not automatic completion of every related project. A Truth can establish a scenery feature, but exploiting it requires the scenery Maneuver's own requirements and Power cost (§10.8). Preparation can justify Superiority only when its distinct category and relevance are established (§10.3).

#include "drafts/module-c-7-8-entanglements-long-knives.typ"
]