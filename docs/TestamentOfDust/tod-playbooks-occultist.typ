#import "tod-common.typ" : *
== 6. Occultist
#playbook-art-side("06-occultist.jpg", "Occultist playbook character art", dir: "art/playbooks/")[
#quote(block: true)[
Psychic, curse-witch, hypnotist, or scavenger of old-world machines. You use the powers the old world left behind, and the Frontier distrusts you for it.
]

#figure(
  [#table(
    columns: (25%, 75%),
    align: (auto,auto,),
    [#strong[Base pools (Sōm / Mēt / Psy / Pne)];], [7 / 8 / 9 / 12],
    [#strong[Edge];], [Pneuma 2 (Occult) or Psychē 2 (Science), plus 1 in any other pool],
    [#strong[Anchor skill];], [Occult (psychic powers, curses, sorcery) or Science (old-world machines, gadgets)],
    [#strong[Suggested skills];], [+4 Occult · +3 Old Lore, Will · +2 Notice, Medicine, Persuade · +1 Investigate, Empathy, Deceive, Science],
    [#strong[XP trigger];], [Address a challenge with your powers or old-world works],
  )]
  , kind: table
  )

#strong[Playbook tags (choose 2):] #emph[touched by old-world secrets] · #emph[disciplined mind] · #emph[sees what others can\'t] · #emph[blessed by the old faith] · #emph[tinkers with old-world machines] · #emph[fluent in the old pacts]
]

=== 6.1 Core Feature --- Domain (free)
Use the Adept\'s #strong[Domain] rules (Generic Playbooks §8.1) unchanged: workings with your anchor skill, scope sets Difficulty, each working costs 1 point from Pneuma (Occult) or Psychē (Science), and doubles on a failure cause backlash.

#strong[Setting Domains:]

#figure(
  [#table(
    columns: (46%, 54%),
    align: (auto,auto,),
    table.header([Occult Domains], [Science Domains],),
    table.hline(),
    [#emph[psychic force] (telekinesis, mind blasts)], [#emph[old-world machines] (command guardians, open doors)],
    [#emph[curses and hexes];], [#emph[weather control] (with a tower or device)],
    [#emph[dreams and nightmares];], [#emph[gravity];],
    [#emph[the astral self] (leave your body)], [#emph[energy weapons];],
    [#emph[puppets and dolls];], [#emph[holograms and illusion];],
    [#emph[beasts and familiars];], [#emph[bio-engineering] (grow, mutate, heal)],
    [#emph[shadows];], [#emph[dimensional pockets];],
    [#emph[the dead];], [#emph[sound and vibration];],
  )]
  , kind: table
  )

=== 6.2 Special Abilities
#figure(
  [#table(
    columns: (5%, 20%, 75%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Focused Channel];], [Workings inside your Domain cost #strong[0 pool points] if you don\'t use Effort on that roll.],
    [2], [#strong[Ward Against the Night];], [You can create protective statuses (#emph[warded-X];) with Enhance. While warded, an ally reduces supernatural harm by #strong[+1 tier] when Resisting, including fear, intimidation and Presence, and Resists bites (Bled) at +1.],
    [3], [#strong[Sense the Unseen];], [Once per scene, ask a free Discover about #strong[hidden supernatural or old-world forces] nearby. You always notice when an old-world work starts or stops near you.],
    [4], [#strong[Over-channel];], [When you use Effort for Power on a working, gain #strong[+2 Power] instead of +1, but take #emph[strained-1];.],
    [5], [#strong[Ritual];], [Given time, materials, and a safe place, run a working as a #strong[progress clock] (8 segments for Formidable, 12 for Heroic). Ritual results can create Site or Region Truths: a warded valley, a broken weather tower, an estate sealed shut.],
    [6], [#strong[Familiar];], [You have a doll, a bat, a homunculus, or a small old-world drone, with 1 power tag and 1 weakness. It can scout (one free Discover per scene where it can reach), carry messages, or handle simple tasks. It can\'t fight.],
    [7], [#strong[★ Second Domain];], [Gain a second Domain. Workings in it use the same rules.],
    [8], [#strong[★ Unleash];], [Once per scene, a working hits #strong[every target] in an area or group: each one receives the full Attack effects you buy. Afterwards, take #emph[Weary] or lose 3 points from your casting pool.],
    [9], [#strong[Hex];], [Once per scene, before an NPC you can see makes a roll, spend #strong[1 Tychē Point];: that roll brings a complication whatever it shows, as if it were a twist (Core Rules §2.6). The GM may spend 2 Woe to cancel it as normal, unless the hex works through a folk remedy the target believes in (#emph[believers], Frontier Rules §8.1).],
    [◆], [#strong[Ascendant];], [Once per session, a Heroic-scope working succeeds automatically with #strong[5 Power];, no ritual required. If you use it again before your next downtime, gain a Pneuma or Psychē Scar.],
  )]
  , kind: table
  )

=== 6.3 Starting Equipment
#strong[Signature item (choose 1)]

#figure(
  [#table(
    columns: (11%, 89%),
    align: (auto,auto,),
    table.header([Option], [Item],),
    table.hline(),
    [#strong[A];], [#strong[Charm-bag of bones and hair] (0) --- #emph[focus for my workings] (Occult tag); once per scene, a backlash causes 1 tier less],
    [#strong[B];], [#strong[Old-world gauntlet] (1) --- #emph[focus for my workings] (Science tag); stores one cypher in addition to your Cypher Limit],
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
    [1], [Candles, chalk, and salt --- #emph[+1] on Ritual rolls],
    [1], [Mirror shards and a scrying bowl],
    [1], [Herbs, garlic, and wolfsbane],
    [1], [Grimoire or salvaged old-world manual],
    [1], [Tool roll and spare power cells (Science)],
    [1], [Pistol --- #emph[+1 Attack] (range)],
  )]
  , kind: table
  )

#strong[Always carried (0):] a ring, a pendant, or a tattoo that marks what you are.

=== 6.4 BIG Examples
- #strong[Belief:] \"The vampires\' power isn\'t evil; how they used it was.\" / \"Every gift has a price, and I\'ve already paid mine.\"
- #strong[Goal:] \"Break the curse on the well before the next full moon.\" / \"Get the estate\'s guardian machines to obey me.\"
- #strong[Instinct:] \"Always look at a stranger\'s reflection.\" / \"Never use my power in front of villagers.\"

#strong[Relationships:] Ally --- a teacher who vanished into an estate, a village wise-woman, an old-world machine that likes you. Rival --- a psychic Hunter from a rival crew, a household\'s occultist, a priest who calls you a witch.

#strong[Field guide:] Occultists read and argue over the hunters' field guide (Stalker §2.4). An Occultist may find that its causes are wrong; its observations are mostly right.
