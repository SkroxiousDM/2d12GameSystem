#import "common.typ" : *

#pagebreak(weak: true)
== 3. Bellator
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

#strong[Playbook tags (choose 2):] #emph[built like a wall] · #emph[veteran of the line] · #emph[scarred and unbothered] · #emph[iron grip] · #emph[knows how a fight will go] · #emph[the look that stops trouble]
]

=== 3.1 Special Abilities
#figure(
  [#table(
    columns: (5%, 14%, 81%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Juggernaut];], [When you Resist physical harm with Sōma, reduce the status by #strong[3 tiers] instead of 2.],
    [2], [#strong[Brutal];], [Once per roll, when you spend Power on a successful Fight or Brawl Attack, choose one: remove #strong[1 additional Disposition] with ordinary Attack loss, or raise a harmful status the Attack inflicts by #strong[1 tier for free]. It adds no status to an ordinary conflict Attack and doesn't improve a creature-specific finishing procedure.],
    [3], [#strong[Bodyguard];], [When an ally within reach would suffer an imposed consequence you can plausibly intercept, take it instead. Declare this before their Resistance and use your own reduction; if you Resist, your Edge counts as 1 higher. You can't take shared Disposition loss, a protected payment or an area effect that already hits you both.],
    [4], [#strong[Cleave];], [When you attack a group or minions, you get #strong[one free Extra Feat] per roll (hit a second target, break their line, and so on).],
    [5], [#strong[Menacing];], [You may use #strong[Sōma] for Intimidate Effort and Resistance. When you succeed on Intimidate against minions, spend 1 Momentum to make them flee, surrender, or freeze.],
    [6], [#strong[Pain Tolerance];], [Ignore the roll penalty from harmful physical statuses of tier 1--2; at tier 3+, reduce it by 1. Only the penalty changes: the tier, stacking, recovery, Taken Out, Dying and Scars work normally.],
    // PLAYTEST: Weary fallback (exhausted-2) for games without Module B.
    [7], [#strong[★ Berserker];], [Once per scene, enter a fury: you get #strong[+1 bonus die] (free) on Fight, Brawl, and Athletics rolls for the rest of the scene. You can't script Defend or retreat. At scene end, lose 2 Sōma (paid in full) or take #emph[Weary] (Module B; without it, #emph[exhausted-2] until a night's rest); either is an accepted payment.],
    [8], [#strong[★ Unstoppable];], [Once per scene, when a harmful physical status on you reaches #strong[tier 6], record it and any Scar, but delay being Taken Out by it until the scene ends. You keep acting, with its normal roll penalty. At scene end you're Taken Out unless treatment or an ability has lowered it below tier 6. This doesn't postpone Dying or death, restore a lost limb, protect you from other statuses or prevent a shared-Disposition defeat.],
    [◆], [#strong[Legend of the Field];], [Your reputation is a #strong[Campaign Truth] (#emph[\"Everyone knows \[name\]\"]). In Fight conflicts, enemy starting Disposition is #strong[−2] (a flat modifier, §1.2), and the GM pays +1 Woe for reinforcements while you stand.],
  )]
  , kind: table
  )
#pagebreak()
=== 3.2 Starting Equipment
#strong[Signature weapon (choose 1)]

#figure(
  [#table(
    columns: (9.9%, 48.51%, 41.58%),
    align: (auto,auto,auto,),
    table.header([Genre], [Option A], [Option B],),
    table.hline(),
    [Fantasy], [#strong[Greataxe or warhammer] (2) --- #emph[+1 Attack];, #emph[crushing blows];], [#strong[Longsword & shield] (2) --- #emph[+1 Attack];, #emph[+1 Defend];],
    [Modern], [#strong[Combat shotgun] (2) --- #emph[+1 Attack];, #emph[room-clearer];], [#strong[Baseball bat & pistol] (2) --- #emph[+1 Attack] (bat), #emph[sidearm];],
    [Sci-Fi], [#strong[Shock maul] (2) --- #emph[+1 Attack];, #emph[stuns on hit] (spend 1 Power: add #emph[dazed-1];)], [#strong[Vibro-blade & energy barrier] (2) --- #emph[+1 Attack];, #emph[+1 Defend];],
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

=== 3.3 BIG Examples
- #strong[Belief:] \"Strength is only worth something when it protects the weak.\" / \"Every fight I walk away from comes back worse.\"
- #strong[Goal:] \"Get the merchant to the city gates alive.\" / \"Find out who hired the thugs.\"
- #strong[Instinct:] \"Always stand between my friends and the door.\" / \"Never let an insult pass in public.\"

#strong[Relationships:] Ally --- an old comrade-in-arms, a trainer, a medic who\'s patched you up too often. Rival --- the one who beat you once, a former commander, a rival enforcer.

