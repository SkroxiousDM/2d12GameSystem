#import "tod-common.typ" : *
== 7. Mutant
#playbook-art-side("07-mutant.jpg", "Mutant playbook character art", dir: "art/playbooks/")[
#quote(block: true)[
The old wars and the old world\'s experiments made your bloodline something more, or less, than human. You can fight, climb, hide, and endure like a monster, because you are one, as far as the villagers can tell.
]

#figure(
  [#table(
    columns: (25%, 75%),
    align: (auto,auto,),
    [#strong[Base pools (Sōm / Akm / Psy / Pne)];], [11 / 11 / 6 / 8],
    [#strong[Edge];], [Sōma 1, Mētis 1, plus 1 in Sōma, Mētis, or Pneuma],
    [#strong[Anchor skill];], [Athletics or Stealth],
    [#strong[Suggested skills];], [+4 Athletics · +3 Brawl, Stealth · +2 Frontier, Endure, Intimidate · +1 Notice, Fight, Deceive, Will],
    [#strong[XP trigger];], [Address a challenge with your mutations or your monstrous nature],
  )]
  , kind: table
  )

#strong[Playbook tags (choose 2):] #emph[born in the wastes] · #emph[stronger than I look] · #emph[hides in plain sight] · #emph[knows the monsters\' ways] · #emph[survived the experiments] · #emph[proud of what I am]
]

=== 7.1 Core Feature --- Mutations (free)
Choose #strong[2 Mutations];. Each is a power tag that ignores load, plus a rule. Every Mutation is visible unless you hide it (a hood, a cloak, a Deceive roll). When it\'s seen, the scene gains #emph[Feared and Despised];.

#figure(
  [#table(
    columns: (25%, 20%, 55%),
    align: (auto,auto,auto,),
    table.header([Mutation], [Tag], [Rule],),
    table.hline(),
    [#strong[Claws and fangs];], [#emph[natural weapons];], [#emph[+1 Attack] in Fights; your Brawl counts as armed],
    [#strong[Hide or scales];], [#emph[thick hide];], [#emph[Armour 1];, stacks with no worn armour],
    [#strong[Chameleon skin];], [#emph[blends in];], [Once per scene, take a free bonus die on a Stealth roll in natural surroundings],
    [#strong[Wall-crawler];], [#emph[clings to anything];], [Climb any surface without a roll unless under attack],
    [#strong[Night eyes];], [#emph[sees in the dark];], [Ignore #emph[Moonless] and darkness Truths],
    [#strong[Shadow-melder] (retainer clan)], [#emph[one with the shadows];], [Once per scene, move from one shadow to another you can see (no roll unless guarded)],
    [#strong[Venom];], [#emph[poisonous];], [Spend 1 Power on an Attack to add #emph[poisoned-1];, which rises by 1 each scene until treated],
    [#strong[Elastic body];], [#emph[stretches and squeezes];], [Reach 5 m; fit through any gap a hand can pass],
    [#strong[Burrower] (sand or soil)], [#emph[swims through earth];], [Move under sand or soft soil; #emph[+1 Maneuver] in desert Fights],
    [#strong[Regeneration];], [#emph[heals fast];], [A short rest restores #strong[2 + Edge] Sōma and lowers one physical status by 1],
    [#strong[Mimic];], [#emph[voices and faces];], [Copy a voice you\'ve heard, or reshape your face for a scene (#emph[+1 Feint];)],
    [#strong[Shapeshifter] (retainer clan)], [#emph[beast form];], [Turn into one animal (wolf, bat, panther) for a scene; you keep your pools and skills but can\'t use gear],
  )]
  , kind: table
  )
=== 7.2 Special Abilities
#figure(
  [#table(
    columns: (5%, 20%, 75%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Further Mutation];], [Gain one more Mutation. You can take this ability up to twice.],
    [2], [#strong[Old Oath];], [Retainer clans and household servants recognise your blood. Once per scene, Persuade or Intimidate with them is one step easier, or ask a free Discover about their tricks.],
    [3], [#strong[Toxic Blood];], [Anything that bites or drinks from you gains #emph[poisoned-2];. #emph[Bled] from feeding gains #strong[1 fewer tier] on you.],
    [4], [#strong[Waste-Hardened];], [Ignore the #emph[Exposed] and #emph[Sick] Grind conditions when they come from radiation, poison, or bad water.],
    [5], [#strong[Monstrous Presence];], [You may use #strong[Sōma] for Intimidate Effort and Resistance. Against minions, a successful Intimidate makes them flee for 1 Momentum.],
    [6], [#strong[Hunter\'s Senses];], [You can smell blood, fear, and the afflicted. Once per scene, free Discover: \"Who here is not what they seem?\"],
    [7], [#strong[★ Full Transformation];], [Once per scene, release your monstrous form: free #strong[+1 bonus die] on Brawl, Athletics, and Stealth, and your Attacks inflict #strong[+1 tier];, for the rest of the scene. You can\'t speak or use gear. Afterwards, take #emph[Weary];, and any humans present treat you as a threat.],
    [8], [#strong[★ Living Weapon];], [Choose one Mutation. Its tag may add #strong[+1 above the normal +2 cap (maximum +3 from tags)];, and successful rolls using it gain #strong[+1 Power];.],
    [◆], [#strong[The Clan Remembers];], [Your people are a #strong[Region Truth] (#emph[\"\[name\]\'s clan watches the Frontier\"];). Once per session, the clan sends help: a minion group with 2 power tags, or a safe hiding place for the party.],
  )]
  , kind: table
  )
=== 7.3 Starting Equipment
#strong[Signature item (choose 1)]

#figure(
  [#table(
    columns: (11%, 89%),
    align: (auto,auto,),
    table.header([Option], [Item],),
    table.hline(),
    [#strong[A];], [#strong[Hooked chain] (1) --- #emph[+1 Attack];, #emph[+1 Maneuver];],
    [#strong[B];], [#strong[Hooded cloak and mask] (1) --- #emph[+1 Feint];, #emph[hides my mutation] (no #emph[Feared and Despised] while worn)],
  )]
  , kind: table
  )

#strong[Playbook kit (declare during play)]

#figure(
  [#table(
    columns: (9%, 91%),
    align: (auto,auto,),
    table.header([Load], [Item],),
    table.hline(),
    [1], [Hide armour (light armour)],
    [1], [Throwing knives --- #emph[+1 Attack] (range)],
    [1], [Bone charms from your clan],
    [1], [Water skin and dried meat (Supplies +1)],
    [1], [Climbing claws or digging tools],
    [1], [Bandages and salves for your kind],
  )]
  , kind: table
  )

#strong[Always carried (0):] a token from your clan, a scar from the experiments, a name nobody can pronounce.

=== 7.4 BIG Examples
- #strong[Belief:] \"Humans and monsters are both just trying to live.\" / \"I\'ll never serve the Kept again.\"
- #strong[Goal:] \"Get the village to let me in the gate.\" / \"Find out which estate made my bloodline.\"
- #strong[Instinct:] \"Always hide the mutation before entering a town.\" / \"Never run from a fight with a retainer.\"

#strong[Relationships:] Ally --- a human child who isn\'t scared of you, a clan elder, a doctor who treats you. Rival --- a retainer still sworn to a vampire household, a Hunter who hunts mutants for pay, a mayor who posted a bounty on you.

