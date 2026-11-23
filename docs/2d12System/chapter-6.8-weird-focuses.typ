#import "common.typ": *
#pagebreak() 
== 8. Weird Focuses ◈ <foc-weird-focuses>
=== 21. Hunts the Things in the Dark ◈
#quote(block: true)[
Monster-hunter, exorcist, or investigator of the strange.
]

- #strong[Tags:] #emph[I Study What Hunts Us];, #emph[I Carry the Hunt With Me]
- #strong[PC link:] \"\[PC\] saw what I saw that night, and they\'re the only one who believes me.\"

#emph[I Study What Hunts Us]

Power: Identify strange threats and prepare against their known weaknesses. \
Compel: You approach something dangerous to learn more or test a theory.

#emph[I Carry the Hunt With Me]

Power: Recognise signs of your quarry and draw resolve from your purpose. \
Compel: The hunt intrudes on a safe place, relationship, or unrelated obligation.

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
    // PLAYTEST: Balance FO B7, rider added (overlaps Brutal). Once per scene since weaknesses supply +1 Power outside the cap.
    [2a], [#strong[Bane];], [#ability(
      trigger: [You succeed on a conflict Attack against a creature whose weakness you've exploited, or exploit a creature's weakness for the first time.],
      cost: [No additional cost.],
      benefit: [The Attack removes #strong[1 additional Disposition], or, if it inflicts a harmful status, raises that status by #strong[1 tier] (never both). The first time you exploit a weakness against a creature, also Discover one more of its weaknesses or abilities for free.],
      limit: [The extra Disposition or tier applies #strong[once per scene], to your first successful exploiting Attack; the weakness's own +1 Power applies as normal. It adds no status to an ordinary Attack and doesn't improve finishing procedures.],
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
      limit: [Name the foe when you take this ability. Once it's destroyed, you can name a new foe only at a milestone (Core Rules @core-advancement). The bonus-dice cap applies (@foc-ability-limits).],
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

- #strong[Tags:] #emph[One Foot Across the Veil];, #emph[The Other Side Knows My Name]
- #strong[PC link:] \"\[PC\] anchors me. Without them, I\'d drift away.\"

#emph[One Foot Across the Veil]

Power: Interpret and navigate your established connection to the other world. \
Compel: Otherworldly concerns distract you or make ordinary life difficult.

#emph[The Other Side Knows My Name]

Power: Establish recognition and relationships with otherworldly beings. \
Compel: A being recognises you when you would rather remain unknown or calls upon that relationship.

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
      trigger: [You send your minor spirit to scout, carry a message, or handle a simple task.],
      cost: [No additional cost.],
      benefit: [It can pass through ordinary solid barriers and gives one free Discover question per scene about places it can reach.],
      limit: [Supernatural wards or barriers that explicitly stop spirits block it. It cannot carry physical objects through barriers or act as a conflict participant.],
    )],
    [3a], [#strong[Ally Beyond];], [#ability(
      trigger: [You call on your patron in the other world.],
      cost: [The GM gets a compel on one of your Focus tags in return. You must accept it, and it earns no Tychē (Core Rules @core-tyche-points).],
      benefit: [A #strong[World-shaking favour].],
      limit: [Once per session.],
    )],
    [3b], [#strong[★ Half-Step];], [#ability(
      trigger: [An imposed physical status would affect you, or you attempt to pass through a solid obstacle.],
      cost: [No additional cost.],
      benefit: [Choose one: cancel that imposed physical status on yourself; or pass through one solid obstacle no thicker than your body length, carrying your worn and held equipment. The cancellation option resolves immediately before the status is applied and requires no scripted action.],
      limit: [Once per scene, choosing either benefit. Outside scripted conflicts, passage takes your normal action where one is required. In a scripted conflict, passage requires a successful Maneuver and happens instead of its ordinary Maneuver effects. Resolve the action interaction normally. The passage requires no Power purchase. You must finish in an unoccupied space. It does not cross a barrier that explicitly blocks spirits or intangible beings.],
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

- #strong[Tags:] #emph[My Patron Invested in Me];, #emph[I Am Bound by the Old Terms]
- #strong[PC link:] \"\[PC\] knows what I traded, and hasn\'t told anyone.\"

#emph[My Patron Invested in Me]

Power: Draw on your granted gift or standing as the patron’s chosen agent. \
Compel: Your patron intervenes to protect its investment rather than your wishes.

#emph[I Am Bound by the Old Terms]

Power: Invoke the bargain’s protections and interpret its established terms. \
Compel: A condition, prohibition, or payment becomes inconveniently relevant.

Define the patron and the bargain's key terms at creation. These tags provide leverage and complications; they do not introduce unspecified powers or retroactively invent contractual protections.

#figure(
  [#table(
    columns: (7%, 18%, 75%),
    align: (auto,auto,auto,),
    table.header([Tier], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Patron\'s Gift];], [#ability(
      trigger: [You perform a working within your patron's gift.],
      cost: [Pay the normal 1-point working cost from Pneuma, plus any Effort.],
      benefit: [Gain a minor Domain tied to your patron. Use Arcana for its workings. The patron Domain counts as a relevant tag on its workings, supplying Tag Power within the normal cap.],
      limit: [This Domain permits only Minor and Significant scope, including during scripted conflicts. It follows the Adept working and Backlash rules (Generic Playbooks @pb-adept-core-feature). If you already have a Domain, this is a separate, narrower Domain; choose a distinct gift.],
    )],
    [2a], [#strong[Ask the Patron];], [#ability(
      trigger: [You ask your patron for answers.],
      cost: [No additional cost.],
      benefit: [Ask two Discover questions within your patron's knowledge, without rolling or spending Power.],
      limit: [Once per session.],
    )],
    [2b], [#strong[Not Yet];], [#ability(
      trigger: [After reduction and stacking, an imposed harmful status would reach #strong[tier 6] on you.],
      cost: [The GM gets one free compel on #emph[I Am Bound by the Old Terms] next session.],
      benefit: [Invoke your patron: record it at #strong[tier 5] instead, so you aren't Taken Out by it and gain no Scar.],
      limit: [Once per session. It can't prevent a shared-Disposition defeat or reverse death or a settled outcome.],
    )],
    [3a], [#strong[Greater Gift];], [#ability(
      trigger: [You perform a working within the minor Domain granted by Patron's Gift.],
      cost: [The normal working cost.],
      benefit: [That Domain now permits workings up to Spectacular scope.],
      limit: [This replaces Patron's Gift's Minor-and-Significant scope limit; its Arcana, Pneuma, Backlash, and conflict rules remain unchanged.],
    )],
    // PLAYTEST: Balance FO B6, no World-shaking scope, so it can't act as a second Ascendant.
    [3b], [#strong[★ Borrowed Might];], [#ability(
      trigger: [You're about to roll an action that draws on your patron's Domain. Use it before rolling.],
      cost: [Give the GM #strong[3 Woe].],
      benefit: [The action succeeds automatically with #strong[4 Power], spent at once on Effects that action permits within the Domain's scope.],
      limit: [Once per session. Not for a World-shaking working. A trumped action stays trumped; in a versus test it wins unless the other side also succeeds automatically, which makes a tie. The Power can't be banked or improve a finishing procedure that doesn't permit it.],
    )],
  )]
  , kind: table
  )

#colbreak()
=== 24. Is More Than Human ◈
#quote(block: true)[
Mutant, cyborg, half-fae, or carrier of a strange bloodline.
]

- #strong[Tags:] #emph[My \[Trait\] Sets Me Apart];, #emph[I Live by a Different Nature]
- #strong[PC link:] \"\[PC\] saw me change and stayed anyway.\"

#emph[My \[Trait\] Sets Me Apart]

Power: Use your chosen extraordinary trait. \
Compel: That same trait exposes your nature or creates a concrete physical or social difficulty.

#emph[I Live by a Different Nature]

Power: Draw on an established unusual physiology, instinct, or way of perceiving. \
Compel: An established need, reaction, or incompatibility conflicts with ordinary expectations.

Define the trait and unusual nature at creation. Both helpful uses and complications must follow from those established features; the tags grant no capabilities beyond the Focus and its abilities.

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
      limit: [This explicitly heals the stated tiers of physical injuries despite the ordinary one-tier treatment limit, whether or not the injury is marked treated. It does not clear the treated mark, regrow a permanent loss, erase a Scar, end an affliction whose source prevents healing, or return you to an ongoing conflict.],
    )],
    // PLAYTEST: fallback matches Berserker and Unleash (Generic Playbooks); confirm in playtest.
    [3a], [#strong[Apex Form];], [#ability(
      trigger: [You unleash your nature.],
      cost: [At scene end, take #emph[Weary] (Module B; without it, exhausted-2 until a night's rest) as an accepted payment.],
      benefit: [Gain one free bonus die on Sōma and Mētis skill rolls that directly use one of your traits for the rest of the scene.],
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


