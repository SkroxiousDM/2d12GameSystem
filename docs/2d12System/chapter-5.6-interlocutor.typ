#import "common.typ":*

#pagebreak(weak: true)
== 6. Interlocutor
#playbook-art-side("04-interlocutor.jpg", "Interlocutor playbook character art")[
#quote(block: true)[
Words open doors that swords can\'t. Diplomats, con artists, nobles, negotiators, preachers, captains.
]

#figure(
  [#table(
    columns: (25%, 75%),
    align: (auto,auto,),
    [#strong[Base pools (Sōm / Mēt / Psy / Pne)];], [7 / 9 / 9 / 11],
    [#strong[Edge];], [Pneuma 2, plus 1 in Psychē or Mētis],
    [#strong[Anchor skill];], [Persuade],
    [#strong[Suggested skills];], [+4 Persuade · +3 Empathy, Deceive · +2 Will, Notice, Intimidate · +1 Lore, Fight, Stealth, Investigate],
    [#strong[XP trigger];], [Address a challenge with charm, lies, or bargaining],
  )]
  , kind: table
  )

#strong[Playbook tags (choose 2):] #emph[silver tongue] · #emph[friends in every port] · #emph[reads people like books] · #emph[noble bearing] · #emph[a hundred faces] · #emph[calm under fire]
]

=== 6.1 Special Abilities
#figure(
  [#table(
    columns: (5.05%, 12.12%, 82.83%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Silver Tongue];], [#ability(
      trigger: [You Persuade or Deceive and Create a Truth about a target's attitude (#emph[convinced], #emph[trusts us], #emph[fooled]).],
      cost: [That Create costs #strong[1 Power less] (Core Rules §5).],
      benefit: [Create the attitude Truth at the reduced cost.],
      limit: [In a conflict, the Truth gives leverage, not the disputed objective.],
    )],
    [2], [#strong[Read the Room];], [#ability(
      trigger: [You spend Power on Discover to learn an NPC's Belief, Goal or Instinct.],
      cost: [1 Power (the Discover).],
      benefit: [Learn their #strong[Belief, Goal, or Instinct]. You get #strong[+1] (counts as a tag) against them for the scene.],
      limit: [Within the tag cap. The bonus lasts the scene.],
    )],
    [3], [#strong[Network];], [#ability(
      trigger: [You declare a #strong[contact] in the current location.],
      cost: [No additional cost.],
      benefit: [The contact becomes a Truth (#emph[contact: harbourmaster Elsa]).],
      limit: [Once per session. The GM gives them a quirk or something they want in return.],
    )],
    [4], [#strong[Smooth Recovery];], [#ability(
      trigger: [You fail a Persuade, Deceive or Empathy test against a Difficulty. Use it before Power or consequences apply.],
      cost: [Pay the Success at a Cost price instead of ordinary-failure Woe.],
      benefit: [Turn it into #strong[Success at a Cost] with #strong[1 Power], whatever the margin.],
      limit: [Once per scene. Independent tests only, not losing, tied or trumped versus tests. Doubles and other separate consequences still apply.],
    )],
    [5], [#strong[Many Faces];], [#ability(
      trigger: [You have a moment to prepare.],
      cost: [#strong[1 Power].],
      benefit: [Create the Truth #emph[I belong here]. It removes one Truth that would raise the Difficulty of mingling or entry.],
      limit: [It lasts the scene. It doesn't settle a contested conflict objective.],
    )],
    [6], [#strong[Command];], [#ability(
      trigger: [Your side scripts an exchange and you can act and communicate; or an ally succeeds with Defend and commits at least 1 Power to Disposition recovery.],
      cost: [No additional cost.],
      benefit: [Name one volley and its actor: that actor may act out of rotation, even in consecutive volleys. Commit it with the script. Separately, add #strong[+1 recovery] to the ally's Defend (up to starting Disposition).],
      limit: [Each benefit applies #strong[once per exchange] for your side, however many Command users it has. The named volley still holds if you're later Taken Out, but can't make an unavailable actor act; record the turn normally, then resume rotation.],
    )],
    [7], [#strong[★ Inspire];], [#ability(
      trigger: [You spend Tychē Points on an ally's roll, or create an Enhance effect for an ally.],
      cost: [Your own Tychē Points. Enhance costs #strong[1 Power per 2 tiers].],
      benefit: [You can spend #strong[your Tychē Points on allies' rolls]. Enhance effects you create for allies use the reduced price.],
      limit: [No additional limit.],
    )],
    // PLAYTEST: Balance B2, ★ kept; widened from crowds or councils to any side of two or more.
    [8], [#strong[★ Crowd Work];], [#ability(
      trigger: [You succeed on an Attack in an Argument or Negotiation conflict where the other side has #strong[two or more participants] (a crowd, a council, a rival delegation).],
      cost: [No additional cost.],
      benefit: [You influence a group as if it were one person: the Attack removes #strong[1 additional Disposition] with ordinary Attack loss.],
      limit: [Applies however many people that side holds.],
    )],
    // PLAYTEST: Word Is Law starting bonus lowered from +4 to +3.
    [◆], [#strong[Word Is Law];], [#ability(
      trigger: [You make a reasonable request of a non-villain NPC, or an Argument or Negotiation conflict begins.],
      cost: [No additional cost.],
      benefit: [The NPC agrees #strong[without a roll]. In Argument and Negotiation conflicts, your side starts with #strong[+3 Disposition].],
      limit: [The request is once per session. The Disposition bonus is a flat modifier (§1.2).],
    )],
  )]
  , kind: table
  )
#pagebreak()
=== 6.2 Starting Equipment
#strong[Signature item (choose 1)]

#figure(
  [#table(
    columns: (10%, 50%, 40%),
    align: (auto,auto,auto,),
    table.header([Genre], [Option A], [Option B],),
    table.hline(),
    [Fantasy], [#strong[Signet ring & letters of introduction] (0) --- #emph[carries a name that opens doors];], [#strong[Rapier] (1) --- #emph[+1 Attack];, #emph[+1 Feint];, #emph[duelling style];],
    [Modern], [#strong[Tailored suit & business cards] (0) --- #emph[looks like money];], [#strong[Concealed pistol] (1) --- #emph[+1 Attack];, #emph[never seen it coming];],
    [Sci-Fi], [#strong[Diplomatic credentials] (0) --- #emph[official envoy];], [#strong[Hold-out blaster] (1) --- #emph[+1 Attack];, #emph[hidden in a sleeve];],
  )]
  , kind: table
  )

#strong[Playbook kit]

#figure(
  [#table(
    columns: (8%, 41%, 26%, 25%),
    align: (auto,auto,auto,auto,),
    table.header([Load], [Fantasy], [Modern], [Sci-Fi],),
    table.hline(),
    [1], [Fine clothes for court], [Formal wear & accessories], [Holo-fashion wardrobe],
    [1], [Disguise kit & wigs], [Disguise kit & fake IDs], [Holo-disguise emitter],
    [1], [Purse of gold --- #emph[money talks] (1 use per mission: Create tag #emph[bribed];)], [Credit card --- #emph[money talks] (same)], [Credit stick --- #emph[money talks] (same)],
    [1], [Bottle of fine wine], [Gift basket / bottle of scotch], [Rare off-world delicacy],
    [1], [Forged seals & papers], [Forged documents], [Spoofed ID chip],
    [1], [Brocaded doublet (light armour)], [Armoured coat (light armour)], [Deflector jacket (light armour)],
  )]
  , kind: table
  )

#strong[Always carried (0):] Fantasy: perfume, deck of cards. Modern: smartphone with contacts, breath mints. Sci-Fi: translator implant, personal comm.

=== 6.3 BIG Examples
- #strong[Belief:] \"Every war ends at a table; I\'d rather start there.\" / \"A lie that saves a life is no sin.\"
- #strong[Goal:] \"Get the guild master to sign the truce.\" / \"Find out what the duke really wants.\"
- #strong[Instinct:] \"Always learn someone\'s name.\" / \"Never be the first to name a price.\"

#strong[Relationships:] Ally --- a well-placed patron, a loyal servant, a reporter. Rival --- a political opponent, a jilted lover, someone you conned who wants payback.

