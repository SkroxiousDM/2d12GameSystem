#import "common.typ" : *

#pagebreak(weak: true)
== 4. Furcifer
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

#strong[Playbook tags (choose 2):] #emph[light on my feet] · #emph[eyes in the back of my head] · #emph[steady hands] · #emph[knows the underworld] · #emph[forgettable face] · #emph[patient as a stone]
]

=== 4.1 Special Abilities
==== Shared Opening: Unaware or Impeded
Opportunist and Deadly Precision need an #strong[opening]: an individual opponent who is unaware of you, or whose action this volley has a pending Impede (Core Rules §10.6), and your approach must actually use it. Hiding your intent isn't the same as being unnoticed, though an opponent busy with your visible allies may not know you're there. An ongoing harmful status isn't Impede.

Check once, after actions and approaches are revealed and before anything rolls; the opening then lasts through the volley. A trumped action never qualifies through Impede. Meeting both triggers counts once.

Outside scripted conflicts, check unawareness just before the roll. Whether your action reveals you depends on what actually happens in the fiction.


#figure(
  [#table(
    columns: (5%, 14%, 81%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Ghost];], [Your first Effort on each Stealth roll costs 0 pool points. Once per scene, when you're spotted, spend 1 Momentum to declare you were never seen; you're in a nearby hidden position. Declare it before the consequences of being spotted resolve; it doesn't undo anything already resolved.],
    [2], [#strong[Opportunist];], [When your permitted action against an individual opponent has an opening, gain #strong[+1 Power] on a success, once per action. This includes an independent Success at a Cost or an automatic success, but not a losing, tied or trumped action. Spend it only on Effects that action permits.],
    [3], [#strong[Light Fingers];], [When you succeed on a theft, plant, or sabotage roll (Stealth or Craft), gain a #strong[free Extra Feat].],
    [4], [#strong[Infiltrator];], [Once per roll, ignore one Truth that would raise the Difficulty of sneaking, climbing, or bypassing security.],
    [5], [#strong[Quick Reflexes];], [Outside scripted conflicts, you always act first when violence breaks out. In conflicts, changing one of your unrevealed scripted actions costs #strong[1 Momentum] instead of 2, at the normal timing.],
    [6], [#strong[Escape Artist];], [When you Resist capture, restraint, falls, or traps with Mētis, the cost is #strong[0 on a Resistance result of 5+].],
    [7], [#strong[★ Flashback];], [Once per mission, declare a flashback to something you prepared earlier. Pay Momentum by plausibility: 0 (obvious), 1 (reasonable), 2 (a stretch), 3 (wild). Then roll as normal; on a success, it happened. It can't reverse paid costs or outcomes.],
    [8], [#strong[★ Deadly Precision];], [When your Attack against an individual opponent has an opening, choose one, once per action: remove #strong[1 additional Disposition] when you commit Power to ordinary Attack loss, or, if the Attack may inflict a harmful status, buy one status against that target for #strong[half its tier in Power, rounded up] (tiers 1--2 cost 1, 3--4 cost 2, 5--6 cost 3). The discount applies to the purchased tier, before Resistance and stacking, and changes only the price. It doesn't apply to Feint, hazards, backlash or other purchases.],
    [◆], [#strong[Nobody Sees Me Coming];], [Once per session, declare you're already somewhere you could plausibly have reached. Your first roll there gets #strong[+2 bonus dice for free], and the GM can't spend Woe to reveal you during that roll.],
  )]
  , kind: table
  )

==== Shared Limits
Both abilities can apply to the same action, and Opportunist's +1 Power can pay Deadly Precision's discounted price. Where two status prices apply, use the lowest; they don't combine.

Against an area, each ability gives its benefit once: Opportunist +1 Power, Deadly Precision +1 Disposition loss or one discounted status against one qualifying target. A shared area-status purchase uses the normal price (Core Rules §10.17).

Both work in any conflict type where the opening helps the approach, such as a precision Attack in an Argument. Neither unlocks a status purchase or improves staking, killing strikes or another creature-specific finishing procedure, and a helpless target doesn't authorise an otherwise unavailable Attack.


=== 4.2 Starting Equipment
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

=== 4.3 BIG Examples
- #strong[Belief:] \"Everyone has a price; I just haven\'t found mine.\" / \"The less blood, the better the job.\"
- #strong[Goal:] \"Get the ledger out of the counting house.\" / \"Learn who sold out my old crew.\"
- #strong[Instinct:] \"Always check for a second way out.\" / \"Never touch anything without gloves.\"

#strong[Relationships:] Ally --- a fence, a forger, a former mentor. Rival --- an inspector who\'s close to catching you, a rival thief, the partner who betrayed you.

