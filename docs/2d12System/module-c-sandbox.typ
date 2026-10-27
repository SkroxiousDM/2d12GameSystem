// Module C — Truth-Driven Sandbox (2d20)
// Include after Module B, outside any columns block.
// If Module E is enabled, E.10 replaces C.5; keep the rest of this module.
== Module C --- Truth-Driven Sandbox (2d20)
#columns(2, gutter: 6mm)[
Truths become the backbone of an open-world campaign. Regions, sites, and factions are defined by Truths that players can discover, exploit, and change.

=== C.1 Truth Layers
#table(columns: (18%, 52%, 30%),
  table.header([Layer], [Example], [Lifespan]),
  [*Campaign*], [_The old empire's roads still hold its magic_], [Changes only through major arcs],
  [*Region*], [_Lawless borderland_, _Endless rain_], [Changes through faction clocks],
  [*Site*], [_Flooded lower levels_, _Ghosts guard the vault_], [Changes when PCs act on them],
  [*Scene*], [_Pitch Dark_, _Hostile Crowd_], [One scene],
)

=== C.2 Site Sheets
Each location gets a short sheet:
- *3 Truths:* at least one hidden, at most one at rank 2.
- *Woe seed:* 1--3 Woe the GM adds when the party arrives.
- *Danger clock:* what happens if the party lingers.
- *Secret:* something worth discovering.
- *Rumours:* see C.4.

=== C.3 Truth Generator (d12)
Roll once per column, or pick.

#table(columns: (7%, 21%, 23%, 20%, 29%),
  table.header([d12], [Terrain / Feature], [Atmosphere], [Hazard], [Secret]),
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
)

=== C.4 Rumours
A *rumour* is an unconfirmed Truth. When players confirm it (Discover, investigation, or arriving), the GM rolls d12:

#table(columns: (10%, 90%),
  table.header([d12], [Result]),
  [1--4], [*False.* Someone benefits from spreading it.],
  [5--8], [*Twisted.* Partly true, with a dangerous difference.],
  [9--12], [*True.* It becomes a Truth.],
)

=== C.5 Faction Turns
Between sessions (or each in-world week), the GM takes a *World Turn*. If Module E is enabled, use E.10 instead.

+ Each active faction rolls 2d12 + its rating (+1 to +4) against Standard 15 for its current project.
+ Power ticks the faction's project clock (6 or 8 segments).
+ When a clock fills, the faction creates, removes, or changes a Region or Campaign Truth (_The Guild controls the river_ replaces _The river is free_).
+ PCs who hear of it can respond. PC actions tick faction clocks forward or back with Advance.

=== C.6 Player Influence on Truths
- *Discover* effects and Momentum spends reveal hidden Truths.
- *Create* effects and 2 Momentum make Scene Truths.
- Bigger changes need a progress clock: 8 segments for a Site Truth, 12 for a Region Truth.
- Major arcs can rewrite Campaign Truths. These are the campaign's legacy moments.
]
