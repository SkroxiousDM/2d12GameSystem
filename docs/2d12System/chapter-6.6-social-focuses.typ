#import "common.typ": *

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
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Fast Talk];], [Once per scene, use Persuade or Deceive in place of any other skill to get out of a bad situation. This substitutes the skill, not the scripted action: it grants no extra turn and does not bypass the action interaction or declared stakes.],
    [2a], [#strong[Change of Plans];], [When a social roll results in a Success at a Cost, you may give the GM 1 Woe #strong[instead] of accepting the consequence.],
    [2b], [#strong[Disarming];], [Once per scene, stop a fight before it starts with a Persuade roll. On a success, the Fight becomes a #strong[Negotiation] conflict. Changing type within the same unresolved struggle does not refresh Disposition, injury trades or Taken Out participants; establish the new skills before the next exchange.],
    [3a], [#strong[★ The Long Con];], [Start a #strong[long con clock] (8) against a target. Each success against them Advances it. When it fills, they give up something substantial: land, title, a secret, or their master.],
    [3b], [#strong[Golden Tongue];], [Tychē Point invokes on Persuade and Deceive give #strong[+3] instead of +2.],
  )]
  , kind: table
  )

=== 14. Wears a Hundred Masks
#quote(block: true)[
Spy, impostor, or actor: you can be anyone.
]

- #strong[Power tags:] #emph[perfect mimic];, #emph[no one remembers my real face]
- #strong[Weakness tag:] #emph[who am I really?]
- #strong[PC link:] \"\[PC\] is the only one who knows my real name.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Quick Change];], [Create a disguise Truth for #strong[1 Power];, even without a disguise kit. State the Truth\'s scope and removal condition normally. This grants no additional scripted action and cannot by itself settle the disputed conflict objective.],
    [2a], [#strong[Mimic];], [You can copy voices, mannerisms, and handwriting. Impersonating a specific person gets a #strong[free bonus die];. The normal bonus-dice cap applies.],
    [2b], [#strong[Deep Cover];], [Establish one persistent cover identity with a name, a credible background and one named contact who knows you under that identity. Record it as a Truth that lasts until the cover is blown. Before the GM resolves an event that would expose the identity as false, they must identify a credible cause and spend #strong[2 Woe];. Without that spend, suspicion may create scrutiny or obstacles, but does not establish your true identity or prove the cover false. This protection does not stop you voluntarily revealing yourself. It does not protect unrelated lies, prevent arrest under the cover identity, or erase evidence already established before the cover was created. Replacing a blown cover requires establishing a new identity during downtime.],
    [3a], [#strong[Belongs Anywhere];], [Ignore Truths about social barriers (#emph[members only];, #emph[high security];, #emph[closed community];).],
    [3b], [#strong[★ Become Them];], [Once per session, after observing a specific NPC and preparing your impersonation, take their place for one scene. People and ordinary identity checks accept you as that person without a roll. This guarantees recognition, not obedience: requests, negotiations and actions beyond that person\'s ordinary access resolve normally. You gain none of their memories, abilities or possessions. The protection ends when the scene ends, you deliberately reveal yourself, or you confront someone with direct proof that you cannot be the person---such as appearing beside the real NPC. Suspicion, unfamiliarity or a failed unrelated roll alone cannot expose you.],
  )]
  , kind: table
  )
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
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Contacts];], [Start with #strong[3 named contacts] (Truths that last until the contact is lost). Once per session, call one for a free Discover or a minor favour.],
    [2a], [#strong[Favour Bank];], [In each Players\' Turn, help a contact (spend a Check) to bank a #strong[favour];. Spend a favour for substantial help: a safe house, troops, a pardon. Help arrives within the established fiction; it grants no additional scripted action or retroactive setup recalculation.],
    [2b], [#strong[Gossip Network];], [At the start of each session, ask 2 Discover questions about current rumours. When confirming rumours (Module C), roll #strong[twice and choose];.],
    [3a], [#strong[Power Broker];], [Once per World Turn (Module C), Advance or reverse one faction clock by 1.],
    [3b], [#strong[★ The Right Person];], [Once per session, exactly the right contact for the situation happens to be present. This cannot contradict resolved events or retroactively recalculate Superiority after setup.],
  )]
  , kind: table
  )

=== 16. Carries the Weight of a Crown
#quote(block: true)[
Noble, officer, executive, or chieftain: you hold authority, and it holds you.
]

- #strong[Power tags:] #emph[voice of authority];, #emph[my name carries weight]
- #strong[Weakness tag:] #emph[duty before self]
- #strong[PC link:] \"\[PC\] serves me, or is the one person who refuses to.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Rank];], [Choose where your authority applies (a realm, company, fleet, or clan). There, Create the Truth #emph[by my order] for #strong[1 Power];. The Truth provides authority or leverage; it does not automatically grant the disputed objective or bypass action interactions.],
    [2a], [#strong[Retainers];], [Gain loyal servants or aides as a group tag. They give free Help once per scene and handle errands. Free Help waives the pool-point cost, not relevance, bonus-dice limits or participation risks. These benefits grant no independent combat turn, personal Disposition or injury trade.],
    [2b], [#strong[Immunity];], [Once per session, when an authority that recognises your position would arrest you or impose a legal penalty, invoke your status before that consequence is applied. The authority must suspend that consequence and refer the matter to a named superior, court or institution entitled to hear your case. You remain free pending that hearing, but must accept a concrete obligation to answer the charge: appear at a stated time, provide a recognised guarantor, or submit to an equivalent requirement appropriate to the setting. Agree the obligation when you invoke the ability. This protects only you. It does not erase the charge, establish innocence, recover penalties already applied or protect companions. It does not bind an enemy or outlaw who rejects your authority. In a conflict, this can replace your arrest or legal penalty with the referral and obligation, but does not reverse the conflict\'s result or prevent other compatible consequences. You cannot use it to cancel a penalty you already accepted as payment or concession.],
    [3a], [#strong[Command the Field];], [In Battle conflicts, your side gets #strong[+4 starting Disposition];. Apply the +4 at full value with other flat starting-Disposition modifiers, before the minimum of 1 and opposing Superiority (Core Rules §10.2--10.3). Changing conflict type within the same unresolved struggle does not refresh Disposition or reapply setup bonuses.],
    [3b], [#strong[★ Holdings];], [Gain a holding (keep, office, ship, estate) as a site with #strong[3 Truths you choose];. Once per Players\' Turn, one action there costs no Check.],
  )]
  , kind: table
  )
]
