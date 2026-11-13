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
    [1], [#strong[Fast Talk];], [Once per scene, use Persuade or Deceive in place of any other skill to get out of a bad situation. This swaps the skill only.],
    // PLAYTEST: R1, was redundant with core Success at a Cost (consequence or 1 Woe).
    [2a], [#strong[Change of Plans];], [Once per scene, when a social roll is a Success at a Cost, you succeed without the cost.],
    [2b], [#strong[Disarming];], [Once per scene, stop a fight before it starts with a Persuade roll. On a success, the Fight becomes a #strong[Negotiation] conflict; set the new skills before the next exchange.],
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
    [1], [#strong[Quick Change];], [Create a disguise Truth for #strong[1 Power];, even without a disguise kit. It doesn\'t by itself settle a disputed objective.],
    [2a], [#strong[Mimic];], [You can copy voices, mannerisms, and handwriting. Impersonating a specific person gets a #strong[free bonus die];.],
    [2b], [#strong[Deep Cover];], [Establish one persistent cover identity with a name, a credible background and one named contact who knows you by it. Record it as a Truth that lasts until the cover is blown. To expose it as false, the GM must name a credible cause and spend #strong[2 Woe];; without that, suspicion can create scrutiny or obstacles but doesn\'t prove the cover false. It doesn\'t protect unrelated lies, prevent arrest under the cover name or erase earlier evidence, and you can always reveal yourself. A new cover takes downtime.],
    [3a], [#strong[Belongs Anywhere];], [Ignore Truths about social barriers (#emph[members only];, #emph[high security];, #emph[closed community];).],
    [3b], [#strong[★ Become Them];], [Once per session, after observing a specific NPC and preparing, take their place for one scene. People and ordinary identity checks accept you as them without a roll. This guarantees recognition, not obedience, and gives you none of their memories, abilities or possessions. It ends at scene end, when you reveal yourself, or when someone sees direct proof you can\'t be them (such as the real NPC beside you); suspicion or an unrelated failed roll isn\'t enough.],
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
    [2a], [#strong[Favour Bank];], [In each Players\' Turn (Module B), help a contact (spend a Check) to bank a #strong[favour];. Spend a favour for substantial help: a safe house, troops, a pardon.],
    [2b], [#strong[Gossip Network];], [At the start of each session, ask 2 Discover questions about current rumours. When confirming rumours (Module C), roll #strong[twice and choose];.],
    [3a], [#strong[Power Broker];], [Once per World Turn (Module C or E), advance or reverse one faction or project clock by 1.],
    [3b], [#strong[★ The Right Person];], [Once per session, exactly the right contact for the situation happens to be present.],
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
    [1], [#strong[Rank];], [Choose where your authority applies (a realm, company, fleet, or clan). There, Create the Truth #emph[by my order] for #strong[1 Power];. It gives authority or leverage, not the disputed objective.],
    [2a], [#strong[Retainers];], [Gain loyal servants or aides as a group tag. They give free Help once per scene and handle errands, but take no turns in conflicts.],
    [2b], [#strong[Immunity];], [Once per session, when an authority that recognises your position would arrest you or impose a legal penalty, invoke your status first. The authority must suspend it and refer the matter to a named superior, court or institution. You stay free pending the hearing, but agree a concrete obligation now: appear at a stated time, provide a guarantor or an equivalent. It protects only you, doesn\'t erase the charge or undo penalties already applied, and doesn\'t bind those who reject your authority. In a conflict, it replaces your arrest or legal penalty but not the result, and it can\'t cancel a penalty you accepted as payment or concession.],
    // PLAYTEST: B1, was +4; matches the Word Is Law capstone.
    [3a], [#strong[Command the Field];], [In Battle conflicts, your side gets #strong[+3 starting Disposition];.],
    [3b], [#strong[★ Holdings];], [Gain a holding (keep, office, ship, estate) as a site (Module C) with #strong[3 Truths you choose];. Once per Players\' Turn (Module B), one action there costs no Check.],
  )]
  , kind: table
  )
]
