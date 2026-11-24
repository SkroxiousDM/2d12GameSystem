#import "common.typ": *
#chapter("Adversaries", [Build opposition on an index card, budget the fight, script it, and run it through the conflict system. Terse reference for the GM.], epigraph: [Every adversary has one thing it is clearly best at. Show the table the Tell.])

#import "adversaries-common.typ": statblock

== 1. Principles <adv-principles>
#columns(2, gutter: 6mm)[
- #strong[No pools.] Ordinary adversaries don't track Sōma, Mētis, Psychē or Pneuma. #strong[Grit] contributes to their side's starting shared Disposition; it isn't a personal track. #strong[Shrugs] are free Resists. Rivals built as full PCs use their PC resources and applicable exceptions.
- #strong[Flat Tag Power.] Ratings don't include tags. Wherever the core adds Tag Power (Core Rules @core-outcomes), an adversary adds exactly #strong[1], however many power tags it has: a win gives 2 Power plus margin, and a Success at a Cost gives 1. PCs still Discover, Suppress and compel its tags.
#colbreak()
- #strong[Woe is fuel.] Ordinary adversaries buy bonus dice (1 Woe each, max +2 including free dice) and fire Specials with Woe. They never use Effort and can't overrun Woe costs.
- #strong[One best action.] Every card has one clearly best action and a #strong[Tell] that hints at it. Give the players something to script around.
- #strong[Index-card size.] If it doesn't fit on a card, cut it.
]

== 2. The Card <adv-card>
```
NAME — Kind · Rank · Role                              Threat N
Grit N · Guard +N · Shrugs N · Armour N
Attack +N · Defend +N · Feint +N · Maneuver +N · Other +N
Harm: status (source)
Power tags: … · Weakness tags: …
Kind: traits from the Kind package
Role: role trait
Specials: Name (Woe cost): effect
Tell: the visible sign before it uses its Best action
Wants: what it is after in this scene
```
#figure(table(columns: (16%, 84%),
  table.header([Field], [Meaning]),
  [Grit], [The adversary's contribution to its side's starting shared Disposition. Add up Grit across a side; adversary sides don't roll for Disposition. Don't track or deplete individual Grit shares.],
  [Guard], [Added to Standard 15 when a PC's independent roll targets this adversary.],
  [Shrugs], [Free Resists per scene; each cuts an incoming status by 2 tiers. Extra Shrugs cost 1 Woe. Subject to the one-reduction limit below.],
  [Armour], [−1 tier of physical harm per point; subject to the one-reduction limit below.],
  [Ratings], [Bonus on each conflict action. Other covers rolls outside a conflict.],
  [Harm], [Status inflicted by a successful Attack outside a conflict. Tiers equal Power.],
  [Threat], [Its cost against the encounter budget. Always equals Grit.],
))

#strong[Reduction and payments.] Ordinary NPCs apply at most one eligible reduction per imposed status application (Core Rules @core-npcs-harm); don't stack Armour and repeated Shrugs against the same status. Neither reduces ordinary shared Disposition loss or protected payments. General immunity, prevention and redirection likewise can't cancel accepted injury trades, running-dry statuses, agreed concession costs or other accepted payments (Core Rules @core-costs-failures-complications). Later treatment or healing follows its own rules and refunds no benefit.
#pagebreak()
== 3. Building an Adversary <adv-building-adversary>
#columns(2, gutter: 6mm)[
=== Step 1 — Concept and Kind
One line: who it is and what it wants. Pick a #strong[Kind]: Human, Beast or Guardian (@adv-kind-packages), or a Kind supplied by the setting.

=== Step 2 — Rank
]

#figure(table(columns: (20%, 8%, 17%, 9%, 9%, 17%, 20%),
  table.header([Rank], [Grit = Threat], [Best / Fair / Weak], [Guard], [Shrugs], [Tags: power / weakness], [Specials]),
  [Minion group (3--6 Bodies)], [3], [+2 / +0 / −2], [+0], [Bodies], [2 / 1], [1 group trait],
  [Minor], [3], [+3 / +1 / −1], [+0], [0], [2 / 1], [1],
  [Established], [5], [+4 / +2 / +0], [+1], [1], [3 / 1], [2],
  [Great], [8], [+6 / +3 / +1], [+2], [2], [4 / 2], [3],
  [Paramount], [12], [+8 / +5 / +2], [+3], [3], [5 / 2], [4],
))
#columns(2, gutter: 6mm)[
Rank is how dangerous it is #emph[now]. It sets every number.       
Settings supply any Kind-specific construction exceptions; don't add a setting bonus again when its listed Grit already includes it.

#strong[Tiers.] Minion groups are the mob. Minor and Established are rivals. Great and Paramount can serve as bosses, but Rank alone doesn't grant Boss Phases. Explicit phased-boss designation follows @adv-eligibility-fixed-designation.

Use +4 as a starting-PC benchmark: a top skill, since tags supply Power rather than a roll bonus. It isn't a universal maximum. With one bonus die, that PC wins a versus roll about this often against an adversary that rolls no bonus dice:

#figure(table(columns: (28%, 14%, 14%, 14%, 14%, 16%),
  table.header([Adversary rating], [+0], [+2], [+4], [+6], [+8]),
  [PC win chance], [85%], [77%], [67%], [56%], [about 45%],
))
Each Woe die you add moves the odds back toward the adversary. These are roll benchmarks, not encounter-win predictions; versus totals, exceptional doubles and ability-created doubles follow Core Rules @core-doubles and @core-scripting-volleys. The listed benchmarks aren't current encounter-balance validation.

=== Step 3 — Role
The Role names the Best action and gives one trait. Assign Fair to two other actions and Weak to the last. A Beast or simple machine has no Feint: it gets Best, Fair, Fair.

#figure(table(columns: (17%, 17%, 66%),
  table.header([Role], [Best], [Role trait]),
  [Brute], [Attack], [#strong[Heavy Hitter.] First successful Attack each exchange gets +1 Power. Resolve area effects under Core Rules @core-area-effects; don't multiply this bonus across shared Disposition. Outside conflicts, its Harm is +1 tier.],
  [Shooter], [Attack], [#strong[Dead Aim.] Free bonus die on its first Attack each scene.],
  [Bulwark], [Defend], [#strong[Interpose.] Once per exchange, it may intercept an ally's imposed status before Resistance or harm reduction, using its own normal reduction instead. Alternatively, use Hold the Line to reduce one successful opposing Attack's ordinary loss by 1. Both options share one use per exchange (@adv-interpose). Outside conflicts, it may likewise intercept fitting harm without a separate frequency limit. Follow the full timing, exclusions and area restrictions in @adv-interpose.],
  [Skirmisher], [Maneuver], [#strong[Hit and Run.] A successful Maneuver also removes 1 Disposition from the opponent.],
  [Controller], [Maneuver], [#strong[Shape the Ground.] Once per scene, Create a Truth, or instead a harmful rating-1 Situational Condition (#emph[choking smoke 1]), for 1 Woe or for 1 Power from a Maneuver.],
  [Trickster], [Feint], [#strong[Ambush.] If the PCs have not noticed it when the conflict begins, its side starts with +2 Disposition.],
  [Leader], [Defend or Maneuver], [#strong[Command.] While the Leader remains able to participate, minion groups on its side get +1 to all ratings, and changing its side's script costs 2 Woe (not 3).],
))

=== Step 4 — Tags
Write as many as the Rank allows.
- #strong[Power tags] explain the Best action and what the adversary can do: faster than you can see, old-world steel, a hundred donors. They add nothing to the roll; together they justify its flat Tag Power.
- #strong[Weakness tags] are levers PCs can find with Discover: proud beyond reason, fears fire, fixed in place.
- #strong[Suppressing a power tag] (Weaken 1, Disarm 3, Called Shot): for the scene, the adversary adds no Tag Power on actions that tag explained. If the tag powers a Special, the Special is off for the scene instead.
- #strong[A Discovered weakness] supplies #strong[+1 Power] to a PC action whose approach exploits it, #strong[outside] the +2 Tag Power cap. It applies on the same outcomes as Tag Power (Core Rules @core-outcomes): a Success or Success at a Cost, never a Failure or a lost versus roll. Each exploited weakness adds +1. It adds nothing to the roll, and it holds while the PCs know it and the fiction hasn't changed.
- #strong[Compelling a weakness] costs 1 Weal or 1 Tychē. The adversary acts on it and the GM gains 1 Woe.

Use the effect permissions of the procedure being resolved (Core Rules @core-effects, @core-actions-effects). A successful scripted action may buy relevant Discover; this summary grants no unrelated questions or additional status permission. General Weaken requires an explicit ability in conflicts; use Maneuver's priced Disarm for ordinary asset denial. Called Shot retains only its named permission and duration.

=== Step 5 — Specials, Harm, Tell, Wants
Pick Specials from the Kind menu up to the Rank limit. Price a new one:

#figure(table(columns: (12%, 88%),
  table.header([Woe], [What it can do]),
  [0], [Always-on trait, or a once-per-scene minor trick (Armour 1, step between shadows).],
  [1], [+1 Power or a free bonus die on one roll. A tier-2 status on one target. Cancel one PC trick. Named reserve reinforcement only under its priced package.],
  [2], [Create a Truth. A tier-3 status. Leave the scene. An area effect.],
  [3], [Changes the scene: a significant reinforcement under its package, recover 2 tiers or 3 Disposition, a danger-clock tick plus an effect.],
))

This is pricing guidance, not an unrestricted spend menu. Write a Special's trigger, action requirement, targets and component explicitly. Free waives only its listed cost; it grants no extra turn or rotation bypass. Additional Power, Disposition loss and status tiers are distinct, and a bonus doesn't apply to both loss and harm unless stated. Cancelling a trick doesn't cancel a protected payment (Core Rules @core-scripting-volleys[§]--@core-costs-failures-complications[]).

#strong[Area Rule] #emph[(Playtest Value)]#strong[.] Use Core Rules @core-area-effects. Establish the area and everyone it can reach; there is no automatic ally/enemy selection. An area Attack or Feint removes its committed Power + 1 from shared Disposition once, plus 1 per additional opposing participant affected. No individual shares or spill-over. A group represented by one rules entry counts as one participant, not one per Body. Explicit statuses apply at full purchased or listed tier to every affected character, with separate Resistance or NPC reduction. An ordinary conflict Attack gains no status merely for being an area effect. Apply both layers only when an explicit rule grants both. At most one participant may accept an injury trade against the combined loss of a single area Attack or Feint.
// ART: A field naturalist's sketchbook of strange creatures, each with notes on its weak points.
#art-fill(min: 6cm)[A field naturalist's sketchbook of strange creatures, each with notes on its weak points.]
]

// PLAYTEST: Revised Specials and named reserve packages; use their full procedures.
== 4. Kind Packages <adv-kind-packages>
=== Human
- #strong[Morale.] Outside conflicts, a minion group or Minor flees or surrenders at half Bodies or when its leader is Taken Out, unless a Leader still stands.
- #strong[Can be talked to.] Persuade, Intimidate, bribes, Argument and Negotiation all work.
- #strong[Gear is in the ratings.] Write Armour separately.
- Build Great or Paramount rival hunters as full PCs.

#figure(table(columns: (22%, 14%, 64%),
  table.header([Special], [Woe], [Effect]),
  [Volley], [2], [Group or Shooter. An area Attack.],
  [Dirty Trick], [1], [Once per bearer per exchange after a successful assigned action, Impede the opposing next scripted action in a later volley (@adv-dirty-trick).],
  [Call for Help], [2 per copy], [Action-free named-reserve call. Use the caller-specific package, shared call window and arrival procedure (@adv-reinforcements[§§], @adv-caller-specific-reserve-packages[]).],
  [Covering Move], [1], [Once per bearer per exchange after a successful Maneuver, grant Gain Position to the next friendly scripted action in a later volley. Can't activate while pending or already declared (@adv-covering-move).],
  [Last Stand], [2], [Defeat-triggered. At an eligible defeat at 0 shared Disposition, postpone defeat for one final volley for both sides (@adv-last-stand). Once per side per conflict; no personal extra action.],
  [Fanatic], [0], [Ignores Morale.],
))

=== Beast
- #strong[No Feint.] Ratings are Best, Fair, Fair. The missing Feint is the trade-off.
- #strong[Can't be reasoned with.] No Persuade or Argument. Intimidate and fire work. Every beast starts with a weakness such as fears fire.
- #strong[Morale] as Human. Packs scatter when the pack leader falls.

#figure(table(columns: (22%, 8%, 70%),
  table.header([Special], [Woe], [Effect]),
  [Pack Tactics], [0], [Group trait. +1 Attack if another member of its side Attacked earlier this exchange.],
  [Pounce], [1], [Free bonus die on its first Attack in a scene. If it wins, apply Impede to the opposing side's next scripted action under Core Rules @core-actions-effects.],
  [Savage Bite], [1], [+1 Power on a successful Attack.],
  [Thick Hide], [0], [Armour 1.],
  [Venom / Infection], [2], [After a successful Attack during a conflict, pay 2 Woe to record one deferred #emph[poisoned −2] application against the target. Resolve it when the conflict ends under @adv-deferred-special-injuries, regardless of the outcome; compromise doesn't cause another application. Outside conflicts, inflict #emph[poisoned −2] on the hit instead, paying the same listed cost. Once inflicted, the poisoned status rises by 1 tier per scene until treated; a pending record doesn't progress. During a conflict, at most one recorded application per named Special per target across all sources (@adv-deferred-special-injuries).],
  [Howl], [2], [Action-free call to one shared reserve Hound Pack; exchange-end arrival, delayed by blocked routes without further payment (@adv-howl).],
  [Bolt], [2], [After a successful Maneuver, withdraw at volley end after Self-Repair. Can't bypass contested escape, pursuit or capture (@adv-bolt).],
))

=== Guardian
- #strong[Unfeeling.] Immune to fear, Intimidate, Persuade, Duel of Wills and Pneuma statuses. No Morale; it never flees.
- #strong[Protocol.] It scripts in a pattern. One Discover reveals its next exchange's script (@adv-guardian-protocol).
- #strong[Machine.] The glitched status lowers all ratings by its tier. A PC with access can use Tech as Attack (shutdown) or Maneuver (override).
- #strong[Simple machines] have no Feint. Thinking constructs Feint normally.

#figure(table(columns: (22%, 8%, 70%),
  table.header([Special], [Woe], [Effect]),
  [Suppressing Fire], [2], [An area Attack.],
  [Scan], [1], [Once per exchange, cancel one purchased Impede or Gain Position from a detectable opposing Stealth Maneuver, or reveal one detectable hidden opponent after own successful Maneuver (@adv-scan).],
  [Self-Repair], [1], [After successful assigned action, once per Guardian per exchange, repair up to 2 shared Disposition or physical-status tiers at volley end. No Disposition recovery from 0 (@adv-guardian-self-repair).],
  [Lockdown], [2], [Once per scene after successful Maneuver, create the scene Truth Sealed Doors over named existing controlled barriers (@adv-lockdown).],
  [Shock Field], [1], [When a PC loses a versus roll to it in melee, record one deferred #emph[jolted −2] application against that PC (@adv-deferred-special-injuries). This trigger isn't limited to Attack. During a conflict, at most one recorded application per named Special per target across all sources (@adv-deferred-special-injuries).],
  [Fail-safe], [3], [Defeat-triggered. At eligible final defeat at 0 shared Disposition, an active Guardian detonates before finishing procedures, assigning #emph[burned −3] to each PC within reach as an additional compromise injury (@adv-fail-safe). The Guardian is destroyed.],
  [Calls the Works], [2], [Action-free call to one shared reserve Gate Warden. Accepted command survives caller/link loss; blocked route delays arrival (@adv-calls-works).],
))

#strong[Special procedures and remaining scope.] Self-Repair uses @adv-guardian-self-repair; Protocol uses @adv-guardian-protocol; Last Stand uses @adv-last-stand; Fail-safe uses its separate compromise procedure in @adv-fail-safe; Shock Field, Venom / Infection and any setting Special that explicitly refers to it use the outcome-independent deferred-injury procedure in @adv-deferred-special-injuries. These are explicit Special exceptions, not ordinary Attack effects or permissions to cancel protected payments. A setting supplies its own additional Kind packages and Special entries; the shared procedures grant no unstated trigger, extra turn or actor reassignment. Dirty Trick, Covering Move, Scan, Lockdown, Bolt and the named reinforcement packages use @adv-shared-special-timing[§§]--@adv-caller-specific-reserve-packages[]. Their shared timing grants no additional action or activation permission.

== 5. Encounter Budget <adv-encounter-budget>
#columns(2, gutter: 6mm)[
// PLAYTEST: marker unified (M6)
#strong[Legacy calibration.] The retained budget uses #strong[P] = about 8 plus party size as a historical benchmark, not the current PC setup formula. Current rolled setup divides 2d12 + Disposition skill + highest pool Edge by 3, rounds down, then adds backers and flat modifiers at full value before the minimum of 1 and Superiority (Core Rules @core-setup[§]--@core-superiority[]). Recalibrate the expectations below against that procedure; this pass changes no Threat, Grit or budget numbers. Spend Threat (= Grit) against the retained benchmark only with that limitation in mind. (Playtest Value)

#figure(table(columns: (15%, 20%, 15%, 50%),
  table.header([Difficulty], [Threat budget], [Extra Woe], [Legacy expectation]),
  [Easy], [½ P], [none], [PCs win without spending Tychē. Openers and calibration.],
  [Standard], [P], [none], [PCs should win and take a Minor or Significant compromise.],
  [Hard], [P + 3], [+2], [PCs win only if they play well. One bad Disposition roll can lose it.],
  [Deadly], [P + 6 or more], [+4], [Signpost it. Flight, bargaining or burning Tychē are real outcomes.],
))
#figure(table(columns: (30%, 14%, 14%, 14%, 14%),
  table.header([Party size], [2], [3], [4], [5]),
  [Legacy P], [10], [11], [12], [13],
))
#colbreak()
- #strong[Mix at least two Roles.] A Controller with a Skirmisher pack and a Minor Brute gives players script decisions.
- #strong[Keep actors to party size + 1 or fewer.] Put extra bodies into minion groups.
- #strong[Count Woe separately.] Session Woe (2 per PC) plus any setting-provided introduction Woe can stack fast. If the encounter already carries introduction Woe, treat Hard as Standard plus Woe.
- #strong[Disposition-cutting PC abilities] (such as −2 or −3 to the opposing side) apply after the budget.
- #strong[Superiority] (Know Thy Foe, Know Thy Battlefield, Know Thy Players) lowers opposing Disposition by 1 per eligible distinct category, up to 3, after other setup modifiers and the minimum of 1. Only Superiority can reduce an adjusted start to 0. Determine both sides' adjusted totals first: if only one is 0, its opponent wins at no cost within the stakes; if both are 0, resolve simultaneous setup defeat as mutual defeat without scripting or a winner's compromise (Core Rules @core-superiority, @core-defeat-mutual-defeat-concession). Symmetry and eligibility remain (Playtest Value) (Core Rules @core-superiority).
- #strong[Variance warning.] The PCs' Disposition roll can materially change the matchup; adversary Grit is fixed. If the result makes the struggle unusually dangerous, signpost it and offer exits rather than treating the legacy difficulty label as a guarantee.

// PLAYTEST: Budget experiments, not calibrated difficulty labels.
Test legal opposition near a declared party profile's expected setup start, that expectation +2 and +4, before opposing Superiority. Record actual Grit where legal packages can't match. Retain Threat = Grit and rank construction. Keep builds, resources, tactics, interaction matrix, reserve packages, deferred cap and initial Woe fixed within matched comparisons; vary Woe separately. Record outcome, mutual defeat, compromise, volleys, Woe, repair, protection, phases, reserve Grit introduced and lasting costs. Track initial Grit, available reserve Grit, actual introduced Grit and call costs separately. No validated reserve-budget surcharge or numerical recalibration is established. Win rate alone is insufficient.
]
#include "chapter-adversaries-part-2.typ"
