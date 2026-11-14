#import "common.typ":*

#pagebreak(weak: true)
== 7. Explorator
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

=== 7.1 Special Abilities
#figure(
  [#table(
    columns: (5%, 13%, 82%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    // PLAYTEST: Pathfinder and Forager core fallbacks when Module B is not used.
    [1], [#strong[Pathfinder];], [As Guide (Module B), each Power spent on Make Time advances the Journey clock #strong[1 extra segment]; without Module B, add 1 extra segment to any travel or pursuit clock you advance. Ignore one terrain Truth per leg.],
    [2], [#strong[Forager];], [As Quartermaster (Module B), a success also clears #emph[Hungry & Thirsty] for the whole party and gives #strong[+1 Supplies] for free. Without Module B, a successful foraging roll clears a hunger or thirst status for the whole party.],
    [3], [#strong[Tracker];], [When you track or read signs, each Discover you buy gives #strong[two answers];.],
    [4], [#strong[Hunter\'s Eye];], [With Shoot, once per roll ignore one Truth about cover, distance, or weather. At long range, gain #strong[+1 Power] on a success.],
    [5], [#strong[Ambusher];], [In wild terrain, if you had time to prepare, your side starts a Fight conflict with #strong[+2 Disposition] (a flat modifier, §1.2), and your first-volley Attack resolves as independent whatever the opponent does.],
    // PLAYTEST: At the Helm Chase bonus lowered from +3 to +2 to match Ambusher.
    [6], [#strong[At the Helm];], [Drive/Pilot rolls with your own vehicle or boat may use Survival. Your vehicle gains one power tag (#emph[swift], #emph[rugged], #emph[nimble]). In Chase conflicts, your side gets #strong[+2 starting Disposition] (a flat modifier, §1.2).],
    [7], [#strong[★ Animal Companion];], [You have a companion (hound, hawk, horse; a drone in sci-fi) with 2 power tags and 1 weakness. Once per scene it gives you a #strong[free bonus die] (within the +2 cap), or acts on its own using your Survival. Acting on its own in a conflict takes a place in your side's script and rotation; it has no Disposition or injury trade of its own (Core Rules §10.9). It can take statuses; tier 6 means it's lost until downtime.],
    // PLAYTEST: Balance B3, ★ kept; always-on forecast added to the once-per-session Truth.
    [8], [#strong[★ Weather Sense];], [Once per session, declare the #strong[weather or terrain Truth] for the next scene (#emph[thick fog], #emph[rising river], #emph[clear skies]). You also always know the next scene\'s weather and terrain Truths before the party plans it, including whether a travel leg is a hard stretch (Module B).],
    [◆], [#strong[One With the Wild];], [In wilderness, the party's Grind clock (Module B) is #strong[2 segments larger], and you can't be surprised. Once per session, while your party flees through wilderness, declare before the next exchange is scripted that you're losing the pursuit. If you can lead and everyone escaping can travel or be carried, the pursuit ends with no roll: you reach safety and the pursuers lose your trail. It doesn't defeat them, recover anything left behind or undo injuries and paid costs, and the chase can't resume without a new discovery or changed circumstances.],
  )]
  , kind: table
  )
#pagebreak()
=== 7.2 Starting Equipment
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

=== 7.3 BIG Examples
- #strong[Belief:] \"The land gives to those who respect it.\" / \"No one gets left on the trail.\"
- #strong[Goal:] \"Reach the trading post before the freeze.\" / \"Find the lost survey team.\"
- #strong[Instinct:] \"Always check the sky before setting out.\" / \"Never camp where you can\'t see the approach.\"

#strong[Relationships:] Ally --- a trapper, a bush pilot, a village elder. Rival --- a poacher, a rival guide, the company that wants your land.

