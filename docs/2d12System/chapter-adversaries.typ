#import "common.typ": *
// =====================================================================
//  CHAPTER — ADVERSARIES (GM)   Draft 3
//  Numbers from gm/opposition-statblocks.md (Rank table, Roles, Kind
//  menus, Encounter Budget) with Revision 2 fixes applied.
//  Terms: Threat N and Threat Rank (adversary cost) stay as written.
//  Woe is the GM's pool. Tychē (Fate), Sōma, Mētis, Psychē, Pneuma.
// =====================================================================
#chapter("Adversaries", [Build opposition on an index card, budget the fight, script it, and run it through the conflict system. Terse reference for the GM.], epigraph: [Every adversary has one thing it is clearly best at. Show the table the Tell.])

#let statblock(name, line, threat, body) = block(breakable: false, width: 100%, inset: 7pt, stroke: 0.6pt + luma(120), radius: 2pt, above: 8pt, below: 8pt)[
  #grid(columns: (1fr, auto), text(weight: 700, name), text(weight: 700)[Threat #threat])
  #text(size: 9pt, style: "italic", line)
  #v(2pt)
  #set text(size: 9pt)
  #body
]

== 1. Principles
#columns(2, gutter: 6mm)[
- #strong[No pools.] Ordinary adversaries do not track Sōma, Mētis, Psychē or Pneuma. #strong[Grit] contributes to their side's starting shared Disposition; it is not a personal track. #strong[Shrugs] are free Resists. Rivals built as full PCs use their PC resources and applicable exceptions.
- #strong[Tags are already counted.] Ratings include tags. PCs still Discover, Burn and compel them.
- #strong[Woe is fuel.] Ordinary adversaries buy bonus dice (1 Woe each, max +2 including free dice) and fire Specials with Woe. They never use Effort and cannot overrun Woe costs.
- #strong[One best action.] Every card has one clearly best action and a #strong[Tell] that hints at it. Give the players something to script around.
- #strong[Index-card size.] If it does not fit on a card, cut it.
]

== 2. The Card
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
  [Grit], [The adversary's contribution to its side's starting shared Disposition. Add up Grit across a side; adversary sides do not roll for Disposition. Do not track or deplete individual Grit shares.],
  [Guard], [Added to Standard 15 when a PC's independent roll targets this adversary.],
  [Shrugs], [Free Resists per scene; each cuts an incoming status by 2 tiers. Extra Shrugs cost 1 Woe. Subject to the one-reduction limit below.],
  [Armour], [−1 tier of physical harm per point; subject to the one-reduction limit below.],
  [Ratings], [Bonus on each conflict action. Other covers rolls outside a conflict.],
  [Harm], [Status inflicted by a successful Attack outside a conflict. Tiers equal Power.],
  [Threat], [Its cost against the encounter budget. Always equals Grit.],
))

#strong[Reduction and payments.] Ordinary NPCs apply at most one eligible reduction per imposed status application (Core Rules §10.14); do not stack Armour and repeated Shrugs against the same status. Neither reduces ordinary shared Disposition loss or protected payments. General immunity, prevention and redirection likewise cannot cancel accepted injury trades, running-dry statuses, agreed concession costs or other accepted payments (§10.7). Later treatment or healing follows its own rules and refunds no benefit.

== 3. Building an Adversary
#columns(2, gutter: 6mm)[
=== Step 1 — Concept and Kind
One line: who it is and what it wants. Pick a #strong[Kind]: Vampire, Human, Beast or Guardian (§4).

=== Step 2 — Rank
Rank is how dangerous it is #emph[now]. It sets every number.

#figure(table(columns: (20%, 8%, 17%, 9%, 9%, 17%, 20%),
  table.header([Rank], [Grit = Threat], [Best / Fair / Weak], [Guard], [Shrugs], [Tags: power / weakness], [Specials]),
  [Minion group (3--6 Bodies)], [3], [+4 / +2 / +0], [+0], [Bodies], [2 / 1], [1 group trait],
  [Minor], [3], [+5 / +3 / +1], [+0], [0], [2 / 1 (vampire 3 / 1)], [1],
  [Established], [5], [+6 / +4 / +2], [+1], [1], [3 / 1 (vampire 4 / 1)], [2],
  [Great], [8], [+8 / +5 / +3], [+2], [2], [4 / 2 (vampire 5 / 2)], [3],
  [Paramount], [12], [+10 / +7 / +4], [+3], [3], [5 / 2], [4],
))
Vampire Grit already includes the Threat Rank Disposition bonus (+0 / +2 / +4 / +6). Do not add it again.

#strong[Tiers.] Minion groups are the mob. Minor and Established are rivals. Great and Paramount can serve as bosses, but Rank alone does not grant Boss Phases. Explicit phased-boss designation follows §7.1.

Use +6 as a starting-PC benchmark from skill and tags, not a universal maximum. With one bonus die, that PC wins a versus roll about this often against an adversary that rolls no bonus dice:

#figure(table(columns: (28%, 14%, 14%, 14%, 14%, 16%),
  table.header([Adversary rating], [+2], [+4], [+6], [+8], [+10]),
  [PC win chance], [85%], [77%], [67%], [56%], [about 45%],
))
Each Woe die you add moves the odds back toward the adversary. These are roll benchmarks, not encounter-win predictions; versus totals, exceptional doubles and ability-created doubles follow Core Rules §2.6 and §10.5. The listed benchmarks are not current encounter-balance validation.

=== Step 3 — Role
The Role names the Best action and gives one trait. Assign Fair to two other actions and Weak to the last. A Beast or simple machine has no Feint: it gets Best, Fair, Fair.

#figure(table(columns: (14%, 14%, 72%),
  table.header([Role], [Best], [Role trait]),
  [Brute], [Attack], [#strong[Heavy Hitter.] First successful Attack each exchange gets +1 Power. Resolve area effects under Core Rules §10.17; do not multiply this bonus across shared Disposition. Outside conflicts, its Harm is +1 tier.],
  [Shooter], [Attack], [#strong[Dead Aim.] Free bonus die on its first Attack each scene.],
  [Bulwark], [Defend], [#strong[Interpose.] Once per exchange, it may intercept an ally's imposed status before Resistance or harm reduction, using its own normal reduction instead. No shared Disposition loss is redirected. Outside conflicts, it may likewise intercept fitting harm without a separate frequency limit. Follow the full timing, exclusions and area restrictions in Core Rules §10.18.],
  [Skirmisher], [Maneuver], [#strong[Hit and Run.] A successful Maneuver also removes 1 Disposition from the opponent.],
  [Controller], [Maneuver], [#strong[Shape the Ground.] Once per scene, Create a Truth for 1 Woe (not 2) or for 1 Power from a Maneuver.],
  [Trickster], [Feint], [#strong[Ambush.] If the PCs have not noticed it when the conflict begins, its side starts with +2 Disposition.],
  [Leader], [Defend or Maneuver], [#strong[Command.] While the Leader remains able to participate, minion groups on its side get +1 to all ratings, and changing its side's script costs 2 Woe (not 3).],
))

=== Step 4 — Tags
Write as many as the Rank allows.
- #strong[Power tags] explain the Best action: faster than you can see, old-world steel, a hundred donors.
- #strong[Weakness tags] are levers PCs can find with Discover: proud beyond reason, fears fire, fixed in place.
- #strong[Burning a power tag] (Weaken 1, Disarm 3, Called Shot) lowers the rating it supports by 1 for the scene. If the tag powers a Special, the Special is off for the scene instead.
- #strong[Using a Discovered weakness] gives the PC +1 on the roll.
- #strong[Compelling a weakness] costs 1 Momentum or 1 Tychē. The adversary acts on it and the GM gains 1 Woe.

Use the effect permissions of the procedure being resolved (Core Rules §5, §10.6). A successful scripted action may buy relevant Discover; this summary grants no unrelated questions or additional status permission. General Weaken requires an explicit ability in conflicts; use Maneuver's priced Disarm for ordinary asset denial. Called Shot retains only its named permission and duration.

=== Step 5 — Specials, Harm, Tell, Wants
Pick Specials from the Kind menu up to the Rank limit. Price a new one:

#figure(table(columns: (12%, 88%),
  table.header([Woe], [What it can do]),
  [0], [Always-on trait, or a once-per-scene minor trick (Armour 1, step between shadows).],
  [1], [+1 Power or a free bonus die on one roll. A tier-2 status on one target. Cancel one PC trick. One minion as reinforcement.],
  [2], [Create a Truth. A tier-3 status. Leave the scene. An area effect.],
  [3], [Changes the scene: a significant reinforcement, recover 2 tiers or 3 Disposition, a danger-clock tick plus an effect.],
))

This is pricing guidance, not an unrestricted spend menu. Write a Special's trigger, action requirement, targets and component explicitly. Free waives only its listed cost; it grants no extra turn or rotation bypass. Additional Power, Disposition loss and status tiers are distinct, and a bonus does not apply to both loss and harm unless stated. Cancelling a trick does not cancel a protected payment (Core Rules §10.5--10.7).

#strong[Area Rule (provisional for playtesting).] Use Core Rules §10.17. Establish the area and everyone it can reach; there is no automatic ally/enemy selection. An area Attack or Feint removes its committed Power + 1 from shared Disposition once, plus 1 per additional opposing participant affected. No individual shares or spill-over. A group represented by one rules entry counts as one participant, not one per Body. Explicit statuses apply at full purchased or listed tier to every affected character, with separate Resistance or NPC reduction. An ordinary conflict Attack gains no status merely for being an area effect. Apply both layers only when an explicit rule grants both. At most one participant may accept an injury trade against the combined loss of a single area Attack or Feint.
]

== 4. Kind Packages
=== Vampire
- #strong[Hard to Kill.] Physical statuses stop at tier 5 without a killing method. Tier 5 is broken (−2 on physical rolls).
- #strong[Blood Debt.] −1 to all ratings at 4 segments, −2 at 5. Being broken ticks the clock.
- #strong[Pride, Sun-Sick and killing methods] all apply.
- #strong[Killing strike.] A vampire side at 0 shared Disposition is defeated, not automatically wounded or destroyed. Name an eligible vampire and follow Testament of Dust, Frontier Rules §5.2, within the established lethal stakes; shared Disposition loss grants no physical status. Complete independent actions, determine victory or mutual defeat, resolve any permitted finishing procedure, then settle compromise (Core Rules §10.12).
- #strong[Introduction Woe,] paid once, the first time it appears in the campaign: Minor 1, Established 3, Great 5, Paramount 8.
- #strong[Woe Spends] (Presence, Uncanny Speed, Summon the Household) are open to every vampire and do not count against Specials.

#figure(table(columns: (22%, 8%, 70%),
  table.header([Special], [Woe], [Effect]),
  [Feed], [1], [After it wins a versus Attack in melee, add Bled-2 to that PC's compromise (Bled-2 on the hit outside conflicts). It recovers 1 tier of physical status.],
  [Unnatural Strength], [1], [+1 Power on a successful Attack. Outside conflicts, +2 tiers.],
  [Terrible Patience], [1], [Ignore one status or Blood Debt penalty for one roll.],
  [Fade], [2], [Create the Truth Deep Shadows. It may be gone when the light returns.],
  [Blood Price], [3], [Paramount only. Tick the campaign danger clock by 1 and restore 3 of its side's shared Disposition (up to the side's starting value).],
))

=== Human
- #strong[Morale.] Outside conflicts, a minion group or Minor flees or surrenders at half Bodies or when its leader is Taken Out, unless a Leader still stands.
- #strong[Can be talked to.] Persuade, Intimidate, bribes, Argument and Negotiation all work.
- #strong[Gear is in the ratings.] Write Armour separately.
- Build Great or Paramount rival hunters as full PCs.

#figure(table(columns: (22%, 14%, 64%),
  table.header([Special], [Woe], [Effect]),
  [Volley], [2], [Group or Shooter. An area Attack.],
  [Dirty Trick], [1], [Any success also Impedes the opposing side's next scripted action (−3 on its action roll), not a tiered status or a penalty to Resistance. Pending Impedes do not stack and expire if that action makes no roll.],
  [Call for Help], [1 per minion / 3], [Reinforcements arrive and add their Grit to the side.],
  [Shadow-meld], [0], [Retainer clan, once per scene. Step between shadows. May swap one revealed action for a Maneuver.],
  [Beast Form], [1], [Retainer clan. Attack becomes Best for the scene, and it gains the Beast package.],
  [Hostage], [2], [Create the Truth "a knife at their throat." Attacks against its side are one step harder.],
  [Last Stand], [2], [At 0 Disposition, it still takes its next scripted action this exchange.],
  [Fanatic], [0], [Ignores Morale.],
))

=== Beast
- #strong[No Feint.] Ratings are Best, Fair, Fair. The missing Feint is the trade-off.
- #strong[Cannot be reasoned with.] No Persuade or Argument. Intimidate and fire work. Every beast starts with a weakness such as fears fire.
- #strong[Morale] as Human. Packs scatter when the pack leader falls.

#figure(table(columns: (22%, 8%, 70%),
  table.header([Special], [Woe], [Effect]),
  [Pack Tactics], [0], [Group trait. +1 Attack if another member of its side Attacked earlier this exchange.],
  [Pounce], [1], [Free bonus die on its first Attack in a scene. If it wins, apply Impede to the opposing side's next scripted action under Core Rules §10.6.],
  [Savage Bite], [1], [+1 Power on a successful Attack.],
  [Thick Hide], [0], [Armour 1.],
  [Venom / Infection], [2], [Hit or compromise adds poisoned-2, rising 1 tier per scene until treated.],
  [Howl], [2], [A minion pack (Grit 3) arrives at the end of the exchange.],
  [Bolt], [2], [It leaves the scene.],
))

=== Guardian
- #strong[Unfeeling.] Immune to fear, Intimidate, Persuade, Duel of Wills and Pneuma statuses. No Morale; it never flees.
- #strong[Protocol.] It scripts in a pattern. One Discover reveals its next exchange's script.
- #strong[Machine.] The glitched status lowers all ratings by its tier. A PC with access can use Science as Attack (shutdown) or Maneuver (override).
- #strong[Simple machines] have no Feint. Thinking constructs Feint normally.

#figure(table(columns: (22%, 8%, 70%),
  table.header([Special], [Woe], [Effect]),
  [Suppressing Fire], [2], [An area Attack.],
  [Scan], [1], [Cancel a Stealth-based Maneuver's effect, or reveal a hidden PC.],
  [Self-Repair], [1], [Restore 2 of its side's shared Disposition (up to the side's starting value) or 2 tiers of physical status.],
  [Lockdown], [2], [Create the Truth Sealed Doors.],
  [Shock Field], [1], [A PC who loses a versus roll to it in melee adds jolted-2 to their compromise.],
  [Fail-safe], [3], [At 0 Disposition it blows up: every PC within reach adds burned-3 to their compromise.],
  [Calls the Works], [2], [Another guardian arrives.],
))

#strong[Unresolved Special wording.] The inherited entries above retain their costs and numerical effects. Feed, Shock Field and Fail-safe still need explicit rulings for repeated compromise riders, package credit and timing; do not infer those rulings from ordinary Attack narration. Last Stand needs explicit defeat timing, rotation and independent-action treatment before it can provide an action after defeat. Shadow-meld expressly permits changing a revealed action but does not permit actor reassignment, undoing resolved effects or cancelling independent actions retroactively. Any further interaction or timing not stated remains open rather than supplied by this compatibility pass.

== 5. Encounter Budget
#columns(2, gutter: 6mm)[
#strong[Legacy calibration; playtest flag.] The retained budget uses #strong[P] = about 8 plus party size as a historical benchmark, not the current PC setup formula. Current rolled setup divides 2d12 + Disposition skill + highest pool Edge by 3, rounds down, then adds helpers and flat modifiers at full value before the minimum of 1 and Superiority (Core Rules §10.2--10.3). Recalibrate the expectations below against that procedure; this pass changes no Threat, Grit or budget numbers. Spend Threat (= Grit) against the retained benchmark only with that limitation in mind.

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

- #strong[Mix at least two Roles.] A Controller with a Skirmisher pack and a Minor Brute gives players script decisions.
- #strong[Keep actors to party size + 1 or fewer.] Put extra bodies into minion groups.
- #strong[Count Woe separately.] Session Woe (2 per PC) plus a vampire's introduction Woe stacks fast. If the encounter already carries introduction Woe, treat Hard as Standard plus Woe.
- #strong[Disposition-cutting PC abilities] (such as −2 or −3 to the opposing side) apply after the budget.
- #strong[Superiority] (Know Thy Foe, Know Thy Battlefield, Know Thy Players) lowers opposing Disposition by 1 per eligible distinct category, up to 3, after other setup modifiers and the minimum of 1. Only Superiority can reduce an adjusted start to 0. Determine both sides' adjusted totals first: if only one is 0, its opponent wins at no cost within the stakes; if both are 0, resolve simultaneous setup defeat as mutual defeat without scripting or a winner's compromise (Core Rules §10.3, §10.12). Symmetry and eligibility retain the core playtest flags.
- #strong[Variance warning.] The PCs' Disposition roll can materially change the matchup; adversary Grit is fixed. If the result makes the struggle unusually dangerous, signpost it and offer exits rather than treating the legacy difficulty label as a guarantee.
]

#import "chapter-adversaries-part-2.typ": adversaries-part-two
#adversaries-part-two(statblock)
