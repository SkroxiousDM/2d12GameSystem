#import "common.typ" : *

#pagebreak(weak: true)
== 4. Furcifer <pb-furcifer>
#playbook-art-side("02-furcifer.jpg", "Furcifer playbook character art")[
#quote(block: true)[
Quiet, precise, and always three exits ahead. Thieves, spies, scouts, assassins, infiltrators, saboteurs.
]

#figure(
  [#table(
    columns: (25%, 75%),
    align: (auto,auto,),
    [#strong[Base pools (Sōm / Mēt / Psy / Pne)];], [8 / 12 / 8 / 8],
    [#strong[Edge];], [Mētis 2, plus 1 in Psychē or Sōma],
    [#strong[Anchor skill];], [Stealth],
    [#strong[Suggested skills];], [+4 Stealth · +3 Notice, Craft · +2 Athletics, Deceive, Shoot · +1 Fight, Tech, Investigate, Drive/Pilot],
    [#strong[XP trigger];], [Address a challenge with stealth or precision],
  )]
  , kind: table
  )

#strong[Playbook tags (choose 2 of 6):] 
The six options support an infiltrator, patient opportunist, technical thief, criminal insider, impostor or saboteur; choose any two.
]

#emph[I Belong Where No One Looks]

Power: Find overlooked routes, blend into the background, or work without attracting attention. \
Compel: Remaining unnoticed keeps you from intervening when someone needs visible support.

#emph[I Wait Until They Look Away]

Power: Time a theft, ambush, or delicate action around a distraction. \
Compel: You let an opportunity pass while waiting for a safer opening.

#emph[My Hands Know What to Do]

Power: Pick a pocket, manipulate a mechanism, or perform delicate work by touch. \
Compel: You start handling something before checking its safeguards or asking permission.

#emph[The Underworld Knows Me]

Power: Navigate criminal customs, recognise illicit dealings, or negotiate with people outside the law. \
Compel: An old associate recognises you, expects assistance, or remembers unfinished business.

#emph[A Different Face for Every Door]

Power: Adopt a convincing role, misdirect suspicion, or enter under false pretences. \
Compel: Maintaining a role creates an obligation, or two of your stories collide.

#emph[Nothing I Break Looks Broken]

Power: Conceal tampering, disable something discreetly, or disguise deliberate interference as ordinary failure. \
Compel: Someone unknowingly relies on what you sabotaged, or secrecy prevents you from warning them.

=== 4.1 Special Abilities <pb-furcifer-special-abilities>
==== Shared Opening: Unaware or Impeded
Opportunist and Deadly Precision need an #strong[opening]: an individual opponent who is unaware of you, or whose action this volley has a pending Impede (Core Rules @core-actions-effects), and your approach must actually use it. Hiding your intent isn't the same as being unnoticed, though an opponent busy with your visible allies may not know you're there. An ongoing harmful status isn't Impede.

Check once, after actions and approaches are revealed and before anything rolls; the opening then lasts through the volley. A trumped action never qualifies through Impede. Meeting both triggers counts once.

Outside scripted conflicts, check unawareness just before the roll. Whether your action reveals you depends on what actually happens in the fiction.


#figure(
  [#table(
    columns: (5%, 14%, 81%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Ghost];], [#ability(
      trigger: [You use Effort on a Stealth roll, or you're spotted.],
      cost: [Your first Effort on each Stealth roll costs 0 pool points. Declaring you were never seen costs 1 Weal.],
      benefit: [Free first Effort on each Stealth roll. When spotted, declare you were never seen; you're in a nearby hidden position.],
      limit: [The never-seen declaration is once per scene. Declare it before the consequences of being spotted resolve; it doesn't undo anything already resolved.],
    )],
    [2], [#strong[Opportunist];], [#ability(
      trigger: [Your permitted action against an individual opponent has an opening and succeeds, including an independent Success with Complication or an automatic success.],
      cost: [No additional cost.],
      benefit: [Gain #strong[+1 Power].],
      limit: [Once per action. Not on a losing, tied or trumped action. Spend it only on Effects that action permits.],
    )],
    [3], [#strong[Light Fingers];], [#ability(
      trigger: [You succeed on a theft, plant or sabotage roll (Stealth or Craft).],
      cost: [No additional cost.],
      benefit: [Gain a #strong[free Extra Feat].],
      limit: [No additional limit.],
    )],
    [4], [#strong[Infiltrator];], [#ability(
      trigger: [A harmful Situational Condition would hinder your sneaking, climbing or bypassing security.],
      cost: [No additional cost.],
      benefit: [Ignore that Condition's penalty for this roll.],
      limit: [Once per roll, one Condition.],
    )],
    [5], [#strong[Quick Reflexes];], [#ability(
      trigger: [Violence breaks out outside a scripted conflict, or you change one of your unrevealed scripted actions in a conflict.],
      cost: [Acting first: no cost. Changing a scripted action: #strong[1 Weal] instead of 2.],
      benefit: [Outside scripted conflicts, you always act first when violence breaks out. In conflicts, you change an unrevealed scripted action for the reduced cost.],
      limit: [Changes use the normal timing.],
    )],
    [6], [#strong[Escape Artist];], [#ability(
      trigger: [You Resist capture, restraint, falls or traps with Mētis.],
      cost: [The normal Resistance cost, reduced as below.],
      benefit: [The cost is #strong[0 on a Resistance result of 5+].],
      limit: [Only those sources, and only with Mētis.],
    )],
    [7], [#strong[★ Flashback];], [#ability(
      trigger: [You declare a flashback to something you prepared earlier.],
      cost: [Weal by plausibility: 0 (obvious), 1 (reasonable), 2 (a stretch), 3 (wild).],
      benefit: [Roll as normal; on a success, it happened.],
      limit: [Once per mission. It can't reverse paid costs or outcomes.],
    )],
    [8], [#strong[★ Deadly Precision];], [#ability(
      trigger: [Your Attack against an individual opponent has an opening.],
      cost: [No additional cost. Pay the discounted Power for a purchased status.],
      benefit: [Choose one: remove #strong[1 additional Disposition] when you commit Power to ordinary Attack loss, or, if the Attack may inflict a harmful status, buy one status against that target for #strong[half its tier in Power, rounded up] (tiers 1--2 cost 1, 3--4 cost 2, 5--6 cost 3).],
      limit: [Once per action. The discount applies to the purchased tier, before Resistance and stacking, and changes only the price. It doesn't apply to Feint, hazards, backlash or other purchases.],
    )],
    [◆], [#strong[Nobody Sees Me Coming];], [#ability(
      trigger: [You declare you're already somewhere you could plausibly have reached.],
      cost: [No additional cost.],
      benefit: [Your first roll there gets #strong[+2 bonus dice for free], and the GM can't spend Woe to reveal you during that roll.],
      limit: [Once per session.],
    )],
  )]
  , kind: table
  )

==== Shared Limits
Both abilities can apply to the same action, and Opportunist's +1 Power can pay Deadly Precision's discounted price. Where two status prices apply, use the lowest; they don't combine.

Against an area, each ability gives its benefit once: Opportunist +1 Power, Deadly Precision +1 Disposition loss or one discounted status against one qualifying target. A shared area-status purchase uses the normal price (Core Rules @core-area-effects).

Both work in any conflict type where the opening helps the approach, such as a precision Attack in an Argument. Neither unlocks a status purchase or improves a creature-specific finishing procedure, and a helpless target doesn't authorise an otherwise unavailable Attack.


=== 4.2 Starting Equipment <pb-furcifer-starting-equipment>
#strong[Signature item (choose 1)]

#figure(
  [#table(
    columns: (10%, 34%, 56%),
    align: (auto,auto,auto,),
    table.header([Genre], [Option A], [Option B],),
    table.hline(),
    [Fantasy], [#strong[Twin daggers] (1) --- #emph[+1 Attack];, #emph[+1 Feint];], [#strong[Shortbow & black-fletched arrows] (1) --- #emph[+1 Attack] (range), #emph[silent shots];],
    // PLAYTEST: lockpicks advance security clocks only on a success.
    [Modern], [#strong[Suppressed pistol] (1) --- #emph[+1 Attack];, #emph[quiet];], [#strong[Lockpicks & bypass kit] (1) --- #emph[opens what\'s closed];, Advance security clocks +1 on a successful roll],
    [Sci-Fi], [#strong[Needle pistol] (1) --- #emph[+1 Attack];, #emph[silent];, #emph[toxin-loaded];], [#strong[Holo-cloak] (1) --- #emph[+1 Feint];, #emph[bends light] (Stealth tag)],
  )]
  , kind: table
  )

#strong[Playbook kit]

#figure(
  [#table(
    columns: (8%, 32%, 28%, 32%),
    align: (auto,auto,auto,auto,),
    table.header([Load], [Fantasy], [Modern], [Sci-Fi],),
    table.hline(),
    [1], [Thieves\' tools], [Lockpicks & electronic bypass], [Slicer kit],
    [1], [Grappling hook & silk cord], [Climbing harness & line], [Monofilament line & grapple gun],
    [1], [Dark hooded cloak --- #emph[shadow-dyed];], [Black clothing & balaclava], [Thermal-masking suit],
    [1], [Caltrops & smoke vials --- #emph[+1 Maneuver];], [Smoke grenade --- #emph[+1 Maneuver];], [Sensor jammer --- #emph[+1 Maneuver];],
    [1], [Garrotte & poison vial], [Burner phones ×2], [Spy drone (Discover, 1 use per scene)],
    [1], [Padded leather (light armour)], [Concealed vest (light armour)], [Flex-mesh undersuit (light armour)],
  )]
  , kind: table
  )

#strong[Always carried (0):] Fantasy: hidden blade, chalk. Modern: hairpin picks, earpiece. Sci-Fi: implanted lockpick, false ID chip.

=== 4.3 BIG Examples <pb-furcifer-big-examples>
- #strong[Belief:] \"Everyone has a price; I just haven\'t found mine.\" / \"The less blood, the better the job.\"
- #strong[Goal:] \"Get the ledger out of the counting house.\" / \"Learn who sold out my old crew.\"
- #strong[Instinct:] \"Always check for a second way out.\" / \"Never touch anything without gloves.\"

#strong[Relationships:] Ally --- a fence, a forger, a former mentor. Rival --- an inspector who\'s close to catching you, a rival thief, the partner who betrayed you.

