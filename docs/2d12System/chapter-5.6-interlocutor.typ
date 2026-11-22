#import "common.typ":*

#pagebreak(weak: true)
== 6. Interlocutor <pb-interlocutor>
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

#strong[Playbook tags (choose 2 of 6):] #emph[There Is Always a Deal to Make] · #emph[I Tell Them the Story They Need] · #emph[People Need Something to Believe In] · #emph[I Know Which Names Matter] · #emph[I Listen Until They Tell Me] · #emph[Someone Has to Speak for Us]

The six options support a negotiator, confidence artist, orator, connected operator, confidant or representative; choose any two.
]

#emph[There Is Always a Deal to Make]

Power: Identify shared interests, construct an exchange, or bring opposing parties to terms. \
Compel: You offer a concession that should not have been yours to trade.

#emph[I Tell Them the Story They Need]

Power: Build a persuasive account around someone’s hopes, fears, or expectations. \
Compel: Your story creates a promise or false belief you must now sustain.

#emph[People Need Something to Believe In]

Power: Inspire a crowd, give a cause meaning, or restore shared resolve. \
Compel: Your audience demands that you embody the ideals you proclaimed.

#emph[I Know Which Names Matter]

Power: Navigate social hierarchies, arrange an introduction, or identify who actually holds influence. \
Compel: Invoking a name signals an allegiance or brings an influential person’s expectations down on you.

#emph[I Listen Until They Tell Me]

Power: Earn trust, draw out concerns, or discover what someone is reluctant to say. \
Compel: You become responsible for a confidence or remain engaged with someone who is deliberately wasting time.

#emph[Someone Has to Speak for Us]

Power: Present a united position, articulate shared needs, or stand firm under public pressure. \
Compel: You speak beyond your mandate or become personally accountable for the group’s position.

=== 6.1 Special Abilities <pb-interlocutor-special-abilities>
#figure(
  [#table(
    columns: (5.05%, 12.12%, 82.83%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Silver Tongue];], [#ability(
      trigger: [You Persuade or Deceive and Create a Situational Condition about a target's attitude (#emph[convinced], #emph[trusts us], #emph[fooled]).],
      cost: [That Create costs #strong[1 Power less] (Core Rules @core-effects), minimum 1.],
      benefit: [Create the attitude Condition at the reduced cost.],
      limit: [In a conflict, the Condition gives leverage, not the disputed objective. It doesn't decide what another PC believes.],
    )],
    [2], [#strong[Read the Room];], [#ability(
      trigger: [You buy Discover to learn an NPC's Belief, Goal, or Instinct.],
      cost: [The normal Discover cost.],
      benefit: [Learn one of those motivations. Before the scene ends, gain +1 Power on one later successful action against that NPC that exploits what you learned.],
      limit: [You can hold only one unused Read the Room benefit at a time; a new one replaces the old one. An action can gain this bonus only once. Declare its use after determining success and before allocating Power. It does not change the NPC's motivation or permit otherwise unavailable Effects.],
    )],
    [3], [#strong[Network];], [#ability(
      trigger: [You declare a #strong[contact] in the current location.],
      cost: [No additional cost.],
      benefit: [The contact becomes a #strong[Site Truth] (Core Rules @core-scale): #emph[Contact: Harbourmaster Elsa] --- Truth/Site --- that settlement or place, where you can find and call on them --- ends when the contact no longer matters there or is lost.],
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
      benefit: [Create the Truth #emph[I belong here]. While it lasts, ignore one harmful Situational Condition on mingling or entry.],
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
      trigger: [You succeed on an Attack or Feint in an Argument or Negotiation conflict against a side with at least two participants.],
      cost: [No additional cost.],
      benefit: [When you commit at least 1 Power to ordinary Disposition loss, remove 1 additional Disposition.],
      limit: [Once per action, regardless of the number of opposing participants. It grants no additional targeting, status, or area effect.],
    )],
    // PLAYTEST: Word Is Law starting bonus lowered from +4 to +3.
    [◆], [#strong[Word Is Law];], [#ability(
      trigger: [You make a reasonable request of a non-villain NPC, or an Argument or Negotiation conflict begins.],
      cost: [No additional cost.],
      benefit: [The NPC agrees #strong[without a roll]. In Argument and Negotiation conflicts, your side starts with #strong[+3 Disposition].],
      limit: [The request is once per session. The Disposition bonus is a flat modifier (@pb-ability-notation).],
    )],
  )]
  , kind: table
  )
#pagebreak()
=== 6.2 Starting Equipment <pb-interlocutor-starting-equipment>
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

=== 6.3 BIG Examples <pb-interlocutor-big-examples>
- #strong[Belief:] \"Every war ends at a table; I\'d rather start there.\" / \"A lie that saves a life is no sin.\"
- #strong[Goal:] \"Get the guild master to sign the truce.\" / \"Find out what the duke really wants.\"
- #strong[Instinct:] \"Always learn someone\'s name.\" / \"Never be the first to name a price.\"

#strong[Relationships:] Ally --- a well-placed patron, a loyal servant, a reporter. Rival --- a political opponent, a jilted lover, someone you conned who wants payback.

