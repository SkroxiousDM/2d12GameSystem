#import "common.typ":*

#pagebreak(weak: true)
== 7. Explorator <pb-explorator>
#playbook-art-side("05-explorator.jpg", "Explorator playbook character art")[
#quote(block: true)[
At home where the map ends. Rangers, hunters, pilots, guides, explorers, scouts, voyageurs.
]

#figure(
  [#table(
    columns: (25%, 75%),
    align: (auto,auto,),
    [#strong[Base pools (Sōm / Mēt / Psy / Pne)];], [11 / 11 / 7 / 7],
    [#strong[Edge];], [Sōma 1, Mētis 1, plus 1 in any pool],
    [#strong[Anchor skill];], [Survival],
    [#strong[Suggested skills];], [+4 Survival · +3 Notice, Shoot · +2 Athletics, Endure, Drive/Pilot · +1 Stealth, Medicine, Lore, Fight],
    [#strong[XP trigger];], [Address a challenge with endurance, travel, or knowledge of the land],
  )]
  , kind: table
  )

#strong[Playbook tags (choose 2):] #emph[reads the weather] · #emph[never lost] · #emph[sharp-eyed hunter] · #emph[tireless] · #emph[at home in the wild] · #emph[steady at the helm]
]

=== 7.1 Special Abilities <pb-explorator-special-abilities>
#figure(
  [#table(
    columns: (5%, 13%, 82%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    // PLAYTEST: Pathfinder and Forager core fallbacks when Module B is not used.
    [1], [#strong[Pathfinder];], [#ability(
      trigger: [As Guide (Module B), you spend Power on Make Time; without Module B, you advance a travel or pursuit clock. Also, a harmful terrain Situational Condition applies during a leg.],
      cost: [No additional cost.],
      benefit: [Each Power spent on Make Time advances the Journey clock #strong[1 extra segment]; without Module B, add 1 extra segment to any travel or pursuit clock you advance. Ignore that terrain Condition's penalty.],
      limit: [One terrain Condition per leg; without Module B, each travel or pursuit clock counts as one leg.],
    )],
    [2], [#strong[Forager];], [#ability(
      trigger: [As Quartermaster (Module B), you succeed; without Module B, you succeed on a foraging roll.],
      cost: [No additional cost.],
      benefit: [With Module B, clear #emph[Hungry & Thirsty] for the whole party and gain #strong[+1 Supplies] for free. Without it, clear a hunger or thirst status for the whole party.],
      limit: [No additional limit.],
    )],
    [3], [#strong[Tracker];], [#ability(
      trigger: [You buy Discover while tracking or reading signs.],
      cost: [The normal Discover cost.],
      benefit: [Each Discover gives #strong[two answers].],
      limit: [No additional limit.],
    )],
    [4], [#strong[Hunter\'s Eye];], [#ability(
      trigger: [You roll Shoot.],
      cost: [No additional cost.],
      benefit: [Ignore one harmful Situational Condition from cover, distance or weather. At long range, gain #strong[+1 Power] on a success.],
      limit: [One ignored Condition per roll. The Power applies only at long range, on a success.],
    )],
    [5], [#strong[Ambusher];], [#ability(
      trigger: [A Fight conflict begins in wild terrain and you had time to prepare.],
      cost: [No additional cost.],
      benefit: [Your side starts with #strong[+2 Disposition], and your first-volley Attack resolves as independent whatever the opponent does.],
      limit: [The Disposition bonus is a flat modifier (@pb-ability-notation). Only your first-volley Attack resolves as independent.],
    )],
    // PLAYTEST: At the Helm Chase bonus lowered from +3 to +2 to match Ambusher.
    [6], [#strong[At the Helm];], [#ability(
      trigger: [You roll Drive/Pilot with your own vehicle or boat, or a Chase conflict begins.],
      cost: [No additional cost.],
      benefit: [Those rolls may use Survival. Your vehicle gains one power tag (#emph[swift], #emph[rugged], #emph[nimble]). In Chase conflicts, your side gets #strong[+2 starting Disposition].],
      limit: [Your own vehicle or boat only. The Disposition bonus is a flat modifier (@pb-ability-notation).],
    )],
    [7], [#strong[★ Animal Companion];], [#ability(
      trigger: [You call on your companion (hound, hawk, horse; a drone in sci-fi), which has 2 power tags and 1 weakness.],
      cost: [No additional cost.],
      benefit: [Your companion scouts, carries messages or objects it can handle, and performs tasks appropriate to its form. It can act using your Survival. Once per scene, it can instead Help your roll without paying the normal pool-point cost.],
      limit: [Free Help still requires relevant assistance and shares the consequences. Acting in a conflict uses one place in your side's script and rotation; the companion has no separate Disposition or injury trade. It takes statuses normally, and tier 6 makes it unavailable until downtime.],
    )],
    // PLAYTEST: Balance B3, ★ kept; always-on forecast added to the once-per-session Truth.
    [8], [#strong[★ Weather Sense];], [#ability(
      trigger: [You declare the next scene's weather or terrain, or the party is about to plan the next scene.],
      cost: [No additional cost.],
      benefit: [Declare the #strong[weather or terrain] for the next scene as a Truth (#emph[Thick Fog], #emph[Rising River], #emph[Clear Skies]); if it also helps or hinders rolls, you also set its helpful or harmful Situational Condition, rating 1 to 4. You also always know the next scene's weather and terrain before the party plans it, including whether a travel leg is a hard stretch (Module B).],
      limit: [The declaration is once per session, and its Condition is at most rating 4. The forecast always applies.],
    )],
    [◆], [#strong[One With the Wild];], [#ability(
      trigger: [You're in wilderness, or your party flees through wilderness. Declare the escape before the next exchange is scripted.],
      cost: [No additional cost.],
      benefit: [In wilderness, the party's Grind clock (Module B) is #strong[2 segments larger] and you can't be surprised. While fleeing, declare that you're losing the pursuit: if you can lead and everyone escaping can travel or be carried, the pursuit ends with no roll; you reach safety and the pursuers lose your trail.],
      limit: [The escape is once per session. It doesn't defeat the pursuers, recover anything left behind or undo injuries and paid costs, and the chase can't resume without a new discovery or changed circumstances.],
    )],
  )]
  , kind: table
  )
#pagebreak()
=== 7.2 Starting Equipment <pb-explorator-starting-equipment>
#strong[Signature item (choose 1)]

#figure(
  [#table(
    columns: (10%, 42%, 48%),
    align: (auto,auto,auto,),
    table.header([Genre], [Option A], [Option B],),
    table.hline(),
    [Fantasy], [#strong[Longbow] (2) --- #emph[+1 Attack] (range), #emph[hunter\'s draw];], [#strong[Spear & hatchet] (2) --- #emph[+1 Maneuver] (spear), #emph[+1 Attack] (hatchet)],
    [Modern], [#strong[Scoped hunting rifle] (2) --- #emph[+1 Attack] (range), #emph[+1 Maneuver];], [#strong[Canoe or 4×4 truck] (vehicle, 0 load) --- #emph[my rig];, Drive/Pilot tag],
    [Sci-Fi], [#strong[Long-las rifle] (2) --- #emph[+1 Attack] (range), #emph[thermal scope];], [#strong[Grav-bike or skiff] (vehicle, 0 load) --- #emph[my rig];, Drive/Pilot tag],
  )]
  , kind: table
  )

#strong[Playbook kit]

#figure(
  [#table(
    columns: (7.92%, 29.7%, 30.69%, 31.68%),
    align: (auto,auto,auto,auto,),
    table.header([Load], [Fantasy], [Modern], [Sci-Fi],),
    table.hline(),
    [1], [Hunting knife & skinning tools], [Survival knife & multitool], [Survival blade with tool kit],
    [2], [Tent, bedroll & cookpot], [Lightweight tent, sleeping bag & stove], [Pop-up shelter & thermal pack],
    [1], [Snares & fishing line], [Fishing kit & snares], [Auto-snare & water purifier],
    [1], [Map case & compass], [GPS, maps & compass], [Topographic scanner],
    [1], [Leather jerkin (light armour)], [Waxed-canvas jacket (light armour)], [Environment suit (light armour, #emph[sealed];)],
    [1], [Trail rations & waterskins (+2 Supplies)], [Dehydrated meals & filter (+2 Supplies)], [Nutrient packs & reclaimer (+2 Supplies)],
  )]
  , kind: table
  )

#strong[Always carried (0):] Fantasy: tinderbox, whistle. Modern: ferro rod, bug spray. Sci-Fi: emergency beacon, rebreather.

=== 7.3 BIG Examples <pb-explorator-big-examples>
- #strong[Belief:] \"The land gives to those who respect it.\" / \"No one gets left on the trail.\"
- #strong[Goal:] \"Reach the trading post before the freeze.\" / \"Find the lost survey team.\"
- #strong[Instinct:] \"Always check the sky before setting out.\" / \"Never camp where you can\'t see the approach.\"

#strong[Relationships:] Ally --- a trapper, a bush pilot, a village elder. Rival --- a poacher, a rival guide, the company that wants your land.

