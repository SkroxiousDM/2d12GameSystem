#import "common.typ" : *

#pagebreak(weak: true)
== 3. Bellator <pb-bellator>
#playbook-art-side("01-bellator.jpg", "Bellator playbook character art")[
#quote(block: true)[
Muscle, grit, and a willingness to stand in front of trouble. Soldiers, brawlers, bouncers, gladiators, mercenaries, security officers.
]

#figure(
  [#table(
    columns: (26%, 74%),
    align: (auto,auto,),
    [#strong[Base pools (Sōm / Mēt / Psy / Pne)];], [12 / 10 / 6 / 8],
    [#strong[Edge];], [Sōma 2, plus 1 in Mētis or Pneuma],
    [#strong[Anchor skill];], [Fight or Brawl],
    [#strong[Suggested skills];], [+4 Fight · +3 Athletics, Endure · +2 Brawl, Intimidate, Shoot · +1 Notice, Will, Survival, Medicine],
    [#strong[XP trigger];], [Address a challenge with force or threats],
  )]
  , kind: table
  )

#strong[Playbook tags (choose 2 of 6):] 

The six options support a protector, veteran, enforcer, powerhouse, tactician or controlled brawler; choose any two.
]

#emph[I Stand Between Them and Trouble]

Power: Intercept danger, hold a defensive position, or cover someone’s withdrawal. \
Compel: Protecting someone leaves you exposed or prevents you from withdrawing.

#emph[I Have Held This Line Before]

Power: Read a battlefield, recognise familiar tactics, or steady inexperienced fighters. \
Compel: You mistake a new threat for an old one or repeat a costly doctrine.

#emph[My Reputation Throws the First Punch]

Power: Intimidate opposition, discourage violence, or establish credibility among fighters. \
Compel: Someone challenges your reputation, or your presence turns a tense meeting into a confrontation.

#emph[Put Your Weight Behind It]

Power: Overpower resistance, break an obstruction, or commit your strength to a decisive effort. \
Compel: Your force damages something valuable or leaves you overcommitted.

#emph[A Fight Is a Problem of Position]

Power: Exploit terrain, control an approach, or recognise an opening in an enemy formation. \
Compel: You refuse to yield useful ground or prioritise position over someone’s immediate need.

#emph[I Know What My Fists Can Do]

Power: Judge physical threats, apply measured force, or remain composed at close quarters. \
Compel: You accept a physical challenge to settle something that needed a different answer.

=== 3.1 Special Abilities <pb-bellator-special-abilities>
#figure(
  [#table(
    columns: (5%, 14%, 81%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Brutal];], [#ability(
      trigger: [You spend Power on a successful Fight or Brawl Attack.],
      cost: [No additional cost beyond the Power spent on the Attack.],
      benefit: [Choose one: remove #strong[1 additional Disposition] with ordinary Attack loss, or raise a harmful status the Attack inflicts by #strong[1 tier for free].],
      limit: [Once per roll. It adds no status to an ordinary conflict Attack and doesn't improve a creature-specific finishing procedure.],
    )],
    [2], [#strong[Bodyguard];], [#ability(
      trigger: [An ally within reach would suffer an imposed consequence you can plausibly intercept. Declare this before their Resistance.],
      cost: [Take the consequence instead of your ally. If you Resist, pay your own Resistance cost.],
      benefit: [Use your own reduction. If you Resist, your Edge counts as 1 higher for that Resistance.],
      limit: [You can't take shared Disposition loss, a protected payment or an area effect that already hits you both.],
    )],
    [3], [#strong[Cleave];], [#ability(
      trigger: [You attack a group or minions.],
      cost: [No additional cost for the Extra Feat.],
      benefit: [Gain #strong[one free Extra Feat] (hit a second target, break their line, and so on).],
      limit: [One free Extra Feat per roll.],
    )],
    [4], [#strong[Menacing];], [#ability(
      trigger: [You use Intimidate Effort or Resistance, or you succeed on Intimidate against minions.],
      cost: [Pay the normal cost for Effort or Resistance. After succeeding against minions, spend 1 Weal for the second benefit.],
      benefit: [You may use #strong[Sōma] for Intimidate Effort and Resistance. After succeeding against minions, you may make them flee, surrender or freeze.],
      limit: [Flee, surrender or freeze applies only to minions and needs a successful Intimidate action. The response lasts until a meaningful change in circumstances ends it; establish that ending condition when it takes effect. Fleeing or surrendered minions don't resume opposition merely because a new exchange or scene begins. Surrender is submission to the immediate demand, not loyalty or unlimited obedience. Freezing is hesitation under threat, not paralysis.],
    )],
    [5], [#strong[Pain Tolerance];], [#ability(
      trigger: [A harmful physical status would apply a penalty to your roll.],
      cost: [No additional cost.],
      benefit: [Ignore the penalty from a status of tier 1--2; at tier 3+, reduce it by 1.],
      limit: [Only the penalty changes: the tier, stacking, recovery, Taken Out, #emph[Dying] and Scars work normally.],
    )],
    // PLAYTEST: Weary fallback (exhausted −2) for games without Module B.
    [6], [#strong[Berserker];], [#ability(
      trigger: [You enter a fury.],
      cost: [At scene end, lose 2 Sōma (paid in full) or take #emph[Weary] (Module B; without it, #emph[exhausted −2] until a night's rest). Either is an accepted payment.],
      benefit: [#strong[+1 bonus die] (free) on Fight, Brawl and Athletics rolls for the rest of the scene.],
      limit: [Once per scene. While the fury lasts, you can't script Defend or retreat. The bonus die counts toward the normal bonus-dice cap.],
    )],
    [7], [#strong[★ Juggernaut];], [#ability(
      trigger: [You Resist physical harm with Sōma.],
      cost: [No additional cost.],
      benefit: [Reduce the incoming harmful status by #strong[3 tiers] instead of 2.],
      limit: [Only physical harm Resisted with Sōma. All other Resistance rules work normally.],
    )],
    [8], [#strong[★ Unstoppable];], [#ability(
      trigger: [A harmful physical status on you reaches #strong[tier 6].],
      cost: [Record the status and any Scar normally. This ability adds no resource cost.],
      benefit: [Delay being Taken Out by that status until the scene ends. You keep acting, with its normal roll penalty. At scene end you're Taken Out unless treatment or an ability has lowered it below tier 6.],
      limit: [Once per scene. This doesn't postpone #emph[Dying] or death, restore a lost limb, protect you from other statuses or prevent a shared-Disposition defeat.],
    )],
    [◆], [#strong[Legend of the Field];], [#ability(
      trigger: [Your reputation applies as a Campaign Truth; a Fight conflict begins; or the GM brings in reinforcements while you remain an active participant in the conflict.],
      cost: [No activation cost. The GM pays +1 Woe for reinforcements while you remain an active participant in the conflict.],
      benefit: [Your reputation is a #strong[Campaign Truth] (#emph[\"Everyone knows \[name\]\"]). In Fight conflicts, enemy starting Disposition is #strong[−2].],
      limit: [The Disposition reduction is a flat modifier (@pb-ability-notation). The reinforcement surcharge ends when you cease to be an active participant in the conflict.],
    )],
  )]
  , kind: table
  )
#pagebreak()
=== 3.2 Starting Equipment <pb-bellator-starting-equipment>
#strong[Signature weapon (choose 1)]

#figure(
  [#table(
    columns: (9.9%, 48.51%, 41.58%),
    align: (auto,auto,auto,),
    table.header([Genre], [Option A], [Option B],),
    table.hline(),
    [Fantasy], [#strong[Greataxe or warhammer] (2) --- #emph[+1 Attack];, #emph[crushing blows];], [#strong[Longsword & shield] (2) --- #emph[+1 Attack];, #emph[+1 Defend];],
    [Modern], [#strong[Combat shotgun] (2) --- #emph[+1 Attack];, #emph[room-clearer];], [#strong[Baseball bat & pistol] (2) --- #emph[+1 Attack] (bat), #emph[sidearm];],
    [Sci-Fi], [#strong[Shock maul] (2) --- #emph[+1 Attack];, #emph[stuns on hit] (spend 1 Power: add #emph[dazed −1];)], [#strong[Vibro-blade & energy barrier] (2) --- #emph[+1 Attack];, #emph[+1 Defend];],
  )]
  , kind: table
  )

#strong[Playbook kit (declare during play)]

#figure(
  [#table(
    columns: (7.92%, 30.69%, 28.71%, 32.67%),
    align: (auto,auto,auto,auto,),
    table.header([Load], [Fantasy], [Modern], [Sci-Fi],),
    table.hline(),
    [1], [Mail shirt (light armour)], [Tactical vest (light armour)], [Ballistic weave (light armour)],
    [2], [Plate harness (heavy armour)], [Riot gear (heavy armour)], [Combat exo-plate (heavy armour)],
    [1], [Throwing axes ×3 --- #emph[+1 Attack] (range)], [Collapsible baton --- #emph[+1 Attack];], [Concussion grenades ×2 --- #emph[+1 Maneuver];],
    [1], [Manacles & chain], [Zip-cuffs & pepper spray], [Mag-cuffs & stun prod],
    [1], [Whetstone & armourer\'s kit], [Gun-cleaning kit & spare mags], [Field repair kit],
    [1], [Flask of strong drink], [Energy drinks & painkillers], [Stim-shot (restore 2 Sōma, once)],
  )]
  , kind: table
  )

#strong[Always carried (0):] Fantasy: knuckle-wraps, battle trophy. Modern: brass knuckles, gym bag. Sci-Fi: reinforced gloves, unit insignia.

=== 3.3 BIG Examples <pb-bellator-big-examples>
- #strong[Belief:] \"Strength is only worth something when it protects the weak.\" / \"Every fight I walk away from comes back worse.\"
- #strong[Goal:] \"Get the merchant to the city gates alive.\" / \"Find out who hired the thugs.\"
- #strong[Instinct:] \"Always stand between my friends and the door.\" / \"Never let an insult pass in public.\"

#strong[Relationships:] Ally --- an old comrade-in-arms, a trainer, a medic who\'s patched you up too often. Rival --- the one who beat you once, a former commander, a rival enforcer.

