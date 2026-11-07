#import "common.typ": *

== 8. Weird Focuses ◈
#columns(2, gutter: 6mm)[
=== 21. Hunts the Things in the Dark ◈
#quote(block: true)[
Monster-hunter, exorcist, or investigator of the strange.
]

- #strong[Power tags:] #emph[knows their weaknesses];, #emph[silver, salt, and iron]
- #strong[Weakness tag:] #emph[the dark hunts me back]
- #strong[PC link:] \"\[PC\] saw what I saw that night, and they\'re the only one who believes me.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Monster Lore];], [Once per scene, Discover a supernatural creature\'s weakness tag without rolling.],
    [2a], [#strong[Bane];], [Against a creature whose weakness you\'ve exploited, your successful conflict Attacks remove #strong[1 additional Disposition] when applying ordinary Attack Disposition loss. When an Attack instead inflicts a harmful status, increase that status by #strong[1 tier];. If an explicit effect inflicts both, choose one component for this bonus, never both. This adds no status to an ordinary conflict Attack and does not improve staking, killing strikes or other creature-specific finishing procedures.],
    [2b], [#strong[Ward the Threshold];], [Spend a scene preparing a location. For one night, supernatural creatures must beat #strong[Formidable 21] to cross it.],
    [3a], [#strong[Unshake-able];], [When you Resist fear, possession, or corruption with Pneuma, the cost is #strong[0 on a highest die of 5+];, and you reduce the status by 3 tiers.],
    [3b], [#strong[★ Nemesis];], [Name a supernatural foe. You always sense its direction, and your rolls against it get a #strong[free bonus die];. This die counts toward the normal +2 bonus-dice cap and grants no additional scripted turn (Core Rules §2.4, §10.5).],
  )]
  , kind: table
  )

=== 22. Walks Between Worlds ◈
#quote(block: true)[
Touched by the spirit world, the Otherworld, or the deep net.
]

- #strong[Power tags:] #emph[one foot across the veil];, #emph[spirits whisper to me]
- #strong[Weakness tag:] #emph[not quite of this world]
- #strong[PC link:] \"\[PC\] anchors me. Without them, I\'d drift away.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Spirit Sight];], [You can see and speak with spirits, ghosts, or digital entities. Once per scene, a Discover about them costs #strong[0 Power];.],
    [2a], [#strong[Crossing];], [With a 4-segment ritual clock, step into the other world and back, bringing up to two allies.],
    [2b], [#strong[Ghostly Ally];], [A minor spirit follows you. Once per scene, it gives a free Discover about places it can reach. This is an information asset; the benefit grants no independent combat turn, personal Disposition or injury trade.],
    [3a], [#strong[Ally Beyond];], [Gain a powerful patron in the other world. Once per session, call on it for a #strong[Heroic-scope favour];; the GM gets a compel on your weakness tag in return.],
    [3b], [#strong[★ Half-Step];], [Once per scene, become intangible until your next action. Ignore one incoming imposed physical status. This does not cancel shared Disposition loss, injury-trade payments, running-dry statuses, agreed concession costs or other accepted payments.],
  )]
  , kind: table
  )
#colbreak()
=== 23. Made a Bargain With Something Old ◈
#quote(block: true)[
Warlock, cursed heir, or desperate deal-maker. You have power, and a debt.
]

- #strong[Power tags:] #emph[patron\'s gift];, #emph[knows the old names]
- #strong[Weakness tag:] #emph[the debt comes due]
- #strong[PC link:] \"\[PC\] knows what I traded, and hasn\'t told anyone.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Patron\'s Gift];], [Gain a #strong[minor Domain] (Generic Playbooks §8.1) tied to your patron. You can perform Easy and Standard workings with Arcana, paying Pneuma. If you\'re already an Adept, your Domain gets #strong[+1 power tag] instead. Domain permission grants no additional scripted turn and does not bypass action interactions or declared stakes.],
    [2a], [#strong[Ask the Patron];], [Once per session, ask #strong[two] Discover questions. The GM gains 1 Woe.],
    [2b], [#strong[Not Yet];], [Once per session, after normal reduction and stacking are determined, when an imposed harmful status would reach #strong[tier 6] on you, invoke your patron. Record that status at #strong[tier 5] instead. You are not Taken Out by that increase and gain no Scar from reaching tier 6, because the status does not reach it. Other statuses and restrictions still apply. The GM receives one free compel on #emph[the debt comes due] next session. This cannot prevent shared-Disposition defeat, reverse death or a settled outcome, or reduce an accepted payment.],
    [3a], [#strong[Greater Gift];], [Your patron Domain works up to #strong[Formidable 21];.],
    [3b], [#strong[★ Borrowed Might];], [Once per session, call on your patron\'s power directly: gain #strong[4 Power] to spend on any Effects without a roll. The GM gains 3 Woe.],
  )]
  , kind: table
  )

=== 24. Is More Than Human ◈
#quote(block: true)[
Mutant, cyborg, half-fae, or carrier of a strange bloodline.
]

- #strong[Power tags:] #emph[\[your trait\]];, #emph[unnatural resilience]
- #strong[Weakness tag:] #emph[outsider]
- #strong[PC link:] \"\[PC\] saw me change and stayed anyway.\"

#figure(
  [#table(
    columns: (7%, 20%, 73%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Gift];], [Choose a trait (claws, enhanced senses, night vision, gills, wings, cyber-arm). Its tag may add #strong[+1 above the normal +2 cap (maximum +3)] on related rolls. Gain +2 to one pool.],
    [2a], [#strong[Second Trait];], [Choose another trait. It also may add #strong[+1 above the normal cap (maximum +3)];.],
    [2b], [#strong[Regeneration];], [A short rest clears #strong[one tier-1 physical status];. A full rest clears 2 tiers from every physical status. This heals existing statuses; it does not prevent an accepted payment from being recorded, restore Disposition, refresh injury trades or erase Scars.],
    [3a], [#strong[Apex Form];], [Once per scene, unleash your nature: a #strong[free bonus die] on Sōma and Mētis skills for the scene. This die counts toward the normal +2 bonus-dice cap and grants no additional scripted turn (Core Rules §2.4, §10.5). At scene end, take #emph[Weary] as an accepted payment. Prevention, redirection, Resistance and incidental clearing benefits cannot cancel that payment; once recorded, it recovers normally.],
    [3b], [#strong[★ Beyond Limits];], [Gain #strong[+1 Edge] in two pools (max 3 each).],
  )]
  , kind: table
  )
]
