#import "common.typ" : *

#pagebreak(weak: true)
== 5. Savant
#playbook-art-side("03-savant.jpg", "Savant playbook character art")[
#quote(block: true)[
Knowledge is a weapon, a shield, and a cure. Scholars, detectives, scientists, physicians, archivists, engineers.
]

#figure(
  [#table(
    columns: (26%, 74%),
    align: (auto,auto,),
    [#strong[Base pools (Sōm / Mēt / Psy / Pne)];], [7 / 8 / 13 / 8],
    [#strong[Edge];], [Psychē 2, plus 1 in Pneuma or Mētis],
    [#strong[Anchor skill];], [Lore or Investigate],
    [#strong[Suggested skills];], [+4 Lore · +3 Investigate, Medicine · +2 Notice, Tech, Empathy · +1 Persuade, Will, Craft, Arcana],
    [#strong[XP trigger];], [Address a challenge with knowledge or insight],
  )]
  , kind: table
  )

#strong[Playbook tags (choose 2):] #emph[read everything twice] · #emph[eye for detail] · #emph[steady surgeon\'s hands] · #emph[speaks the old tongues] · #emph[respected in academic circles] · #emph[thinks in diagrams]
]

=== 5.1 Special Abilities
#figure(
  [#table(
    columns: (5%, 15%, 80%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Encyclopedic];], [#ability(
      trigger: [You ask a Discover question about a subject covered by your Lore.],
      cost: [No additional cost.],
      benefit: [Ask it #strong[without rolling].],
      limit: [Once per scene, one question.],
    )],
    [2], [#strong[Analyze];], [#ability(
      trigger: [You buy Discover while studying a foe or obstacle, or you Create a Truth or Situational Condition that exploits a revealed weakness.],
      cost: [The normal Discover cost. That Create costs #strong[1 Power less] (Core Rules §5), minimum 1: a Truth costs 1, a rating-1 Condition 1, a rating-2 Condition 3.],
      benefit: [Each Discover also reveals #strong[one weakness tag] of the target.],
      limit: [The Truth or Condition is leverage, not automatic victory.],
    )],
    [3], [#strong[Field Medic];], [#ability(
      trigger: [You use Medicine to Restore, or to treat #emph[Sick] (Module B).],
      cost: [Restore costs #strong[1 Power per 2 tiers].],
      benefit: [The reduced Restore price. You can treat #emph[Sick] at Standard Difficulty instead of Hard.],
      limit: [Within the lasting-injury limits (Core Rules §6.6). Healing doesn't restore pools or Disposition, refresh injury trades or erase Scars.],
    )],
    [4], [#strong[Steady Mind];], [#ability(
      trigger: [You Resist confusion, illusion, deception or forbidden knowledge with Psychē.],
      cost: [Pay the normal Resistance cost. This ability adds no cost.],
      benefit: [Reduce the status by #strong[3 tiers].],
      limit: [Only those sources, and only with Psychē.],
    )],
    [5], [#strong[Decipher];], [#ability(
      trigger: [You succeed on a deciphering roll (codes, unknown languages, ancient devices).],
      cost: [No additional cost.],
      benefit: [The roll advances its clock #strong[1 extra segment].],
      limit: [Clock progress only, not Power or Disposition loss.],
    )],
    [6], [#strong[Briefing];], [#ability(
      trigger: [You explain a plan to your allies before they act on it.],
      cost: [#strong[1 Power less] than a normal Situational Condition (Core Rules §5.2): rating 1 costs 1 Power, rating 2 costs 3, and so on. Power comes from a roll to prepare the plan.],
      benefit: [Create the Situational Condition #emph[Briefed] (Core Rules §5.2): #emph[Briefed] --- Situational Condition X --- helps allies' actions that follow the plan --- ends when the scene ends or the plan is abandoned.],
      limit: [Once per scene. Uses the helpful Condition slot, so it doesn't add to a higher helpful Condition (Core Rules §2.1).],
    )],
    [7], [#strong[★ Connect the Dots];], [#ability(
      trigger: [You propose a hidden Truth based on clues you've found.],
      cost: [No additional cost.],
      benefit: [The GM either makes it true or tells you #strong[one true hidden Truth] about the situation instead.],
      limit: [Once per session.],
    )],
    [8], [#strong[★ I Planned for This];], [#ability(
      trigger: [Any ally rolls. Use it after the roll, before Power is spent or consequences apply.],
      cost: [#strong[2 Psychē].],
      benefit: [They reroll all dice and keep the better result.],
      limit: [Once per scene. This replaces that roll; it isn't an extra action.],
    )],
    // PLAYTEST: Balance B6, field limited to about one skill's width.
    [◆], [#strong[Master of the Field];], [#ability(
      trigger: [You roll in your chosen field against a Difficulty, or ask about what will happen in it.],
      cost: [No additional cost.],
      benefit: [Rolls in that field against a Difficulty, including independent conflict tests, are #strong[one Difficulty step lower]. Ask a Discover question about #strong[what will happen] in that field #strong[without rolling or spending Power]. The GM answers truthfully.],
      limit: [Choose one field, about as wide as a single skill (medicine, occult, engineering, history); the GM can refuse a field that would cover most of your rolls. Versus tests are unchanged. The question is once per session.],
    )],
  )]
  , kind: table
  )
// ART: A cluttered study: open books, an astrolabe and notes pinned under a candle.
#art-fill(min: 6cm)[A cluttered study: open books, an astrolabe and notes pinned under a candle.]
#pagebreak()
=== 5.2 Starting Equipment
#strong[Signature item (choose 1)]

#figure(
  [#table(
    columns: (10%, 50%, 40%),
    align: (auto,auto,auto,),
    table.header([Genre], [Option A], [Option B],),
    table.hline(),
    [Fantasy], [#strong[Annotated grimoire / great reference] (1) --- #emph[the answer is in here somewhere];; once per scene, +1 to Lore], [#strong[Physician\'s satchel] (1) --- #emph[herbs and blades];; Restore +1 tier once per scene; lasting-injury treatment limits still apply],
    [Modern], [#strong[Laptop with research databases] (1) --- #emph[online archive];], [#strong[Forensics kit] (1) --- #emph[evidence never lies];; +1 to Investigate at crime scenes],
    [Sci-Fi], [#strong[Datapad with AI assistant] (1) --- #emph[ask the archive];; one free Discover per session], [#strong[Bioscanner] (1) --- #emph[reads the body];; Medicine and Notice tag],
  )]
  , kind: table
  )

#strong[Playbook kit]

#figure(
  [#table(
    columns: (7.92%, 43.56%, 25.74%, 22.77%),
    align: (auto,auto,auto,auto,),
    table.header([Load], [Fantasy], [Modern], [Sci-Fi],),
    table.hline(),
    [1], [Journal, ink, and charcoal], [Notebook, camera, and voice recorder], [Holo-recorder],
    [1], [Magnifying lens & specimen jars], [UV light & evidence bags], [Spectral analyser],
    [1], [Herbalist\'s kit], [Full first-aid kit], [Advanced medkit],
    [1], [Quarterstaff --- #emph[+1 Defend];], [Taser --- #emph[+1 Maneuver];], [Stun baton --- #emph[+1 Maneuver];],
    [1], [Scroll case with maps], [Tablet with offline maps], [Star charts / topographic uplink],
    [1], [Alchemist\'s reagents (1 cypher-like use: Create smoke, light, or acid)], [Chemistry kit], [Nanite sample kit],
  )]
  , kind: table
  )

#strong[Always carried (0):] Fantasy: spectacles, chalk. Modern: reading glasses, pen. Sci-Fi: translator earpiece, stylus.

=== 5.3 BIG Examples
- #strong[Belief:] \"No knowledge is forbidden; only misused.\" / \"The dead deserve the truth about how they died.\"
- #strong[Goal:] \"Translate the inscription before the eclipse.\" / \"Identify the poison.\"
- #strong[Instinct:] \"Always take a sample.\" / \"Never trust a source I can\'t verify.\"

#strong[Relationships:] Ally --- a former teacher, a librarian, a patient who owes you their life. Rival --- an academic rival, an ex-colleague who stole your work, a cultist who wants your research.

