#import "common.typ": *

== 3. Combat Focuses
#columns(2, gutter: 6mm)[
=== 1. Never Leaves Anyone Behind
#quote(block: true)[
Loyal to a fault. You go back for the fallen, every time.
]

- #strong[Power tags:] #emph[I\'ve got your back];, #emph[carry them out]
- #strong[Weakness tag:] #emph[can\'t walk away]
- #strong[PC link:] \"I once failed to save someone. \[PC\] reminds me of them.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Shield Bearer];], [When an ally next to you takes an imposed status, spend 1 point from any pool to reduce it by #strong[1 tier] before they Resist.],
    [2a], [#strong[Second Wind];], [Once per scene, when you succeed on a Defend and can reach a Taken Out ally, spend #strong[2 Power] (instead of recovering Disposition) to bring them back: reduce the status that took them out to #strong[tier 4];. They rejoin your side\'s rotation without an immediate turn. Death, a settled defeat, other statuses and Scars stay.],
    [2b], [#strong[Cover];], [When you accept an injury to cancel Disposition loss from an Attack or Feint, cancel #strong[1 additional] Disposition loss, up to the loss inflicted. All normal injury-trade restrictions apply.],
    // PLAYTEST: B3, now needs a successful Defend or Maneuver in that volley.
    [3a], [#strong[No One Left];], [Once per session, before a volley is revealed, declare a coordinated withdrawal. After that volley, if you or an ally succeeded on a Defend or Maneuver in it, your side escapes together, with any Taken Out allies you can reach and carry. You give up the contested objective unless it was escape; the opposition gets any compatible part of its intent but can\'t capture or separate those you extract. No other compromise applies; injuries and paid costs stay.],
    [3b], [#strong[★ Living Wall];], [Once per scene, until your next action, imposed harm aimed at allies within reach that you can intercept hits you instead. Redirect it before their Resistance and use your own reduction; Resist each with Edge +1. Area effects that already hit you both aren\'t redirected.],
  )]
  , kind: table
  )

=== 2. Leads From the Front
#quote(block: true)[
Captain, chief, or sergeant: people follow you.
]

- #strong[Power tags:] #emph[born to command];, #emph[they believe in me]
- #strong[Weakness tag:] #emph[every loss is on me]
- #strong[PC link:] \"\[PC\] was the first person who ever followed my lead.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Rally];], [Once per scene, spend 1 Momentum to restore #strong[2 points] to one pool of every ally who can hear you.],
    [2a], [#strong[Battle Plan];], [At the start of a conflict, after the opposing side commits its first script and before yours, look at #strong[one] of its actions.],
    [2b], [#strong[Lead by Example];], [When you succeed with #strong[3+ Power];, the next ally who acts toward the same goal gets a #strong[free bonus die];.],
    [3a], [#strong[★ Warband];], [Gain a loyal crew (a group with 2 power tags and 1 weakness). It gives free Help once per scene, holds a position or acts as one group, and takes statuses as a single target (§1.3).],
    [3b], [#strong[Unbreak-able Line];], [Once per conflict, when your side\'s Disposition would drop to 0, it stays at #strong[1] and you take a tier-2 status as an accepted payment.],
  )]
  , kind: table
  )

=== 3. Masters a Weapon
#quote(block: true)[
Years of drill with one weapon: a blade, a rifle, a staff, bare fists.
]

- #strong[Power tags:] #emph[one with my \[weapon\]];, #emph[drilled every day]
- #strong[Weakness tag:] #emph[lost without it]
- #strong[PC link:] \"\[PC\] once saw me lose a duel, and kept it secret.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Signature Style];], [Choose a weapon type. That weapon\'s tag may add #strong[+1 above the normal +2 cap (maximum +3 from tags)];, and it gains a second conflict action tag (e.g. a sword also gives +1 Defend).],
    [2a], [#strong[Riposte];], [In Fight conflicts, when you win a versus roll with Defend, you may spend any of that Power to remove the opposing side\'s Disposition instead of restoring your side\'s.],
    [2b], [#strong[Disarming Master];], [The Disarm maneuver costs #strong[2 Power] instead of 3; other reductions don\'t lower it further. Outside conflicts, Weaken can strip an opponent\'s weapon tag for the scene.],
    [3a], [#strong[Perfect Strike];], [Once per scene, after rolling with your weapon, turn one kept die into a #strong[12];. If that creates doubles, apply them. Declare it before spending Power or applying consequences.],
    [3b], [#strong[★ Weapon Saint];], [Your weapon becomes an #strong[artifact] (Module A) with one extra power tag and an ability you design with the GM. It never depletes and costs no attunement Refresh.],
  )]
  , kind: table
  )

=== 4. Fights Dirty
#quote(block: true)[
Honour is for people who can afford to lose.
]

- #strong[Power tags:] #emph[no rules in a fight];, #emph[eye for a cheap shot]
- #strong[Weakness tag:] #emph[no one trusts me in a fair fight]
- #strong[PC link:] \"I taught \[PC\] that winning is the only thing that matters. They\'re still deciding if I was right.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Cheap Shot];], [Once per scene, as part of an Attack, Create a Truth (#emph[sand in the eyes];, #emph[low blow];) for #strong[1 Power];. This permits only the Create purchase on that Attack.],
    [2a], [#strong[Improvised Arsenal];], [Anything in reach is a weapon for you: chairs, bottles, tools. It gives #strong[+1 Attack or +1 Maneuver] as an action tag (within the tag cap) and costs no load (Generic Playbooks §2.1).],
    [2b], [#strong[Kick Them While They\'re Down];], [Against a target with a harmful status of tier 2+, gain #strong[+1 Power] on Attack.],
    [3a], [#strong[Every Trick in the Book];], [In Fight conflicts, your successful Feints remove #strong[1 additional Disposition];.],
    [3b], [#strong[★ Nothing Is Off-Limits];], [Once per session, declare a hazard Truth that was already there (#emph[gas leak];, #emph[rotten floor];, #emph[loose cargo];). Your next roll that uses it gets a #strong[free Extra Feat];.],
  )]
  , kind: table
  )
]
