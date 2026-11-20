#import "common.typ": *
#pagebreak() 
== 7. Wilderness & Travel Focuses
#columns(2, gutter: 6mm)[
=== 17. Runs With the Pack
#quote(block: true)[
Beast handler, rider, falconer, or dog-musher.
]

- #strong[Power tags:] #emph[animals trust me];, #emph[calm voice]
- #strong[Weakness tag:] #emph[better with animals than people]
- #strong[PC link:] \"\[PC\] is the only person my animals like.\"

#figure(
  [#table(
    columns: (7%, 18%, 75%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Handler];], [#ability(
      trigger: [You calm or command ordinary animals, or you have an Animal Companion.],
      cost: [No additional cost.],
      benefit: [Calm or command ordinary animals with Empathy. An Animal Companion gains #strong[+1 power tag].],
      limit: [Ordinary animals only.],
    )],
    [2a], [#strong[Pack Tactics];], [#ability(
      trigger: [Your animals Help you.],
      cost: [No additional cost.],
      benefit: [They give #strong[free Help].],
      limit: [Once per scene.],
    )],
    [2b], [#strong[Beast Lore];], [#ability(
      trigger: [You study a creature.],
      cost: [No additional cost.],
      benefit: [Discover its weakness tag without rolling.],
      limit: [Once per scene.],
    )],
    [3a], [#strong[★ The Pack];], [#ability(
      trigger: [Your group of animals (hounds, ravens, horses), with 2 power tags and 1 weakness, acts.],
      cost: [No additional cost.],
      benefit: [It acts as one group, not one per animal, and takes statuses as a single target (§1.3).],
      limit: [One participant in your side's script and rotation (§1.3).],
    )],
    // PLAYTEST: B1, was +3; matches At the Helm.
    [3b], [#strong[Trusted Mount];], [#ability(
      trigger: [You ride your mount, or a Chase conflict begins.],
      cost: [No additional cost.],
      benefit: [Gain a superb mount (or upgrade one); it carries 3 extra load. In Chase conflicts your side gets #strong[+2 starting Disposition].],
      limit: [A flat starting-Disposition bonus (§1.3).],
    )],
  )]
  , kind: table
  )

// ART: A musher and dog team racing across a frozen lake.
#art-fill(min: 6cm)[A musher and dog team racing across a frozen lake.]
#colbreak()
=== 18. Charts the Unknown
#quote(block: true)[
Explorer, navigator, or surveyor drawn to the blank parts of the map.
]

- #strong[Power tags:] #emph[always knows north];, #emph[mapmaker\'s eye]
- #strong[Weakness tag:] #emph[can\'t resist the horizon]
- #strong[PC link:] \"\[PC\] backed my first expedition.\"

#figure(
  [#table(
    columns: (7%, 18%, 75%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Carto-grapher];], [#ability(
      trigger: [You travel in an area you've travelled before.],
      cost: [No additional cost.],
      benefit: [Any area you've travelled becomes a #strong[map] (a permanent Truth). It lowers travel Difficulty there by one step.],
      limit: [Only in the mapped area.],
    )],
    [2a], [#strong[Shortcut];], [#ability(
      trigger: [You're on a journey (Module B).],
      cost: [No additional cost.],
      benefit: [Skip one leg entirely (no rolls, no Supplies spent).],
      limit: [Once per journey.],
    )],
    [2b], [#strong[First Contact];], [#ability(
      trigger: [You make your first Persuade or Empathy roll with a new people or culture.],
      cost: [No additional cost.],
      benefit: [Gain a #strong[free bonus die].],
      limit: [The first roll only. The normal bonus-dice cap applies.],
    )],
    [3a], [#strong[Discoverer];], [#ability(
      trigger: [You discover a new site (Module C).],
      cost: [No additional cost.],
      benefit: [You define #strong[one of its three Truths].],
      limit: [Once per session.],
    )],
    [3b], [#strong[★ Lands Unknown];], [#ability(
      trigger: [The party enters an uncharted region.],
      cost: [No additional cost.],
      benefit: [Name #strong[one Region Truth] (Module C).],
      limit: [No additional limit.],
    )],
  )]
  , kind: table
  )
  
// ART: A surveyor sketching a map at the edge of a blank coastline.
#art-fill(min: 6cm)[A surveyor sketching a map at the edge of a blank coastline.]
#colbreak()
=== 19. Lives Off the Land
#quote(block: true)[
Survivalist, forager, or homesteader: you need nothing the world doesn\'t give.
]

- #strong[Power tags:] #emph[nothing goes to waste];, #emph[knows what\'s edible]
- #strong[Weakness tag:] #emph[distrusts civilization]
- #strong[PC link:] \"I taught \[PC\] how to survive their first winter.\"

#figure(
  [#table(
    columns: (7%, 18%, 75%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Forager\'s Eye];], [#ability(
      trigger: [The party travels (Module B), or you clear #emph[Hungry & Thirsty].],
      cost: [No additional cost.],
      benefit: [The party loses Supplies only #strong[every other leg]. You clear #emph[Hungry & Thirsty] with an Easy Survival roll.],
      limit: [Needs Module B.],
    )],
    [2a], [#strong[Shelter Builder];], [#ability(
      trigger: [Allies rest in a camp you built.],
      cost: [No additional cost.],
      benefit: [Each clears #strong[one Grind condition] (Module B).],
      limit: [Needs Module B.],
    )],
    [2b], [#strong[Natural Remedies];], [#ability(
      trigger: [You use a Restore effect.],
      cost: [No additional cost.],
      benefit: [Use Survival in place of Medicine.],
      limit: [Using what you gather.],
    )],
    // PLAYTEST: R3, replaces the undefined personal Grind clock.
    [3a], [#strong[Hardened];], [#ability(
      trigger: [You would take #emph[Exposed] or a Grind condition on a journey (Module B).],
      cost: [No additional cost.],
      benefit: [Ignore #emph[Exposed] and the first Grind condition you'd take each journey.],
      limit: [The first Grind condition each journey.],
    )],
    [3b], [#strong[★ Living Larder];], [#ability(
      trigger: [The party is in wild terrain that supports life (Module B).],
      cost: [No additional cost.],
      benefit: [The party never runs out of Supplies.],
      limit: [Only in wild terrain that supports life.],
    )],
  )]
  , kind: table
  )

// ART: A forager kneeling by a fire with a basket of roots and berries.
#art-fill(min: 6cm)[A forager kneeling by a fire with a basket of roots and berries.]
#colbreak()
=== 20. Was Born Behind the Wheel
#quote(block: true)[
Driver, pilot, sailor, or rider: you and your vehicle are one.
]

- #strong[Power tags:] #emph[my rig is part of me];, #emph[nerves of steel at speed]
- #strong[Weakness tag:] #emph[can\'t leave her behind]
- #strong[PC link:] \"\[PC\] has ridden shotgun since day one.\"

#figure(
  [#table(
    columns: (7%, 18%, 75%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Signature Vehicle];], [#ability(
      trigger: [You use your vehicle (horse and cart, truck, canoe, starship).],
      cost: [No additional cost.],
      benefit: [Gain a vehicle with #strong[2 power tags], or give your existing one 2 more.],
      limit: [It takes no turns of its own.],
    )],
    [2a], [#strong[Stunt Driver];], [#ability(
      trigger: [You succeed on a Maneuver in a Chase conflict.],
      cost: [No additional cost.],
      benefit: [Gain #strong[+1 Power].],
      limit: [Chase conflicts only.],
    )],
    [2b], [#strong[Grease Monkey];], [#ability(
      trigger: [You repair your vehicle in the field, or Restore vehicle statuses.],
      cost: [Restore on vehicle statuses costs #strong[1 Power per 2 tiers].],
      benefit: [Repair your vehicle in the field with Craft, at the reduced Restore price.],
      limit: [Your vehicle only.],
    )],
    [3a], [#strong[Ace];], [#ability(
      trigger: [You read the dice on a Drive/Pilot roll. Declare it before spending Power or applying consequences.],
      cost: [Free.],
      benefit: [Reroll the Drive/Pilot roll.],
      limit: [Once per scene.],
    )],
    [3b], [#strong[★ Legendary Ride];], [#ability(
      trigger: [You use your vehicle.],
      cost: [No attunement Refresh.],
      benefit: [Your vehicle becomes an #strong[artifact] (Module A) with one special ability (ram, jump, stealth mode, impossible speed).],
      limit: [Needs Module A.],
    )],
  )]
  , kind: table
  )
// ART: A battered vehicle skidding around a mountain bend.
#art-fill(min: 6cm)[A battered vehicle skidding around a mountain bend.]
]
