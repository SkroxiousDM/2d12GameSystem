#import "tod-common.typ" : *
== 2. Stalker
#playbook-art-side("02-stalker.jpg", "Stalker playbook character art", dir: "art/playbooks/")[
#quote(block: true)[
You hunt by day. While the vampire sleeps, you climb the estate walls, pick the locks, find the coffin, and open it.
]

#figure(
  [#table(
    columns: (25%, 75%),
    align: (auto,auto,),
    [#strong[Base pools (Sōm / Mēt / Psy / Pne)];], [8 / 12 / 8 / 8],
    [#strong[Edge];], [Mētis 2, plus 1 in Psychē or Sōma],
    [#strong[Anchor skill];], [Stealth],
    [#strong[Suggested skills];], [+4 Stealth · +3 Notice, Craft · +2 Athletics, Deceive, Shoot · +1 Fight, Science, Investigate, Old Lore],
    [#strong[XP trigger];], [Address a challenge with stealth or precision],
  )]
  , kind: table
  )

#strong[Playbook tags (choose 2):] #emph[light on my feet] · #emph[eyes in the back of my head] · #emph[steady hands] · #emph[knows estate layouts] · #emph[forgettable face] · #emph[patient as a stone]
]

=== 2.1 Special Abilities
#figure(
  [#table(
    columns: (5%, 20%, 75%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Ghost];], [When you spend Effort on a Stealth roll, your first use of Effort costs 0 pool points. Once per scene, when spotted, spend 1 Momentum to declare you were never seen; you\'re in a nearby hidden position.],
    [2], [#strong[Coffin Finder];], [Once per day inside an estate, ruin, or lair, ask a free #strong[Discover];: \"Where does it sleep?\" or \"Where\'s the weak point in this place?\"],
    [3], [#strong[Light Fingers];], [When you succeed on a theft, plant, or sabotage roll (Stealth or Craft), gain a #strong[free Extra Feat];.],
    [4], [#strong[Infiltrator];], [Once per roll, ignore one Truth that would raise the Difficulty of sneaking, climbing, or bypassing security, including estate Truths such as #emph[Guardian Machines] or #emph[Shifting Halls];.],
    [5], [#strong[Quick Reflexes];], [You always act first when violence breaks out. In conflicts, changing one of your scripted actions costs #strong[1 Momentum] instead of 2.],
    [6], [#strong[Escape Artist];], [When you Resist capture, restraint, falls, or traps with Mētis, the cost is #strong[0 on a highest die of 5+];.],
    [7], [#strong[★ Flashback];], [Once per mission, declare a flashback to something you prepared earlier. Pay Momentum by plausibility: 0 (obvious), 1 (reasonable), 2 (a stretch), 3 (wild). Then roll as normal; on a success, it happened.],
    [8], [#strong[★ Strike While It Sleeps];], [Against an unaware, #emph[Impeded];, or sleeping target, Attack effects cost #strong[half Power (round up)];. Killing strikes against sleeping vampires are #strong[one step easier] (−3 Difficulty; Frontier Rules §5.2). This reduction stacks with other applicable killing-strike reductions.],
    [◆], [#strong[Nobody Sees Me Coming];], [Once per session, declare you\'re already somewhere you could plausibly have reached. Your first roll there gets #strong[+2 bonus dice for free];, and the GM can\'t spend Woe to reveal you during that roll.],
  )]
  , kind: table
  )
#pagebreak()
=== 2.2 Starting Equipment
#strong[Signature item (choose 1)]

#figure(
  [#table(
    columns: (11%, 89%),
    align: (auto,auto,),
    table.header([Option], [Item],),
    table.hline(),
    [#strong[A];], [#strong[Wooden throwing needles] (1) --- #emph[+1 Attack] (range), #emph[silent];; may stake at range using Shoot under Frontier Rules §8.1],
    [#strong[B];], [#strong[Grapple-line gauntlet] (1) --- #emph[+1 Maneuver];, #emph[climbs any wall];; Advance a climbing or entry clock +1 per roll],
  )]
  , kind: table
  )

#strong[Playbook kit (declare during play)]

#figure(
  [#table(
    columns: (8%, 92%),
    align: (auto,auto,),
    table.header([Load], [Item],),
    table.hline(),
    [1], [Padded dark jacket (light armour)],
    [1], [Lockpicks and an old-world key-probe --- #emph[opens what\'s closed];, works on old-world locks at +1 step Difficulty],
    [1], [Long knives and garrotte --- #emph[+1 Attack];, #emph[+1 Feint];],
    [1], [Smoke pellets ×2 --- #emph[+1 Feint];, Create #emph[Thick Mist] (1 Power)],
    [1], [Climbing spikes and silk rope (15 m)],
    [1], [Hooded lantern and mirror shard --- by day, throws sunlight into a dark room (#emph[Sunlit] for one exchange)],
  )]
  , kind: table
  )

#strong[Always carried (0):] wooden stake, soft-soled boots, a lucky coin.

=== 2.3 BIG Examples
- #strong[Belief:] \"A vampire asleep is as mortal as anyone.\" / \"Take what they stole, and leave nothing behind.\"
- #strong[Goal:] \"Find the Countess\'s coffin before dusk.\" / \"Steal the key-crystal from the estate vault.\"
- #strong[Instinct:] \"Always find three ways out.\" / \"Never be in the estate when the sun sets.\"

#strong[Relationships:] Ally --- a fence at the trading post, an estate servant who leaves the gate open, a mentor who taught you the walls. Rival --- a guardian machine you\'ve escaped twice, a thief who works for the vampires, a Hunter who thinks stealth is cowardice.

=== 2.4 Handout --- The Hunters' Field Guide
Hunters pass these notes from hand to hand. Give them to players as found knowledge. The guide is right about what hunters saw. Its explanations are another matter. The GM measures a vampire by threat rank (Frontier Rules §5.1), not by these classes.

#sidebar("The Kinds of the Kept, as Hunters Tell It")[
#strong[Winterers.] The oldest and the worst. They go to ground for a generation and wake hungry enough to empty a village. Cunning, patient, and they know every family in the valley. #emph[Hunters say:] the old ones sleep by choice, to outlast their enemies. Find the sleeping place and burn it.

#strong[Strays.] Newly made, and it shows: clumsy, greedy, careless with their kills. They seldom last more than a few years. #emph[Hunters say:] the blood thins with every making, and a made one is a weak copy of its maker. Kill them young and you'll have little trouble.

#strong[Tapsters.] They take a little and leave you living, the way a tapster draws from a cask. Their donors wake dazed and remember nothing, and many go back willingly. They rarely kill. #emph[Hunters say:] their bite carries a sleeping venom. Never let one near your neck, and never trust a town that seems glad of them.
]

