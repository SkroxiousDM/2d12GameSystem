#import "common.typ": *
  
#pagebreak()
== 3. Combat Focuses <foc-combat-focuses>
#columns(2, gutter: 6mm)[
=== 1. Never Leaves Anyone Behind
#quote(block: true)[
Loyal to a fault. You go back for the fallen, every time.
]

- #strong[Tags:] #emph[I\'ve got your back];, #emph[carry them out];, #emph[can\'t walk away]
- #strong[PC link:] \"I once failed to save someone. \[PC\] reminds me of them.\"

#figure(
  [#table(
    columns: (7%, 18%, 75%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Shield Bearer];], [#ability(
      trigger: [An ally next to you takes an imposed status. Use it before they Resist.],
      cost: [1 point from any pool.],
      benefit: [Reduce the status by #strong[1 tier].],
      limit: [Before their Resistance. Protected payments can't be reduced (Generic Playbooks @pb-ability-notation).],
    )],
    [2a], [#strong[Second Wind];], [#ability(
      trigger: [You succeed on a Defend and can reach a Taken Out ally.],
      cost: [#strong[2 Power], instead of recovering Disposition.],
      benefit: [Bring them back: reduce the status that took them out to #strong[tier 4]. They rejoin your side's rotation without an immediate turn.],
      limit: [Once per scene. Death, a settled defeat, other statuses and Scars stay.],
    )],
    [2b], [#strong[Cover];], [#ability(
      trigger: [You accept an injury to cancel Disposition loss from an Attack or Feint.],
      cost: [The accepted injury.],
      benefit: [Cancel #strong[1 additional] Disposition loss, up to the loss inflicted.],
      limit: [All normal injury-trade restrictions apply.],
    )],
    // PLAYTEST: B3, now needs a successful Defend or Maneuver in that volley.
    [3a], [#strong[No One Left];], [#ability(
      trigger: [Before a volley is revealed, you declare a coordinated withdrawal, and you or an ally succeed on a Defend or Maneuver in that volley.],
      cost: [You give up the contested objective unless it was escape.],
      benefit: [After that volley, your side escapes together, with any Taken Out allies you can reach and carry. The opposition gets any compatible part of its intent but can't capture or separate those you extract.],
      limit: [Once per session. No other compromise applies; injuries and paid costs stay.],
    )],
    [3b], [#strong[★ Living Wall];], [#ability(
      trigger: [An Attack or Feint would remove your side's Disposition, and you can physically protect the participants threatened by it. Declare this before an injury trade.],
      cost: [Take a tier-2 harmful physical Personal status as an accepted payment. It must follow from how you protect the side, hinder a relevant activity, and be new or worsen an existing status. Apply normal stacking.],
      benefit: [Reduce that action's Disposition loss by 2, to a minimum of 0.],
      limit: [Once per conflict. Your side can benefit from Living Wall only once against the same action. This is not an injury trade; one participant may still make the normal injury trade against the remaining loss.],
    )],
  )]
  , kind: table
  )
// ART: A veteran dragging a wounded comrade out of the line of fire.
#art-fill(min: 6cm)[A veteran dragging a wounded comrade out of the line of fire.]
#colbreak()
=== 2. Leads From the Front
#quote(block: true)[
Captain, chief, or sergeant: people follow you.
]

- #strong[Tags:] #emph[born to command];, #emph[they believe in me];, #emph[every loss is on me]
- #strong[PC link:] \"\[PC\] was the first person who ever followed my lead.\"

#figure(
  [#table(
    columns: (7%, 18%, 75%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Rally];], [#ability(
      trigger: [You rally allies who can hear you.],
      cost: [1 Weal.],
      benefit: [Restore #strong[2 points] to one pool of every ally who can hear you.],
      limit: [Once per scene.],
    )],
    [2a], [#strong[Battle Plan];], [#ability(
      trigger: [A conflict starts, after the opposing side commits its first script and before yours.],
      cost: [No additional cost.],
      benefit: [Look at #strong[one] of its actions.],
      limit: [Its first script only.],
    )],
    [2b], [#strong[Lead by Example];], [#ability(
      trigger: [You succeed with #strong[3+ Power].],
      cost: [No additional cost.],
      benefit: [The next ally who acts toward the same goal gets a #strong[free bonus die].],
      limit: [The next ally only. Unused, it ends at the end of the scene. The bonus-dice cap applies (@foc-ability-limits).],
    )],
    [3a], [#strong[★ Warband];], [#ability(
      trigger: [Your loyal crew (a group with 3 tags) helps or acts.],
      cost: [No additional cost.],
      benefit: [It gives free Help, holds a position or acts as one group, and takes statuses as a single target (@foc-ability-limits).],
      limit: [Free Help once per scene. It is one participant in your side's script and rotation (@foc-ability-limits).],
    )],
    [3b], [#strong[Unbreak-able Line];], [#ability(
      trigger: [Your side's Disposition would drop to 0.],
      cost: [You take a #strong[tier-2 Personal status] as an accepted payment. You name it (#emph[exhausted-2], #emph[battered-2]) and the GM approves it. It recovers under the normal rules (Core Rules @core-rest-recovery–@core-treatment-healing[]).],
      benefit: [Your side's Disposition stays at #strong[1].],
      limit: [Once per conflict for your side, however many participants have this ability. It prevents defeat from reaching 0 Disposition, not defeat because nobody can continue pursuing the objective. It cannot prevent a setup defeat.],
    )],
  )]
  , kind: table
  )

// ART: A captain at the front of a charge, banner raised.
#art-fill(min: 6cm)[A captain at the front of a charge, banner raised.]
#colbreak()
=== 3. Masters a Weapon
#quote(block: true)[
Years of drill with one weapon: a blade, a rifle, a staff, bare fists.
]

- #strong[Tags:] #emph[one with my \[weapon\]];, #emph[drilled every day];, #emph[lost without it]
- #strong[PC link:] \"\[PC\] once saw me lose a duel, and kept it secret.\"

#figure(
  [#table(
    columns: (7%, 18%, 75%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Signature Style];], [#ability(
      trigger: [You use a weapon of your chosen type.],
      cost: [No additional cost.],
      benefit: [That weapon's tag may supply #strong[+1 Power above the normal +2 cap (maximum 3 Tag Power)], and it gains a second conflict action tag (e.g. a sword also gives +1 Defend).],
      limit: [Choose the weapon type when you take this ability. Only that weapon's tag exceeds the cap.],
    )],
    [2a], [#strong[Riposte];], [#ability(
      trigger: [In a Fight conflict, you win a versus roll with Defend.],
      cost: [No additional cost.],
      benefit: [You may spend any of that Power to remove the opposing side's Disposition instead of restoring your side's.],
      limit: [Fight conflicts only.],
    )],
    [2b], [#strong[Disarming Master];], [#ability(
      trigger: [You use the Disarm maneuver, or Weaken an opponent outside a conflict.],
      cost: [Disarm costs #strong[2 Power] instead of 3.],
      benefit: [The reduced Disarm price. Outside conflicts, Weaken can strip an opponent's weapon tag for the scene.],
      limit: [Other reductions don't lower Disarm further. A stripped weapon tag returns at scene end.],
    )],
    [3a], [#strong[Perfect Strike];], [#ability(
      trigger: [You roll with your weapon. Declare it before spending Power or applying consequences.],
      cost: [No additional cost.],
      benefit: [Turn one kept die into a #strong[12]. If that creates doubles, apply them.],
      limit: [Once per scene.],
    )],
    [3b], [#strong[★ Weapon Saint];], [#ability(
      trigger: [You succeed on an Attack or Defend using your chosen weapon type.],
      cost: [No additional cost.],
      benefit: [Gain +1 Power. Choose one additional tag for your signature weapon, within the normal tag cap. With Module A: Your signature weapon is an artifact. This ability is its special ability; it does not grant another. It requires no attunement Refresh and never depletes. Agree its artifact quirk with the GM when it becomes an artifact. Never depletes means no depletion roll is required. Waiving attunement Refresh does not waive the normal attunement-slot limit when attunement is required.],
      limit: [The additional Power applies once per exchange in a scripted conflict, or once per scene outside one. It permits only Effects available to that action. Choose the additional weapon tag when you take this ability.],
    )],
  )]
  , kind: table
  )

// ART: A fighter mid-drill with one well-worn weapon.
#art-fill(min: 6cm)[A fighter mid-drill with one well-worn weapon.]
#colbreak()
=== 4. Fights Dirty
#quote(block: true)[
Honour is for people who can afford to lose.
]

- #strong[Tags:] #emph[no rules in a fight];, #emph[eye for a cheap shot];, #emph[no one trusts me in a fair fight]
- #strong[PC link:] \"I taught \[PC\] that winning is the only thing that matters. They\'re still deciding if I was right.\"

#figure(
  [#table(
    columns: (7%, 18%, 75%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Cheap Shot];], [#ability(
      trigger: [You make an Attack.],
      cost: [#strong[1 Power].],
      benefit: [As part of the Attack, the target also takes a tier-1 Personal status from the dirty trick (#emph[blinded-1], #emph[winded-1]). In a conflict, this is in addition to the Disposition the Attack removes.],
      limit: [Once per scene. Tier 1 only; the target can Resist it normally.],
    )],
    [2a], [#strong[Improvised Arsenal];], [#ability(
      trigger: [You use anything in reach as a weapon: chairs, bottles, tools.],
      cost: [No load (Generic Playbooks @pb-load).],
      benefit: [It gives #strong[+1 Attack or +1 Maneuver] as an action tag.],
      limit: [Within the tag cap.],
    )],
    [2b], [#strong[Kick Them While They\'re Down];], [#ability(
      trigger: [You Attack a target with a harmful status of tier 2+.],
      cost: [No additional cost.],
      benefit: [Gain #strong[+1 Power] on the Attack.],
      limit: [Only on a Success or Success at a Cost; it can't turn a failure into a success.],
    )],
    [3a], [#strong[Every Trick in the Book];], [#ability(
      trigger: [You succeed on a Feint in a Fight conflict.],
      cost: [No additional cost.],
      benefit: [The Feint removes #strong[1 additional Disposition].],
      limit: [Fight conflicts only.],
    )],
    [3b], [#strong[★ Nothing Is Off-Limits];], [#ability(
      trigger: [You declare a hazard Truth that was already there (#emph[Gas Leak], #emph[Rotten Floor], #emph[Loose Cargo]).],
      cost: [No additional cost.],
      benefit: [Your next roll that uses it gets a #strong[free Extra Feat].],
      limit: [Once per session. The Extra Feat applies to your next roll that uses it only.],
    )],
  )]
  , kind: table
  )
// ART: A brawler flinging sand into an opponent's eyes.
#art-fill(min: 6cm)[A brawler flinging sand into an opponent's eyes.]
]
