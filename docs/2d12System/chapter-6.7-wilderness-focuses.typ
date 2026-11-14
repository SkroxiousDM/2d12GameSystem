#import "common.typ": *

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
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Handler];], [Calm or command ordinary animals with Empathy. If you have an Animal Companion, it gains #strong[+1 power tag];.],
    [2a], [#strong[Pack Tactics];], [Your animals give #strong[free Help] once per scene.],
    [2b], [#strong[Beast Lore];], [Once per scene, Discover a creature\'s weakness tag without rolling.],
    [3a], [#strong[★ The Pack];], [Gain a group of animals (hounds, ravens, horses) with 2 power tags and 1 weakness. It acts as one group, not one per animal, and takes statuses as a single target (§1.3).],
    // PLAYTEST: B1, was +3; matches At the Helm.
    [3b], [#strong[Trusted Mount];], [Gain a superb mount (or upgrade one). In Chase conflicts your side gets #strong[+2 starting Disposition];, and the mount carries 3 extra load.],
  )]
  , kind: table
  )

=== 18. Charts the Unknown
#quote(block: true)[
Explorer, navigator, or surveyor drawn to the blank parts of the map.
]

- #strong[Power tags:] #emph[always knows north];, #emph[mapmaker\'s eye]
- #strong[Weakness tag:] #emph[can\'t resist the horizon]
- #strong[PC link:] \"\[PC\] backed my first expedition.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Carto-grapher];], [Any area you\'ve travelled becomes a #strong[map] (a permanent Truth). It lowers travel Difficulty there by one step.],
    [2a], [#strong[Shortcut];], [Once per journey, skip one leg entirely (no rolls, no Supplies spent) (Module B).],
    [2b], [#strong[First Contact];], [Your first Persuade or Empathy roll with a new people or culture gets a #strong[free bonus die];. The normal bonus-dice cap applies.],
    [3a], [#strong[Discoverer];], [Once per session, discover a new site (Module C). You define #strong[one of its three Truths];.],
    [3b], [#strong[★ Lands Unknown];], [When the party enters an uncharted region, you name #strong[one Region Truth] (Module C).],
  )]
  , kind: table
  )
  
=== 19. Lives Off the Land
#quote(block: true)[
Survivalist, forager, or homesteader: you need nothing the world doesn\'t give.
]

- #strong[Power tags:] #emph[nothing goes to waste];, #emph[knows what\'s edible]
- #strong[Weakness tag:] #emph[distrusts civilization]
- #strong[PC link:] \"I taught \[PC\] how to survive their first winter.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Forager\'s Eye];], [The party loses Supplies only #strong[every other leg];. You clear #emph[Hungry & Thirsty] with an Easy Survival roll (Module B).],
    [2a], [#strong[Shelter Builder];], [Allies who rest in a camp you built each clear #strong[one Grind condition] (Module B).],
    [2b], [#strong[Natural Remedies];], [Use Survival in place of Medicine for Restore effects, using what you gather.],
    // PLAYTEST: R3, replaces the undefined personal Grind clock.
    [3a], [#strong[Hardened];], [You ignore #emph[Exposed] and the first Grind condition you\'d take each journey (Module B).],
    [3b], [#strong[★ Living Larder];], [The party never runs out of Supplies in any wild terrain that supports life (Module B).],
  )]
  , kind: table
  )

=== 20. Was Born Behind the Wheel
#quote(block: true)[
Driver, pilot, sailor, or rider: you and your vehicle are one.
]

- #strong[Power tags:] #emph[my rig is part of me];, #emph[nerves of steel at speed]
- #strong[Weakness tag:] #emph[can\'t leave her behind]
- #strong[PC link:] \"\[PC\] has ridden shotgun since day one.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Signature Vehicle];], [Gain a vehicle (horse and cart, truck, canoe, starship) with #strong[2 power tags];, or give your existing one 2 more. It takes no turns of its own.],
    [2a], [#strong[Stunt Driver];], [In Chase conflicts, your successful Maneuvers gain #strong[+1 Power];.],
    [2b], [#strong[Grease Monkey];], [Repair your vehicle in the field with Craft. Restore on vehicle statuses costs #strong[1 Power per 2 tiers];.],
    [3a], [#strong[Ace];], [Once per scene, reroll a Drive/Pilot roll for free. Declare it after reading the dice, before spending Power or applying consequences.],
    [3b], [#strong[★ Legendary Ride];], [Your vehicle becomes an #strong[artifact] (Module A) with one special ability (ram, jump, stealth mode, impossible speed). It costs no attunement Refresh.],
  )]
  , kind: table
  )
]
