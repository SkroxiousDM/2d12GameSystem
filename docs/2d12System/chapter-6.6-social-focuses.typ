#import "common.typ": *
#pagebreak() 
== 6. Social Focuses <foc-social-focuses>
#columns(2, gutter: 6mm)[
=== 13. Talks Their Way Out of Anything
#quote(block: true)[
Charm, quick wit, and the right words at the right time.
]

- #strong[Tags:] #emph[always has a story ready];, #emph[disarming smile];, #emph[my mouth writes cheques]
- #strong[PC link:] \"\[PC\] has bailed me out more than once; I owe them.\"

#figure(
  [#table(
    columns: (7%, 18%, 75%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Fast Talk];], [#ability(
      trigger: [You try to get out of a bad situation through speech, deception, bargaining, or distraction.],
      cost: [No additional cost.],
      benefit: [Use Persuade or Deceive instead of the skill the action would normally require.],
      limit: [Once per scene. Your approach must genuinely use the chosen skill. This changes only the skill: it does not make an impossible action possible, change a scripted action's interaction, or permit additional Effects.],
    )],
    // PLAYTEST: R1, was redundant with core Success at a Cost (consequence or 1 Woe).
    [2a], [#strong[Change of Plans];], [#ability(
      trigger: [A social roll is a Success at a Cost.],
      cost: [No additional cost.],
      benefit: [You succeed without the cost.],
      limit: [Once per scene.],
    )],
    [2b], [#strong[Disarming];], [#ability(
      trigger: [A fight is about to start, or a Fight conflict is under way.],
      cost: [A Persuade roll. During a Fight conflict, the roll is #strong[one Difficulty step harder].],
      benefit: [On a success, the Fight becomes a #strong[Negotiation] conflict. Before it starts, the conflict begins as a Negotiation; during it, set the new skills before the next exchange.],
      limit: [Once per scene.],
    )],
    [3a], [#strong[★ The Long Con];], [#ability(
      trigger: [You work a con against a target.],
      cost: [No additional cost.],
      benefit: [Start a #strong[long con clock] (8) against them. On each success against them, spend Power on the #strong[Advance] effect to fill it (1 Power per segment; Core Rules @core-effects). When it fills, they give up something substantial: land, title, a secret, or their master.],
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

- #strong[Tags:] #emph[perfect mimic];, #emph[no one remembers my real face];, #emph[who am I really?]
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
      benefit: [Create a disguise Truth, or instead a helpful rating-1 Situational Condition (#emph[convincing disguise 1]), even without a disguise kit.],
      limit: [One Truth or one Condition, rating 1 only. It doesn't by itself settle a disputed objective.],
    )],
    [2a], [#strong[Mimic];], [#ability(
      trigger: [You copy someone's voice, mannerisms or handwriting, or impersonate a specific person.],
      cost: [No additional cost.],
      benefit: [You can copy voices, mannerisms and handwriting. Impersonating a specific person gets a #strong[free bonus die].],
      limit: [The bonus-dice cap applies (@foc-ability-limits).],
    )],
    [2b], [#strong[Deep Cover];], [#ability(
      trigger: [You establish a cover identity.],
      cost: [No resource cost. A new cover takes downtime.],
      benefit: [One persistent cover identity with a name, a credible background and one named contact who knows you by it. Record it as a Truth that lasts until the cover is blown. To expose it as false, the GM must name a credible cause and spend #strong[2 Woe]; without that, suspicion can create scrutiny or obstacles but doesn't prove the cover false.],
      limit: [One cover at a time. It doesn't protect unrelated lies, prevent arrest under the cover name or erase earlier evidence, and you can always reveal yourself.],
    )],
    [3a], [#strong[Belongs Anywhere];], [#ability(
      trigger: [A social barrier applies (#emph[Members Only], #emph[High Security], #emph[Closed Community]), as a Truth or a harmful Situational Condition.],
      cost: [No additional cost.],
      benefit: [Ignore its penalty, and the Truth doesn't stop you attempting to enter or mingle. If the outcome is still uncertain, roll normally.],
      limit: [Social barriers only. It doesn't grant authority, credentials or the disputed objective.],
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

- #strong[Tags:] #emph[favours owed];, #emph[always on the guest list];, #emph[owes favours too]
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
      trigger: [You complete meaningful help for a named contact, or call in an already-recorded favour.],
      cost: [Earning a favour requires help involving a real expenditure, risk, or obligation. Calling one in uses an existing favour; it earns no new favour.],
      benefit: [After completing the help, agree one favour the contact acknowledges owing you. Record the contact, the service and its limits, any required notice, and what fulfils it. Call it in for assistance within those terms and the contact's established means, such as safe lodging, transport, an introduction, or access to ordinary records. Erase it when fulfilled. With Module B: A Players' Turn action spent helping the contact can earn the favour if it meets these requirements. Pay the normal Check cost; the action is not automatic. With Module E: Use its favour record and settlement rules for the same promise, not a second favour.],
      limit: [Earn at most one favour per session and hold at most two outstanding favours from this ability, across all contacts. State the assistance before calling it in. It cannot guarantee victory in an unresolved conflict, compel personal betrayal, or require resources the contact does not possess. If fulfilment becomes impossible, the favour remains outstanding until fulfilled or an alternative settlement is agreed.],
    )],
    [2b], [#strong[Gossip Network];], [#ability(
      trigger: [A session starts. With Module C, this ability also applies when you confirm rumours.],
      cost: [No additional cost.],
      benefit: [Ask two Discover questions about current rumours. With Module C: When confirming a rumour, roll twice and choose.],
      limit: [The questions are once per session, at its start.],
    )],
    [3a], [#strong[Power Broker];], [#ability(
      trigger: [You arrange a concrete contribution through established contacts to influence an upcoming conflict. With Module C or E, you may instead arrange a contribution that advances or obstructs an established faction or project clock.],
      cost: [Describe the contact's contribution and meet any agreed price or obligation.],
      benefit: [For a conflict, choose one: your side gains +2 starting Disposition, or the opposing side takes −2 starting Disposition. With Module C or E: Instead of the Disposition modifier, advance or reverse one relevant faction or project clock by 2 segments.],
      limit: [Once per session, choosing either use. For a conflict, declare the modifier before starting Disposition is calculated; the conflict must concern an institution, organisation, or public matter the contact can materially influence. For a project, identify the clock and the contact's method before applying progress or disruption; the contact must be able to affect it. Apply normal project-resolution timing. This cannot reverse a completed project or count the same contribution twice. The same arrangement grants no second Power Broker benefit.],
    )],
    [3b], [#strong[★ The Right Person];], [#ability(
      trigger: [You need a contact with particular knowledge, access, or influence.],
      cost: [No additional cost.],
      benefit: [Declare an appropriate contact present in the current scene. They have the knowledge, access, or influence you specified and are willing to hear your request. They provide one true, useful answer or one minor favour without requiring a roll or payment.],
      limit: [Once per session. Greater assistance requires whatever negotiation, payment, or obligation the situation warrants. Their presence cannot contradict established events, and they cannot grant authority or access they do not possess.],
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

- #strong[Tags:] #emph[voice of authority];, #emph[my name carries weight];, #emph[duty before self]
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
      benefit: [Create the Truth #emph[By My Order].],
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
      limit: [A flat starting-Disposition bonus (@foc-ability-limits).],
    )],
    [3b], [#strong[★ Holdings];], [#ability(
      trigger: [You establish your holding or use its facilities.],
      cost: [No additional ability cost. Work performed there still takes its normal time, materials, rolls, and other payments.],
      benefit: [Gain a holding appropriate to your authority: a keep, office, ship, estate, or similar base. Choose one function: treatment, research, crafting, or training. Once per session, you or one ally using that function gains one free bonus die on a relevant roll there. With Module C: Record the holding as a site with three agreed Truths; these describe the holding rather than grant additional mechanical bonuses. With Module B: Once per Players' Turn, you may waive the 1-Check cost of one individual action performed by you or one ally using the holding's chosen function. With Module D: Use this benefit once per stay instead, on one individual endeavour, whether or not Module B is enabled. It does not pay for a shared endeavour or waive time, materials, rolls, or other costs.],
      limit: [One holding and one chosen function. Ownership does not make it immune to threats or guarantee access when events prevent it. Changing the function requires downtime.],
    )],
  )]
  , kind: table
  )
// ART: A ruler on a worn throne, petitioners waiting below.
#art-fill(min: 6cm)[A ruler on a worn throne, petitioners waiting below.]
]
