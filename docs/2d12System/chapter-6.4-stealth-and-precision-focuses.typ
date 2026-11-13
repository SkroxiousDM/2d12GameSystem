#import "common.typ": *
  
== 4. Stealth & Precision Focuses
#columns(2, gutter: 6mm)[
=== 5. Moves Like a Shadow
#quote(block: true)[
Silent, patient, and impossible to pin down.
]

- #strong[Power tags:] #emph[silent as snowfall];, #emph[at home in darkness]
- #strong[Weakness tag:] #emph[uneasy in the light]
- #strong[PC link:] \"\[PC\] is the only one who always knows where I am.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Shadow-Born];], [Truths about darkness, noise, or crowds lower your Stealth Difficulty by #strong[two steps] instead of one.],
    [2a], [#strong[Vanish];], [Once per scene, after any roll, become hidden if there\'s any cover nearby. No roll needed. This changes your position from now on; it doesn\'t undo anything already resolved.],
    [2b], [#strong[Shadow Escort];], [Up to #strong[two allies] can use your Stealth result instead of rolling their own.],
    // PLAYTEST: B4, no stacking with Opportunist.
    [3a], [#strong[Unseen Hand];], [Any action you take while hidden gains #strong[+1 Power] on a success. It doesn\'t stack with Opportunist.],
    [3b], [#strong[★ Living Shadow];], [Once per session, describe a concealed route through one guarded or blocked area to a destination beyond it. If the route could physically fit you, you reach it unnoticed without a roll; ordinary locks, patrols and surveillance don\'t stop you. It moves only you and what you carry. In a scripted conflict, use it between exchanges: if unnoticed passage was your only objective, you achieve it and leave without compromise; otherwise, continue from the new position.],
  )]
  , kind: table
  )

=== 6. Never Misses
#quote(block: true)[
Sniper, archer, gunslinger: steady breath and a sharp eye.
]

- #strong[Power tags:] #emph[steady breath];, #emph[eye like a hawk]
- #strong[Weakness tag:] #emph[clumsy up close]
- #strong[PC link:] \"\[PC\] owes their life to a shot I made.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Called Shot];], [Once per roll with Shoot, a #strong[free Weaken] effect: suppress one of the target\'s tags (weapon, cover, mobility) for the scene.],
    [2a], [#strong[Overwatch];], [Once per scene, cancel an imposed status of tier 2 or less about to hit an ally by shooting the source; declare it before the status applies. In conflicts, you may Defend with #strong[Shoot] when covering fire can protect your side.],
    [2b], [#strong[Trick Shot];], [Ignore Truths about cover and angles. Gain a free #strong[Extra Feat] when you shoot objects (cut a rope, hit a switch, ricochet).],
    // PLAYTEST: R4, defines One Shot inside scripted conflicts.
    [3a], [#strong[One Shot];], [Once per session, a successful Shoot Attack against a non-major NPC #strong[Takes them Out];. In a conflict, it removes that participant and 1 additional Disposition.],
    [3b], [#strong[★ Sniper\'s Patience];], [Spend a scene setting up (4-segment clock). Your shot gets #strong[+2 bonus dice] for free and #strong[+2 Power] on a success.],
  )]
  , kind: table
  )
#colbreak()
=== 7. Opens Every Lock
#quote(block: true)[
Locks, safes, firewalls, sealed doors: they\'re puzzles, and you love puzzles.
]

- #strong[Power tags:] #emph[nothing stays closed];, #emph[thinks like an architect]
- #strong[Weakness tag:] #emph[can\'t resist a challenge]
- #strong[PC link:] \"\[PC\] keeps me out of trouble, or tries to.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Bypass];], [Each success on a lock, safe or security clock advances it #strong[1 extra segment];.],
    [2a], [#strong[Back Door];], [Once per location, Create the Truth #emph[I know a way in] for #strong[1 Power];. It gives access or leverage, not victory over an unrelated objective.],
    [2b], [#strong[Trap Sense];], [You always notice traps and alarms before triggering them. Resisting traps costs #strong[0 on a Resistance result of 5+];.],
    // PLAYTEST: B2, was two steps; Master of the Field capstone gives one.
    [3a], [#strong[Master Key];], [Ordinary locks open without a roll. Complex security is #strong[one Difficulty step lower];.],
    [3b], [#strong[★ Vault Breaker];], [Once per mission, declare a security layer already cracked: fill one security clock completely.],
  )]
  , kind: table
  )

=== 8. Always Has an Escape Plan
#quote(block: true)[
You never walk into a room without knowing how to leave it.
]

- #strong[Power tags:] #emph[knows every exit];, #emph[slippery]
- #strong[Weakness tag:] #emph[runs first, thinks later]
- #strong[PC link:] \"\[PC\] was with me during my worst getaway.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Exit Strategy];], [When you enter a new scene, ask one free Discover question about exits or escape routes.],
    // PLAYTEST: B1, was +3; matches At the Helm.
    [2a], [#strong[Clean Getaway];], [In Chase conflicts where you\'re fleeing, your side gets #strong[+2 starting Disposition];.],
    [2b], [#strong[Contin-gency];], [Once per mission, when things go wrong, reveal a prepared fallback (stashed gear, a getaway vehicle, a safe house) as a Truth. No Momentum needed.],
    [3a], [#strong[Not Here];], [Once per scene, when you would receive an imposed harmful status and can act, spend #strong[1 Momentum] and describe how you evade its source: cancel that status on yourself and move to a nearby position. Disposition loss and other effects of the triggering action still apply.],
    [3b], [#strong[★ Dead Man\'s Switch];], [Once per session, when you\'re captured or confined, declare a contingency and give the GM #strong[2 Woe];. At the start of your next scene it creates an opening (you slip one restraint, an exit opens, or an established contact helps), and you may at once make one escape roll, even if confinement would normally prevent it. In a conflict, resolve it before the next exchange. Your statuses stay, and it doesn\'t revive you, recover confiscated gear, free companions or guarantee the roll.],
  )]
  , kind: table
  )
]
