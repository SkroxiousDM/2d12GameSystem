#import "common.typ" : *

#pagebreak(weak: true)
== 5. Savant <pb-savant>
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

#strong[Playbook tags (choose 2 of 6):] 
The six options support a polymath, investigator, physician, engineer, established expert or boundary-breaking researcher; choose any two.
]

#emph[I Have Read About This]

Power: Recall relevant knowledge, recognise an obscure reference, or connect ideas across subjects. \
Compel: You trust a written account despite evidence that it is incomplete or wrong.

#emph[The Evidence Must Agree]

Power: Compare clues, expose contradictions, or test a proposed explanation. \
Compel: You delay an urgent decision because one detail remains unresolved.

#emph[Every Patient Teaches Me]

Power: Diagnose a condition, recognise a familiar symptom, or adapt treatment from experience. \
Compel: An unusual case draws you into further examination when withdrawal would be safer.

#emph[I Think in Working Parts]

Power: Understand mechanisms, diagnose failures, or organise a complicated process. \
Compel: You treat a human problem like a mechanism and overlook feelings or loyalties.

#emph[My Name Opens Learned Doors]

Power: Secure a scholarly audience, establish professional credibility, or request access to research. \
Compel: Your standing brings scrutiny, professional obligations, or pressure to defend your work.

#emph[No Knowledge Should Be Forbidden]

Power: Investigate taboo subjects, challenge accepted doctrine, or interpret suppressed research. \
Compel: You cross an ethical, legal, or personal boundary to obtain an answer.

=== 5.1 Special Abilities <pb-savant-special-abilities>
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
      cost: [The normal Discover cost. That Create costs #strong[1 Power less] (Core Rules @core-effects), minimum 1: a Truth costs 1, a rating-1 Condition 1, a rating-2 Condition 3.],
      benefit: [Each Discover also reveals #strong[one weakness tag] of the target.],
      limit: [The Truth or Condition is leverage, not automatic victory.],
    )],
    [3], [#strong[Field Medic];], [#ability(
      trigger: [You treat an injury or temporary physical condition with Medicine.],
      cost: [Restore costs 1 Power per two tiers, rounded up.],
      benefit: [Use the reduced Restore price. Once per scene, if your treatment successfully lowers a lasting injury, the patient also recovers 2 points in one pool of their choice. With Module B, you can treat #emph[Sick] at Standard instead of Hard Difficulty.],
      limit: [The Restore discount does not lift the ordinary one-tier treatment limit. Apply any explicit stated-tier healing exception normally. The additional pool recovery is once per scene for this Field Medic user, across all patients, and never raises a pool above its maximum. It does not restore Disposition, refresh an injury trade, or erase a Scar.],
    )],
    [4], [#strong[Steady Mind];], [#ability(
      trigger: [You Resist confusion, illusion, deception or forbidden knowledge with Psychē.],
      cost: [No additional cost.],
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
      cost: [#strong[1 Power less] than a normal Situational Condition (Core Rules @core-situational-conditions): rating 1 costs 1 Power, rating 2 costs 3, and so on. Power comes from a roll to prepare the plan.],
      benefit: [Create the Situational Condition #emph[briefed] (Core Rules @core-situational-conditions): #emph[briefed] --- Situational Condition X --- helps allies' actions that follow the plan --- ends when the scene ends or the plan is abandoned.],
      limit: [Once per scene. Uses the helpful Condition slot, so it doesn't add to a higher helpful Condition (Core Rules @core-roll).],
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
      benefit: [They reroll the action roll, leaving any Risk die unchanged, and keep the better complete roll (Core Rules @core-dice-manipulation).],
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
=== 5.2 Starting Equipment <pb-savant-starting-equipment>
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

=== 5.3 BIG Examples <pb-savant-big-examples>
- #strong[Belief:] \"No knowledge is forbidden; only misused.\" / \"The dead deserve the truth about how they died.\"
- #strong[Goal:] \"Translate the inscription before the eclipse.\" / \"Identify the poison.\"
- #strong[Instinct:] \"Always take a sample.\" / \"Never trust a source I can\'t verify.\"

#strong[Relationships:] Ally --- a former teacher, a librarian, a patient who owes you their life. Rival --- an academic rival, an ex-colleague who stole your work, a cultist who wants your research.

