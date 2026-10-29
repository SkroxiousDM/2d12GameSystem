#import "tod-common.typ" : *
== 4. Broker
#playbook-art-side("04-broker.jpg", "Broker playbook character art", dir: "art/playbooks/")[
#quote(block: true)[
Contracts, rumours, debts, and deals. You find the work, set the price, and make sure the client pays.
]

#figure(
  [#table(
    columns: (25%, 75%),
    align: (auto,auto,),
    [#strong[Base pools (Sōm / Mēt / Psy / Pne)];], [7 / 9 / 9 / 11],
    [#strong[Edge];], [Pneuma 2, plus 1 in Psychē or Mētis],
    [#strong[Anchor skill];], [Persuade],
    [#strong[Suggested skills];], [+4 Persuade · +3 Empathy, Deceive · +2 Notice, Old Lore, Will · +1 Investigate, Shoot, Ride, Intimidate],
    [#strong[XP trigger];], [Address a challenge with charm, lies, or bargaining],
  )]
  , kind: table
  )

#strong[Playbook tags (choose 2):] #emph[silver tongue] · #emph[knows every saloon on the Frontier] · #emph[reads a bluff] · #emph[owed many favours] · #emph[dressed like money] · #emph[speaks the households\' tongue]
]

=== 4.1 Special Abilities
#figure(
  [#table(
    columns: (5%, 20%, 75%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Silver Tongue];], [When you Create a social story tag with Persuade or Deceive (#emph[the mayor is on our side];), it costs #strong[1 Power] instead of 2.],
    [2], [#strong[Contract Lawyer];], [When you negotiate a contract (Frontier Rules §10.2), a success raises the fee #strong[one free step];. A client who breaks a deal with you gains the weakness tag #emph[broke their word to \[name\]];.],
    [3], [#strong[Ear to the Ground];], [When you arrive in a settlement, ask one free #strong[Discover] about local rumours. When you confirm a rumour (Module C.4), add #strong[+2] to the d12.],
    [4], [#strong[Smooth It Over];], [On a successful Persuade, spend 1 Power to remove #emph[Frightened Villagers] or #emph[Feared and Despised] for the party for the scene.],
    [5], [#strong[Read the Room];], [Once per scene, ask a free Discover about what one person present wants most.],
    [6], [#strong[Courtly Manners];], [You know household etiquette. In a Duel of Wills, you may use #strong[Persuade] to Defend. Compelling a vampire\'s pride (Frontier Rules §5.3) costs you nothing once per scene.],
    [7], [#strong[★ Contacts Everywhere];], [Once per session, declare a useful contact in this town. Pay Momentum by plausibility: 0 (obvious), 1 (reasonable), 2 (a stretch), 3 (wild). They exist and owe you one favour.],
    [8], [#strong[★ Hired Guns];], [Once per mission, spend a wealth tag (#emph[a fat purse] or better) to hire a minion group with 2 power tags and 1 weakness. It acts as one group and fights for you for the mission.],
    [◆], [#strong[The Word on the Frontier];], [Your word is a #strong[Region Truth] (#emph[\"\[name\]\'s deal is law here\"];). Once per session, end a Negotiation or Argument conflict in your favour; the compromise is at most Minor.],
  )]
  , kind: table
  )
#pagebreak()
=== 4.2 Starting Equipment
#strong[Signature item (choose 1)]

#figure(
  [#table(
    columns: (11%, 89%),
    align: (auto,auto,),
    table.header([Option], [Item],),
    table.hline(),
    [#strong[A];], [#strong[Ledger of debts] (1) --- #emph[everyone owes somebody];; #emph[+1 Maneuver] in Negotiation],
    [#strong[B];], [#strong[Derringer and a marked deck] (0) --- #emph[sidearm];, #emph[+1 Feint];],
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
    [1], [Fine travel clothes --- #emph[dressed for any company];],
    [1], [Bottle of good brandy --- #emph[+1] to Persuade when shared],
    [1], [Letter of credit --- counts as #emph[a fat purse] once per mission],
    [1], [Forged papers and seals --- #emph[+1 Feint] in Argument or Negotiation],
    [1], [Revolver --- #emph[+1 Attack] (range)],
    [0], [Covered wagon and team (vehicle)],
  )]
  , kind: table
  )

#strong[Always carried (0):] pocket watch, calling cards, a vampire\'s old signet ring you shouldn\'t have.

=== 4.3 BIG Examples
- #strong[Belief:] \"Everything on the Frontier has a price, even mercy.\" / \"A Hunter without a broker is a corpse that works for free.\"
- #strong[Goal:] \"Get the village to pay double before we ride out.\" / \"Find out who really posted this bounty.\"
- #strong[Instinct:] \"Always get half up front.\" / \"Never sit with my back to the saloon doors.\"

#strong[Relationships:] Ally --- a mayor who trusts you, a saloon owner who passes on rumours, a Hunter you\'ve represented for years. Rival --- a rival broker in the city, a vampire\'s agent who outbids you, a client you cheated.
