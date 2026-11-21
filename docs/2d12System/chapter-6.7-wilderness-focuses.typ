#import "common.typ": *
#pagebreak() 
== 7. Wilderness & Travel Focuses <foc-wilderness-travel-focuses>
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
      limit: [Once per scene. Your animals are a trained animal you own (recorded as gear), animals you're commanding this scene, or an Animal Companion.],
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
      benefit: [It acts as one group, not one per animal, and takes statuses as a single target (@foc-ability-limits).],
      limit: [One participant in your side's script and rotation (@foc-ability-limits).],
    )],
    // PLAYTEST: B1, was +3; matches At the Helm.
    [3b], [#strong[Trusted Mount];], [#ability(
      trigger: [You ride your mount, or a Chase conflict begins.],
      cost: [No additional cost.],
      benefit: [Gain a superb mount (or upgrade one); it carries 3 extra load. In Chase conflicts your side gets #strong[+2 starting Disposition].],
      limit: [A flat starting-Disposition bonus (@foc-ability-limits).],
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
    [1], [#strong[Car­tog­ra­pher];], [#ability(
      trigger: [You travel in an area you've travelled before.],
      cost: [No additional cost.],
      benefit: [Any area you've travelled becomes a #strong[map] (a permanent Truth). It lowers travel Difficulty there by one step.],
      limit: [Only in the mapped area.],
    )],
    [2a], [#strong[Shortcut];], [#ability(
      trigger: [You succeed on a navigation roll while leading the party toward an established destination.],
      cost: [No additional cost.],
      benefit: [Gain one free Extra Feat related to the route: avoid a detour, bring the party's equipment through, or reach a useful approach. With Module B: If the roll advances the Journey clock, also advance it by 1 segment.],
      limit: [Once per scene. It must follow from the route you found. It cannot bypass an unresolved conflict or remove an obstacle that requires a different means of passage.],
    )],
    [2b], [#strong[First Contact];], [#ability(
      trigger: [You make your first Persuade or Empathy roll when establishing relations with a community or organised group your party has not dealt with before.],
      cost: [No additional cost.],
      benefit: [Gain one free bonus die.],
      limit: [Once per community or group, not once per member. A different representative or location does not renew the benefit. The normal bonus-dice cap applies.],
    )],
    [3a], [#strong[Dis­cov­er­er];], [#ability(
      trigger: [You first explore an unfamiliar location.],
      cost: [No additional cost.],
      benefit: [Ask two free Discover questions about its routes, hazards, or useful resources. Before the scene ends, gain +1 Power on one later successful action that directly exploits an answer. With Module C: Instead of asking the questions, define one previously unestablished Site Truth consistent with what has already been discovered. The later-action bonus may exploit that Truth instead.],
      limit: [Once per location, not once per room or visit. The answers concern evidence you can discover there; they do not reveal unrelated secrets or a committed script. The bonus permits no otherwise unavailable Effects.],
    )],
    [3b], [#strong[★ Lands Unknown];], [#ability(
      trigger: [The party enters an uncharted region.],
      cost: [No additional cost.],
      benefit: [Establish one previously unknown regional feature as a Region Truth: a pass, settlement, refuge, navigable waterway, or useful natural resource. State where it lies relative to the party and how its existence becomes known. With Module C: Record the feature among the region's Truths and use the module's normal procedures for later changes.],
      limit: [Once per session and once per region. It cannot contradict established facts, remove an established threat, grant ownership or loyalty, or place the party at the feature automatically. Reaching or using it follows the normal rules.],
    )],
  )]
  , kind: table
  )
  
// ART: A surveyor sketching a map at the edge of a blank coastline.
#art-fill(min: 6cm)[A surveyor sketching a map at the edge of a blank coastline.]
#colbreak()
=== 19. Lives Off the Land
Requires Module B. This Focus uses the Grind, hardships, and Supplies throughout and is unavailable when that module is not used.

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
      benefit: [Each clears #strong[one Grind hardship] (Module B).],
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
      trigger: [You would take #emph[Exposed] or a Grind hardship on a journey (Module B).],
      cost: [No additional cost.],
      benefit: [Ignore #emph[Exposed] and the first Grind hardship you'd take each journey.],
      limit: [The first Grind hardship each journey.],
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
      benefit: [Reroll the Drive/Pilot roll and keep the better result.],
      limit: [Once per scene.],
    )],
    [3b], [#strong[★ Legendary Ride];], [#ability(
      trigger: [You succeed on a Drive/Pilot action using your signature vehicle, including when another ability lets you substitute a different skill.],
      cost: [No additional cost.],
      benefit: [Gain +1 Power. With Module A: Your signature vehicle is an artifact. The bonus Power is its special ability, not an additional ability. It requires no attunement Refresh. Other artifact rules apply.],
      limit: [Once per exchange in a scripted conflict, or once per scene outside one. The vehicle must directly contribute to the action. This grants no additional turn or otherwise unavailable Effect.],
    )],
  )]
  , kind: table
  )
// ART: A battered vehicle skidding around a mountain bend.
#art-fill(min: 6cm)[A battered vehicle skidding around a mountain bend.]
]
