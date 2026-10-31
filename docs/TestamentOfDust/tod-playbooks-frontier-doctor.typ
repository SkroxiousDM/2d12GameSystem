#import "tod-common.typ" : *
== 3. Frontier Doctor
#playbook-art-side("03-frontier-doctor.jpg", "Frontier Doctor playbook character art", dir: "art/playbooks/")[
#quote(block: true)[
The only doctor for a hundred kilometres. You sew up Hunters, deliver babies, and know more about blood than anyone wants to.
]

#figure(
  [#table(
    columns: (25%, 75%),
    align: (auto,auto,),
    [#strong[Base pools (Sōm / Mēt / Psy / Pne)];], [7 / 8 / 13 / 8],
    [#strong[Edge];], [Psychē 2, plus 1 in Pneuma or Mētis],
    [#strong[Anchor skill];], [Medicine or Old Lore],
    [#strong[Suggested skills];], [+4 Medicine · +3 Old Lore, Investigate · +2 Notice, Science, Empathy · +1 Will, Shoot, Ride, Persuade],
    [#strong[XP trigger];], [Address a challenge with knowledge, insight, or healing],
  )]
  , kind: table
  )

#strong[Playbook tags (choose 2):] #emph[steady surgeon\'s hands] · #emph[seen every wound there is] · #emph[reads old books] · #emph[the village trusts me] · #emph[knows blood] · #emph[calm in a crisis]
]

=== 3.1 Special Abilities
#figure(
  [#table(
    columns: (5%, 20%, 75%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Field Surgeon];], [Restore effects from your Medicine rolls remove #strong[2 tiers per Power];. (One cost reduction per Effect.)],
    [2], [#strong[Treat the Bled];], [Your Medicine rolls to stabilise a character Dying from #emph[Bled] are #strong[Standard 15] instead of Hard 18. You can give a transfusion without a kit. Other treatment limits remain unchanged unless another ability explicitly overrides them.],
    [3], [#strong[Read the Body];], [When you examine a victim, a corpse, or a slain creature, ask #strong[2 free Discover] questions about what did it and how.],
    [4], [#strong[Anatomy of Monsters];], [When you tell an ally a creature\'s weak point (a Discover you made this scene), that ally\'s next successful Attack on it gains #strong[+1 Power];.],
    [5], [#strong[Chemist];], [In the Players\' Turn, spend 1 Check to make one cypher from: #emph[healing gel] (tier 2), #emph[mind-seal patch] (tier 2), #emph[blood ampoule] (tier 2), or #emph[iron tonic] (tier 2: Restore #emph[Bled] by 1 tier).],
    [6], [#strong[Bedside Manner];], [Use Medicine or Empathy to Restore fear and despair statuses. Once per scene, a successful roll removes #emph[Frightened Villagers] from the scene.],
    [7], [#strong[★ Not on My Table];], [Once per session, when an ally is Taken Out by physical harm, they don\'t die: they\'re stabilised at tier 5, and wake after 10 minutes of safe care.],
    [8], [#strong[★ Serum];], [With a sample of a specific vampire\'s blood, run a downtime clock (6 segments). When it fills, you turn one of its weakness tags into a #strong[killing method] (Frontier Rules §8.1), and the party\'s Attacks against it inflict #strong[+1 tier];.],
    [◆], [#strong[The Blood Bank];], [You run a reliable blood exchange. Transfusions you oversee need no roll, and once per session you can supply half a litre of blood to anyone who needs it. This becomes a #strong[Region Truth] (#emph[\"The doctor keeps blood\"];), and vampire households will send for you, or send against you.],
  )]
  , kind: table
  )
#pagebreak()
=== 3.2 Starting Equipment
#strong[Signature item (choose 1)]

#figure(
  [#table(
    columns: (11%, 89%),
    align: (auto,auto,),
    table.header([Option], [Item],),
    table.hline(),
    [#strong[A];], [#strong[Doctor\'s bag] (1) --- #emph[surgeon\'s tools];; once per scene, a Restore removes +1 extra tier],
    [#strong[B];], [#strong[Old-world medical scanner] (1) --- once per scene, free Discover about one body\'s condition, poisons, or mutations. Depletion 1 in d12 (needs a new power cell)],
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
    [1], [Bandages, splints, and morphine],
    [1], [Transfusion kit --- needed for transfusion; #emph[+1] on Medicine against #emph[Bled] (Frontier Rules §8.3)],
    [1], [Revolver --- #emph[+1 Attack] (range)],
    [1], [Books of Old Lore --- #emph[the answer is in here somewhere] (Old Lore tag)],
    [1], [Microscope and sample case],
    [0], [Mule and medical wagon (vehicle)],
  )]
  , kind: table
  )

#strong[Always carried (0):] scalpel, spectacles, a small cross.

=== 3.3 BIG Examples
- #strong[Belief:] \"Every life is worth saving, even a mutant\'s.\" / \"Knowledge is the only thing the vampires can\'t take back.\"
- #strong[Goal:] \"Keep the mayor\'s daughter below Bled-4 until the Hunter returns.\" / \"Find out what the vampire is doing in its laboratory.\"
- #strong[Instinct:] \"Always check the throat first.\" / \"Never let a patient die alone.\"

#strong[Relationships:] Ally --- a patient who owes you their life, a city professor who writes back, a Hunter you\'ve patched up too often. Rival --- a quack selling charms against the bite, a vampire physician whose notes you stole, a mayor who wants the bitten burned.

