#import "common.typ": *
#pagebreak() 
== 6. Social Focuses
#columns(2, gutter: 6mm)[
=== 13. Talks Their Way Out of Anything
#quote(block: true)[
Charm, quick wit, and the right words at the right time.
]

- #strong[Power tags:] #emph[always has a story ready];, #emph[disarming smile]
- #strong[Weakness tag:] #emph[my mouth writes cheques]
- #strong[PC link:] \"\[PC\] has bailed me out more than once; I owe them.\"

#figure(
  [#table(
    columns: (7%, 18%, 75%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Fast Talk];], [#ability(
      trigger: [You try to get out of a bad situation.],
      cost: [No additional cost.],
      benefit: [Use Persuade or Deceive in place of any other skill.],
      limit: [Once per scene. This swaps the skill only.],
    )],
    // PLAYTEST: R1, was redundant with core Success at a Cost (consequence or 1 Woe).
    [2a], [#strong[Change of Plans];], [#ability(
      trigger: [A social roll is a Success at a Cost.],
      cost: [No additional cost.],
      benefit: [You succeed without the cost.],
      limit: [Once per scene.],
    )],
    [2b], [#strong[Disarming];], [#ability(
      trigger: [A fight is about to start.],
      cost: [A Persuade roll.],
      benefit: [On a success, the Fight becomes a #strong[Negotiation] conflict; set the new skills before the next exchange.],
      limit: [Once per scene.],
    )],
    [3a], [#strong[★ The Long Con];], [#ability(
      trigger: [You work a con against a target.],
      cost: [No additional cost.],
      benefit: [Start a #strong[long con clock] (8) against them. Each success against them Advances it. When it fills, they give up something substantial: land, title, a secret, or their master.],
      limit: [One target per clock.],
    )],
    [3b], [#strong[Golden Tongue];], [#ability(
      trigger: [You invoke a Tychē Point on Persuade or Deceive.],
      cost: [The normal Tychē Point.],
      benefit: [The invoke gives #strong[+3] instead of +2.],
      limit: [Persuade and Deceive only.],
    )],
  )]
  , kind: table
  )
// ART: A smooth talker grinning past a pair of suspicious guards.
#art-fill(min: 6cm)[A smooth talker grinning past a pair of suspicious guards.]
#colbreak()
=== 14. Wears a Hundred Masks
#quote(block: true)[
Spy, impostor, or actor: you can be anyone.
]

- #strong[Power tags:] #emph[perfect mimic];, #emph[no one remembers my real face]
- #strong[Weakness tag:] #emph[who am I really?]
- #strong[PC link:] \"\[PC\] is the only one who knows my real name.\"

#figure(
  [#table(
    columns: (7%, 18%, 75%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Quick Change];], [#ability(
      trigger: [You disguise yourself.],
      cost: [#strong[1 Power].],
      benefit: [Create a disguise Truth, even without a disguise kit.],
      limit: [It doesn't by itself settle a disputed objective.],
    )],
    [2a], [#strong[Mimic];], [#ability(
      trigger: [You copy someone's voice, mannerisms or handwriting, or impersonate a specific person.],
      cost: [No additional cost.],
      benefit: [You can copy voices, mannerisms and handwriting. Impersonating a specific person gets a #strong[free bonus die].],
      limit: [The bonus-dice cap applies (§1.3).],
    )],
    [2b], [#strong[Deep Cover];], [#ability(
      trigger: [You establish a cover identity.],
      cost: [No resource cost. A new cover takes downtime.],
      benefit: [One persistent cover identity with a name, a credible background and one named contact who knows you by it. Record it as a Truth that lasts until the cover is blown. To expose it as false, the GM must name a credible cause and spend #strong[2 Woe]; without that, suspicion can create scrutiny or obstacles but doesn't prove the cover false.],
      limit: [One cover at a time. It doesn't protect unrelated lies, prevent arrest under the cover name or erase earlier evidence, and you can always reveal yourself.],
    )],
    [3a], [#strong[Belongs Anywhere];], [#ability(
      trigger: [A Truth about a social barrier applies (#emph[members only], #emph[high security], #emph[closed community]).],
      cost: [No additional cost.],
      benefit: [Ignore it.],
      limit: [Social barriers only.],
    )],
    [3b], [#strong[★ Become Them];], [#ability(
      trigger: [You have observed a specific NPC and prepared.],
      cost: [No additional cost.],
      benefit: [Take their place for one scene. People and ordinary identity checks accept you as them without a roll.],
      limit: [Once per session. This guarantees recognition, not obedience, and gives you none of their memories, abilities or possessions. It ends at scene end, when you reveal yourself, or when someone sees direct proof you can't be them (such as the real NPC beside you); suspicion or an unrelated failed roll isn't enough.],
    )],
  )]
  , kind: table
  )

// ART: A row of masks on a dressing table, one missing.
#art-fill(min: 6cm)[A row of masks on a dressing table, one missing.]
#colbreak()
=== 15. Knows Everyone Worth Knowing
#quote(block: true)[
Fixer, socialite, or broker: you\'re one call away from anyone.
]

- #strong[Power tags:] #emph[favours owed];, #emph[always on the guest list]
- #strong[Weakness tag:] #emph[owes favours too]
- #strong[PC link:] \"I introduced \[PC\] to the people who matter.\"

#figure(
  [#table(
    columns: (7%, 18%, 75%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Contacts];], [#ability(
      trigger: [You call on one of your contacts.],
      cost: [No additional cost.],
      benefit: [Start with #strong[3 named contacts] (Truths that last until the contact is lost). A contact you call gives a free Discover or a minor favour.],
      limit: [Calling a contact is once per session.],
    )],
    [2a], [#strong[Favour Bank];], [#ability(
      trigger: [In a Players' Turn (Module B), you help a contact, or you spend a banked favour.],
      cost: [A Check to bank a favour.],
      benefit: [Bank a #strong[favour]. Spend a favour for substantial help: a safe house, troops, a pardon.],
      limit: [Needs Module B.],
    )],
    [2b], [#strong[Gossip Network];], [#ability(
      trigger: [A session starts, or you confirm rumours (Module C).],
      cost: [No additional cost.],
      benefit: [Ask 2 Discover questions about current rumours. When confirming rumours, roll #strong[twice and choose].],
      limit: [The questions are once per session, at its start.],
    )],
    [3a], [#strong[Power Broker];], [#ability(
      trigger: [A World Turn (Module C or E).],
      cost: [No additional cost.],
      benefit: [Advance or reverse one faction or project clock by 1.],
      limit: [Once per World Turn.],
    )],
    [3b], [#strong[★ The Right Person];], [#ability(
      trigger: [You need someone for the situation.],
      cost: [No additional cost.],
      benefit: [Exactly the right contact for the situation happens to be present.],
      limit: [Once per session.],
    )],
  )]
  , kind: table
  )

// ART: A broker at a crowded party, whispering into an ear.
#art-fill(min: 6cm)[A broker at a crowded party, whispering into an ear.]
#colbreak()
=== 16. Carries the Weight of a Crown
#quote(block: true)[
Noble, officer, executive, or chieftain: you hold authority, and it holds you.
]

- #strong[Power tags:] #emph[voice of authority];, #emph[my name carries weight]
- #strong[Weakness tag:] #emph[duty before self]
- #strong[PC link:] \"\[PC\] serves me, or is the one person who refuses to.\"

#figure(
  [#table(
    columns: (7%, 18%, 75%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Rank];], [#ability(
      trigger: [You're where your authority applies (a realm, company, fleet, or clan).],
      cost: [#strong[1 Power].],
      benefit: [Create the Truth #emph[by my order].],
      limit: [Choose where your authority applies when you take this ability. It gives authority or leverage, not the disputed objective.],
    )],
    [2a], [#strong[Retainers];], [#ability(
      trigger: [Your loyal servants or aides (a group tag) help or run errands.],
      cost: [No additional cost.],
      benefit: [They give free Help and handle errands.],
      limit: [Free Help once per scene. They take no turns in conflicts.],
    )],
    [2b], [#strong[Immunity];], [#ability(
      trigger: [An authority that recognises your position would arrest you or impose a legal penalty. Invoke your status first.],
      cost: [Agree a concrete obligation now: appear at a stated time, provide a guarantor or an equivalent.],
      benefit: [The authority must suspend the arrest or penalty and refer the matter to a named superior, court or institution. You stay free pending the hearing. In a conflict, it replaces your arrest or legal penalty but not the result.],
      limit: [Once per session. It protects only you, doesn't erase the charge or undo penalties already applied, and doesn't bind those who reject your authority. It can't cancel a penalty you accepted as payment or concession.],
    )],
    // PLAYTEST: B1, was +4; matches the Word Is Law capstone.
    [3a], [#strong[Command the Field];], [#ability(
      trigger: [A Battle conflict begins.],
      cost: [No additional cost.],
      benefit: [Your side gets #strong[+3 starting Disposition].],
      limit: [A flat starting-Disposition bonus (§1.3).],
    )],
    [3b], [#strong[★ Holdings];], [#ability(
      trigger: [You act at your holding (keep, office, ship, estate).],
      cost: [No additional cost.],
      benefit: [Gain the holding as a site (Module C) with #strong[3 Truths you choose]. In a Players' Turn (Module B), one action there costs no Check.],
      limit: [The free action is once per Players' Turn.],
    )],
  )]
  , kind: table
  )
// ART: A ruler on a worn throne, petitioners waiting below.
#art-fill(min: 6cm)[A ruler on a worn throne, petitioners waiting below.]
]
