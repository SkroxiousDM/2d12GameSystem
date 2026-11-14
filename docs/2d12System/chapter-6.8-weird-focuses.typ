#import "common.typ": *
#pagebreak()
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
    // PLAYTEST: Balance FO B7, rider added (overlaps Beast Lore).
    [1], [#strong[Monster Lore];], [Once per scene, Discover a supernatural creature\'s weakness tag without rolling. You also know one thing that repels or binds it (salt, iron, a name).],
    // PLAYTEST: Balance FO B7, rider added (overlaps Brutal).
    [2a], [#strong[Bane];], [Against a creature whose weakness you\'ve exploited, a successful conflict Attack removes #strong[1 additional Disposition];, or, if it inflicts a harmful status, raises that status by #strong[1 tier] (never both). The first time you exploit a weakness against a creature, also Discover one more of its weaknesses or abilities for free. It adds no status to an ordinary Attack and doesn\'t improve staking, killing strikes or other finishing procedures.],
    [2b], [#strong[Ward the Threshold];], [Spend an uninterrupted scene preparing one clearly defined entrance and state which side it protects. Until the next dawn, supernatural creatures can\'t cross without overcoming the ward: a Will test against #strong[Formidable 21] (Success at a Cost counts). Success lets that creature cross and ends the ward against it; failure leaves it outside. In a scripted conflict, crossing takes a Maneuver resolved as an independent Will test, at most once per exchange per creature, with no ordinary Maneuver effects; the opposing action also resolves independently. The ward doesn\'t stop attacks or Effects that reach across. Destroying the markings ends it.],
    [3a], [#strong[Unshake-able];], [When you Resist fear, possession, or corruption with Pneuma, the cost is #strong[0 on a Resistance result of 5+];, and you reduce the status by 3 tiers.],
    [3b], [#strong[★ Nemesis];], [Name a supernatural foe. You always sense its direction, and your rolls against it get a #strong[free bonus die];.],
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
    [2b], [#strong[Ghostly Ally];], [A minor spirit follows you. Once per scene, it gives a free Discover about places it can reach. It\'s an information asset, not a conflict participant.],
    [3a], [#strong[Ally Beyond];], [Gain a powerful patron in the other world. Once per session, call on it for a #strong[Heroic-scope favour];; the GM gets a compel on your weakness tag in return.],
    [3b], [#strong[★ Half-Step];], [Once per scene, become intangible until your next action. Ignore one incoming imposed physical status.],
  )]
  , kind: table
  )
  
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
    [1], [#strong[Patron\'s Gift];], [Gain a #strong[minor Domain] (Generic Playbooks §8.1) tied to your patron. You can perform Easy and Standard workings with Arcana, paying Pneuma. If you\'re already an Adept, your Domain gets #strong[+1 power tag] instead.],
    [2a], [#strong[Ask the Patron];], [Once per session, ask #strong[two] Discover questions. The GM gains 1 Woe.],
    [2b], [#strong[Not Yet];], [Once per session, after reduction and stacking, when an imposed harmful status would reach #strong[tier 6] on you, invoke your patron: record it at #strong[tier 5] instead, so you aren\'t Taken Out by it and gain no Scar. The GM gets one free compel on #emph[the debt comes due] next session. It can\'t prevent a shared-Disposition defeat or reverse death or a settled outcome.],
    [3a], [#strong[Greater Gift];], [Your patron Domain works up to #strong[Formidable 21];.],
    // PLAYTEST: Balance FO B6, no Heroic scope, so it can't act as a second Ascendant.
    [3b], [#strong[★ Borrowed Might];], [Once per session, before rolling an action that draws on your patron\'s Domain, give the GM #strong[3 Woe];. The action succeeds automatically with #strong[4 Power];, spent at once on Effects that action permits within the Domain\'s scope. It can\'t be used for a Heroic-scope working. A trumped action stays trumped; in a versus test it wins unless the other side also succeeds automatically, which makes a tie. The Power can\'t be banked or improve a finishing procedure that doesn\'t permit it.],
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
    // PLAYTEST: R2, short rest = Second or Third rest, full rest = Fourth rest (Core Rules §6.5).
    [2b], [#strong[Regeneration];], [A Second or Third rest clears #strong[one tier-1 physical status];. A Fourth rest clears 2 tiers from every physical status.],
    // PLAYTEST: fallback matches Berserker and Unleash (Generic Playbooks); confirm in playtest.
    [3a], [#strong[Apex Form];], [Once per scene, unleash your nature: a #strong[free bonus die] on Sōma and Mētis skills for the scene. At scene end, take #emph[Weary] (Module B; without it, exhausted-2 until a night\'s rest) as an accepted payment.],
    [3b], [#strong[★ Beyond Limits];], [Gain #strong[+1 Edge] in two pools (max 3 each).],
  )]
  , kind: table
  )
]
