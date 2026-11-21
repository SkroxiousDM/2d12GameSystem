#import "common.typ": *
#pagebreak() 
== 4. Stealth & Precision Focuses <foc-stealth-precision-focuses>
#columns(2, gutter: 6mm)[
=== 5. Moves Like a Shadow
#quote(block: true)[
Silent, patient, and impossible to pin down.
]

- #strong[Tags:] #emph[silent as snowfall];, #emph[at home in darkness];, #emph[uneasy in the light]
- #strong[PC link:] \"\[PC\] is the only one who always knows where I am.\"

#figure(
  [#table(
    columns: (7%, 18%, 75%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    // PLAYTEST: converted from a two-step Truth shift; not numerically equivalent.
    [1], [#strong[Shadow-Born];], [#ability(
      trigger: [A Situational Condition involving darkness, noise or crowds helps your Stealth roll.],
      cost: [No additional cost.],
      benefit: [Treat its rating as #strong[1 higher] for this roll.],
      limit: [Only those Conditions, and only on Stealth. Maximum effective rating 6; only the highest helpful Situational Condition applies. It doesn't create concealment where none is possible.],
    )],
    [2a], [#strong[Vanish];], [#ability(
      trigger: [After any roll, if there's any cover nearby.],
      cost: [No additional cost.],
      benefit: [Become hidden. No roll needed.],
      limit: [Once per scene. This changes your position from now on; it doesn't undo anything already resolved.],
    )],
    [2b], [#strong[Shadow Escort];], [#ability(
      trigger: [Allies sneak with you.],
      cost: [No additional cost.],
      benefit: [Up to #strong[two allies] can use your Stealth result instead of rolling their own.],
      limit: [Two allies at most. They must be with you, sneaking past the same watchers toward the same goal.],
    )],
    // PLAYTEST: B4, no stacking with Opportunist.
    [3a], [#strong[Unseen Hand];], [#ability(
      trigger: [You succeed on any action while hidden.],
      cost: [No additional cost.],
      benefit: [Gain #strong[+1 Power].],
      limit: [It doesn't stack with Opportunist.],
    )],
    [3b], [#strong[★ Living Shadow];], [#ability(
      trigger: [You describe a concealed route through one guarded or blocked area to a destination beyond it.],
      cost: [No additional cost.],
      benefit: [If the route could physically fit you, you reach it unnoticed without a roll; ordinary locks, patrols and surveillance don't stop you. In a scripted conflict, use it between exchanges: if unnoticed passage was your only objective, you achieve it and leave without compromise; otherwise, continue from the new position.],
      limit: [Once per session. It moves only you and what you carry.],
    )],
  )]
  , kind: table
  )

// ART: A cloaked figure flattened against a wall as a lantern passes.
#art-fill(min: 6cm)[A cloaked figure flattened against a wall as a lantern passes.]
#colbreak()
=== 6. Never Misses
#quote(block: true)[
Sniper, archer, gunslinger: steady breath and a sharp eye.
]

- #strong[Tags:] #emph[steady breath];, #emph[eye like a hawk];, #emph[clumsy up close]
- #strong[PC link:] \"\[PC\] owes their life to a shot I made.\"

#figure(
  [#table(
    columns: (7%, 18%, 75%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Called Shot];], [#ability(
      trigger: [You succeed on a Shoot roll, including Success at a Cost.],
      cost: [No additional Power.],
      benefit: [Suppress one target tag that your shot can plausibly undermine for the rest of the scene.],
      limit: [Once per roll. Suppression removes only that tag's numerical bonus; it does not disable the asset, remove its other permissions, or prevent its use. In a conflict, disabling an asset requires Disarm or an ability that explicitly permits it.],
    )],
    [2a], [#strong[Over-watch];], [#ability(
      trigger: [An imposed status of tier 2 or less is about to hit an ally; or, in a conflict, covering fire can protect your side.],
      cost: [No additional cost.],
      benefit: [Cancel the status by shooting its source; declare it before the status applies. In conflicts, you may Defend with #strong[Shoot] when covering fire can protect your side.],
      limit: [The cancel is once per scene.],
    )],
    [2b], [#strong[Trick Shot];], [#ability(
      trigger: [You shoot past cover or angles, or shoot an object (cut a rope, hit a switch, ricochet).],
      cost: [No additional cost.],
      benefit: [Ignore harmful Situational Conditions from cover and awkward angles. Gain a free #strong[Extra Feat] when you shoot objects.],
      limit: [Normal Extra Feat permissions apply.],
    )],
    // PLAYTEST: R4, defines One Shot inside scripted conflicts.
    [3a], [#strong[One Shot];], [#ability(
      trigger: [You succeed on a Shoot Attack against a non-major NPC.],
      cost: [No additional cost.],
      benefit: [The Attack #strong[Takes them Out]. In a conflict, it removes that participant and 1 additional Disposition.],
      limit: [Once per session. Non-major NPCs only.],
    )],
    [3b], [#strong[★ Sniper\'s Patience];], [#ability(
      trigger: [You spend a scene setting up a shot (4-segment clock).],
      cost: [The setup scene. Fill the clock with preparation rolls (Notice, Stealth, Shoot) at 1 Power per segment (Advance). On a failed preparation roll, the GM's move can advance a danger: the target moves, a guard notices.],
      benefit: [Once the clock is full, your shot gets #strong[+2 bonus dice] for free and #strong[+2 Power] on a success.],
      limit: [That shot only.],
    )],
  )]
  , kind: table
  )

// ART: An archer drawing breath before a long shot across a valley.
#art-fill(min: 6cm)[An archer drawing breath before a long shot across a valley.]
#colbreak()
=== 7. Opens Every Lock
#quote(block: true)[
Locks, safes, firewalls, sealed doors: they\'re puzzles, and you love puzzles.
]

- #strong[Tags:] #emph[nothing stays closed];, #emph[thinks like an architect];, #emph[can\'t resist a challenge]
- #strong[PC link:] \"\[PC\] keeps me out of trouble, or tries to.\"

#figure(
  [#table(
    columns: (7%, 18%, 75%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    // PLAYTEST: Balance FO B7, rider added (overlaps Decipher).
    [1], [#strong[Bypass];], [#ability(
      trigger: [You roll against a lock, safe or security clock.],
      cost: [No additional cost.],
      benefit: [Before you roll, you know the clock's size and what failing will set off. Each success advances it #strong[1 extra segment].],
      limit: [Bonus segments advance that clock only (@foc-ability-limits).],
    )],
    [2a], [#strong[Back Door];], [#ability(
      trigger: [You use Create to establish access or leverage at your current location.],
      cost: [#strong[1 Power].],
      benefit: [Create the Truth #emph[I know a way in], naming the route or leverage.],
      limit: [Once per location. It gives access or leverage, not victory over an unrelated objective. Normal scope and duration apply.],
    )],
    // PLAYTEST: Balance FO B7, rider added (overlaps Escape Artist).
    [2b], [#strong[Trap Sense];], [#ability(
      trigger: [You would trigger a trap or alarm, you Resist a trap, or you warn allies of one in time.],
      cost: [The normal Resistance cost, reduced as below.],
      benefit: [You always notice traps and alarms before triggering them. Resisting traps costs #strong[0 on a Resistance result of 5+]. Allies you warn in time Resist that trap with #strong[Edge +1].],
      limit: [Allies gain the Edge bonus only against the trap you warned them about.],
    )],
    // PLAYTEST: B2, was two steps; Master of the Field capstone gives one.
    [3a], [#strong[Master Key];], [#ability(
      trigger: [You face a lock or security.],
      cost: [No additional cost.],
      benefit: [Ordinary locks open without a roll. Complex security is #strong[one Difficulty step lower].],
      limit: [An ordinary lock is a single mechanical barrier. Security with alarms, guards, magic or technology layered on it, or with its own clock, is complex. Difficulty reductions apply only against a Difficulty (@foc-ability-limits).],
    )],
    [3b], [#strong[★ Vault Breaker];], [#ability(
      trigger: [You declare a security layer already cracked.],
      cost: [No additional cost.],
      benefit: [Fill one security clock completely.],
      limit: [Once per mission.],
    )],
  )]
  , kind: table
  )
// ART: Steady hands working a lockpick into an ornate safe.
#art-fill(min: 6cm)[Steady hands working a lockpick into an ornate safe.]
#colbreak()
=== 8. Always Has an Escape Plan
#quote(block: true)[
You never walk into a room without knowing how to leave it.
]

- #strong[Tags:] #emph[knows every exit];, #emph[slippery];, #emph[runs first, thinks later]
- #strong[PC link:] \"\[PC\] was with me during my worst getaway.\"

#figure(
  [#table(
    columns: (7%, 18%, 75%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Exit Strategy];], [#ability(
      trigger: [You enter a new scene.],
      cost: [No additional cost.],
      benefit: [Ask one free Discover question about exits or escape routes.],
      limit: [One question per new scene.],
    )],
    // PLAYTEST: B1, was +3; matches At the Helm.
    [2a], [#strong[Clean Getaway];], [#ability(
      trigger: [A Chase conflict begins in which your side is fleeing.],
      cost: [No additional cost.],
      benefit: [Your side gains +2 starting Disposition. Before your side commits its first script, ask one free Discover question about the pursuers' route, method, or immediate weakness.],
      limit: [One question per conflict. Ask the question after setup is complete. It does not recalculate Superiority. The answer must concern something you can infer from the pursuit. It does not reveal a committed script. The Disposition bonus follows the normal starting-Disposition rules.],
    )],
    [2b], [#strong[Contin-gency];], [#ability(
      trigger: [Things go wrong and you reveal a prepared fallback.],
      cost: [No Weal needed.],
      benefit: [Establish a justified fallback (stashed gear, a getaway vehicle, a safe house) as a Truth, at whatever scale fits (Core Rules @core-scale). It lasts until the fallback is spent: the vehicle drives off, the gear is taken, the safe house is used or found.],
      limit: [Once per mission. It can't contradict resolved events, and it gives no Situational Condition rating or automatic escape.],
    )],
    [3a], [#strong[Not Here];], [#ability(
      trigger: [You would receive an imposed harmful status and can act.],
      cost: [#strong[1 Weal].],
      benefit: [Describe how you evade its source: cancel that status on yourself and move to a nearby position.],
      limit: [Once per scene. Disposition loss and other effects of the triggering action still apply.],
    )],
    [3b], [#strong[★ Dead Man\'s Switch];], [#ability(
      trigger: [You're captured or confined, and you declare a contingency.],
      cost: [Give the GM #strong[2 Woe].],
      benefit: [At the start of your next scene it creates an opening (you slip one restraint, an exit opens, or an established contact helps), and you may at once make one escape roll, even if confinement would normally prevent it. In a conflict, resolve it before the next exchange.],
      limit: [Once per session. Your statuses stay, and it doesn't revive you, recover confiscated gear, free companions or guarantee the roll.],
    )],
  )]
  , kind: table
  )
// ART: A thief slipping out a high window as the door bursts open.
#art-fill(min: 6cm)[A thief slipping out a high window as the door bursts open.]
]
