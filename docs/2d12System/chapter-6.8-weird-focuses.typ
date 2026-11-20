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
    columns: (7%, 18%, 75%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    // PLAYTEST: Balance FO B7, rider added (overlaps Beast Lore).
    [1], [#strong[Monster Lore];], [#ability(
      trigger: [You study a supernatural creature.],
      cost: [No additional cost.],
      benefit: [Discover its weakness tag without rolling. You also know one thing that repels or binds it (salt, iron, a name).],
      limit: [Once per scene.],
    )],
    // PLAYTEST: Balance FO B7, rider added (overlaps Brutal).
    [2a], [#strong[Bane];], [#ability(
      trigger: [You succeed on a conflict Attack against a creature whose weakness you've exploited, or exploit a creature's weakness for the first time.],
      cost: [No additional cost.],
      benefit: [The Attack removes #strong[1 additional Disposition], or, if it inflicts a harmful status, raises that status by #strong[1 tier] (never both). The first time you exploit a weakness against a creature, also Discover one more of its weaknesses or abilities for free.],
      limit: [It adds no status to an ordinary Attack and doesn't improve killing strikes or other finishing procedures.],
    )],
    [2b], [#strong[Ward the Threshold];], [#ability(
      trigger: [You spend an uninterrupted scene preparing one clearly defined entrance and state which side it protects.],
      cost: [The uninterrupted scene.],
      benefit: [Supernatural creatures can't cross without overcoming the ward: a Will test against #strong[Formidable 21] (Success at a Cost counts). Success lets that creature cross and ends the ward against it; failure leaves it outside. In a scripted conflict, crossing takes a Maneuver resolved as an independent Will test, with no ordinary Maneuver effects; the opposing action also resolves independently.],
      limit: [Until the next dawn. At most one crossing attempt per exchange per creature. The ward doesn't stop attacks or Effects that reach across. Destroying the markings ends it.],
    )],
    [3a], [#strong[Unshake-able];], [#ability(
      trigger: [You Resist fear, possession or corruption with Pneuma.],
      cost: [The normal Resistance cost, reduced as below.],
      benefit: [The cost is #strong[0 on a Resistance result of 5+], and you reduce the status by 3 tiers.],
      limit: [Only those sources, and only with Pneuma.],
    )],
    [3b], [#strong[★ Nemesis];], [#ability(
      trigger: [You act against your named supernatural foe.],
      cost: [No additional cost.],
      benefit: [You always sense its direction, and your rolls against it get a #strong[free bonus die].],
      limit: [Name the foe when you take this ability. Once it's destroyed, you can name a new foe only at a milestone (Core Rules §12). The bonus-dice cap applies (§1.3).],
    )],
  )]
  , kind: table
  )

// ART: A hunter with a lantern stepping into a cellar full of eyes.
#art-fill(min: 6cm)[A hunter with a lantern stepping into a cellar full of eyes.]
#colbreak()
=== 22. Walks Between Worlds ◈
#quote(block: true)[
Touched by the spirit world, the Otherworld, or the deep net.
]

- #strong[Power tags:] #emph[one foot across the veil];, #emph[spirits whisper to me]
- #strong[Weakness tag:] #emph[not quite of this world]
- #strong[PC link:] \"\[PC\] anchors me. Without them, I\'d drift away.\"

#figure(
  [#table(
    columns: (7%, 18%, 75%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Spirit Sight];], [#ability(
      trigger: [You encounter spirits, ghosts or digital entities.],
      cost: [No additional cost.],
      benefit: [You can see and speak with them. A Discover about them costs #strong[0 Power].],
      limit: [The free Discover is once per scene.],
    )],
    [2a], [#strong[Crossing];], [#ability(
      trigger: [You step into the other world.],
      cost: [A 4-segment ritual clock.],
      benefit: [Step into the other world and back, bringing up to two allies.],
      limit: [Up to two allies.],
    )],
    [2b], [#strong[Ghostly Ally];], [#ability(
      trigger: [Your minor spirit scouts for you.],
      cost: [No additional cost.],
      benefit: [It gives a free Discover about places it can reach.],
      limit: [Once per scene. It's an information asset, not a conflict participant.],
    )],
    [3a], [#strong[Ally Beyond];], [#ability(
      trigger: [You call on your patron in the other world.],
      cost: [The GM gets a compel on your weakness tag in return. You must accept it, and it earns no Tychē (Core Rules §4).],
      benefit: [A #strong[Heroic-scope favour].],
      limit: [Once per session.],
    )],
    [3b], [#strong[★ Half-Step];], [#ability(
      trigger: [You become intangible.],
      cost: [No additional cost.],
      benefit: [Until your next action, ignore one incoming imposed physical status.],
      limit: [Once per scene.],
    )],
  )]
  , kind: table
  )
  
// ART: A figure half-stepping through a shimmering veil between worlds.
#art-fill(min: 6cm)[A figure half-stepping through a shimmering veil between worlds.]
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
    columns: (7%, 18%, 75%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Patron\'s Gift];], [#ability(
      trigger: [You perform a working tied to your patron.],
      cost: [Pay Pneuma for workings.],
      benefit: [Gain a #strong[minor Domain] (Generic Playbooks §8.1) tied to your patron; you can perform Easy and Standard workings with Arcana. If you're already an Adept, your Domain gets #strong[+1 power tag] instead.],
      limit: [Easy and Standard workings only.],
    )],
    [2a], [#strong[Ask the Patron];], [#ability(
      trigger: [You ask your patron for answers.],
      cost: [The GM gains 1 Woe.],
      benefit: [Ask #strong[two] Discover questions without rolling or spending Power.],
      limit: [Once per session.],
    )],
    [2b], [#strong[Not Yet];], [#ability(
      trigger: [After reduction and stacking, an imposed harmful status would reach #strong[tier 6] on you.],
      cost: [The GM gets one free compel on #emph[the debt comes due] next session.],
      benefit: [Invoke your patron: record it at #strong[tier 5] instead, so you aren't Taken Out by it and gain no Scar.],
      limit: [Once per session. It can't prevent a shared-Disposition defeat or reverse death or a settled outcome.],
    )],
    [3a], [#strong[Greater Gift];], [#ability(
      trigger: [You perform a patron Domain working.],
      cost: [No additional cost.],
      benefit: [Your patron Domain works up to #strong[Formidable 21].],
      limit: [No additional limit.],
    )],
    // PLAYTEST: Balance FO B6, no Heroic scope, so it can't act as a second Ascendant.
    [3b], [#strong[★ Borrowed Might];], [#ability(
      trigger: [You're about to roll an action that draws on your patron's Domain. Use it before rolling.],
      cost: [Give the GM #strong[3 Woe].],
      benefit: [The action succeeds automatically with #strong[4 Power], spent at once on Effects that action permits within the Domain's scope.],
      limit: [Once per session. Not for a Heroic-scope working. A trumped action stays trumped; in a versus test it wins unless the other side also succeeds automatically, which makes a tie. The Power can't be banked or improve a finishing procedure that doesn't permit it.],
    )],
  )]
  , kind: table
  )

#colbreak()
=== 24. Is More Than Human ◈
#quote(block: true)[
Mutant, cyborg, half-fae, or carrier of a strange bloodline.
]

- #strong[Power tags:] #emph[\[your trait\]];, #emph[unnatural resilience]
- #strong[Weakness tag:] #emph[outsider]
- #strong[PC link:] \"\[PC\] saw me change and stayed anyway.\"

#figure(
  [#table(
    columns: (7%, 18%, 75%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Gift];], [#ability(
      trigger: [You make a roll related to your chosen trait (claws, enhanced senses, night vision, gills, wings, cyber-arm).],
      cost: [No additional cost.],
      benefit: [The trait's tag may add #strong[+1 above the normal +2 cap (maximum +3)]. Gain +2 to one pool.],
      limit: [Related rolls only.],
    )],
    [2a], [#strong[Second Trait];], [#ability(
      trigger: [You make a roll related to your second trait.],
      cost: [No additional cost.],
      benefit: [Choose another trait. It also may add #strong[+1 above the normal cap (maximum +3)].],
      limit: [Related rolls only.],
    )],
    // PLAYTEST: R2, short rest = Second or Third rest, full rest = Fourth rest (Core Rules §6.5).
    [2b], [#strong[Regen­era­tion];], [#ability(
      trigger: [You take a Second, Third or Fourth rest.],
      cost: [No additional cost.],
      benefit: [A Second or Third rest lowers #strong[one physical status by 1 tier]. A Fourth rest clears 2 tiers from every physical status.],
      limit: [No additional limit.],
    )],
    // PLAYTEST: fallback matches Berserker and Unleash (Generic Playbooks); confirm in playtest.
    [3a], [#strong[Apex Form];], [#ability(
      trigger: [You unleash your nature.],
      cost: [At scene end, take #emph[Weary] (Module B; without it, exhausted-2 until a night's rest) as an accepted payment.],
      benefit: [A #strong[free bonus die] on Sōma and Mētis skills for the scene.],
      limit: [Once per scene.],
    )],
    [3b], [#strong[★ Beyond Limits];], [#ability(
      trigger: [Always, for the two chosen pools.],
      cost: [No additional cost.],
      benefit: [Gain #strong[+1 Edge] in two pools.],
      limit: [Maximum 3 Edge in each pool.],
    )],
  )]
  , kind: table
  )
]
