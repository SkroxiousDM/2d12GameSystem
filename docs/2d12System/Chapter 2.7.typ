== 7. Progress Clocks
#columns(2, gutter: 6mm)[
- #strong[Sizes:] 4 (simple), 6 (complex), 8 (daunting), 12 (epic).
- #strong[Player clocks] tick with the #strong[Advance] effect (1 Power = 1 segment).
- #strong[Danger clocks] tick when the GM spends Woe (1 Woe = 1 segment) or on failures.
#colbreak()
- #strong[Racing clocks:] two clocks run together (e.g. #emph[Crack the vault 8] vs. #emph[Guards arrive 6];).
- #strong[Linked clocks:] filling one opens or unlocks another.
- #strong[Downtime projects] use 8- or 12-segment clocks.
]
  
== 8. Truths
#columns(2, gutter: 6mm)[
#strong[Truths] are tags that describe the scene, location, faction, or campaign.

- #strong[Scene Truths:] #emph[Pitch Dark];, #emph[Knee-Deep Water];, #emph[Hostile Crowd];. Each relevant Truth raises or lowers Difficulty by one step (±3) per rank, makes an action impossible or possible, or can be invoked with a Tychē Point.
- #strong[Rank.] A Truth is rank 1 unless a number follows its name: #emph[Pitch Dark 2] shifts Difficulty by two steps (±6). Rank 2 is the most a Truth can have; anything stronger makes the action impossible.
- #strong[Truth cap.] Easier and harder Truths cancel step for step. Whatever is left shifts a roll's Difficulty by at most #strong[three steps] (±9).
- #strong[Campaign Truths:] 3--5 world statements agreed at session zero (#emph[Magic is real but feared];, #emph[The Corporation owns the police];).
#colbreak()
- #strong[Creating Truths:] players use the #strong[Create] effect or spend #strong[2 Momentum];; the GM spends #strong[2 Woe];. A new Truth is rank 1. Pay the same cost again, at once or later, to raise it to rank 2. The GM may also allow this for an existing Truth when the fiction supports it (#emph[Thick Mist] thickening into #emph[Thick Mist 2]).
- #strong[Recording a Truth.] When a Truth is created, or an existing fact first matters mechanically, state its #strong[scope] (the people, objects, place, or circumstances it affects), its #strong[rank] and its #strong[removal condition]. It only applies within its scope. It also ends when its duration expires; a removal condition never extends a duration (§5). #emph[Smoke fills the courtyard] --- sight-based actions in the courtyard; ends when the smoke clears.
- #strong[Removing Truths:] use the Weaken or Create effect as a counter (\"I kill the lights\" removes #emph[Brightly Lit];), at GM discretion. Each counter lowers a Truth by one rank, and a rank-1 Truth that is countered is gone.

See #strong[Module C] for using Truths to drive a sandbox campaign.
]
  
== 9. Momentum and Woe
  #columns(2, gutter: 6mm)[
=== 9.1 Momentum (shared by the party, max 6)
#strong[Gain:] unspent Power from rolls. #strong[Decay:] lose 1 Momentum at the end of each scene.

#figure(
  [#table(
    columns: (78%, 22%),
    align: (auto,auto,),
    table.header([Spend], [Cost],),
    table.hline(),
    [Add a bonus die], [1 (first) / 2 (second)],
    [+1 Power on a success], [2],
    [Ask the GM a question (Discover)], [1],
    [Create a Truth], [2],
    [Seize the initiative / change your scripted action in a conflict], [2],
    [Reduce Woe by 1], [2],
  )]
  , kind: table
  )

#strong[Paying with Woe.] When the party is short, any spend in this table except #emph[Reduce Woe] can be paid in whole or in part by giving the GM 1 Woe per Momentum, with the GM's approval. Bonus dice can always be paid this way (§2.4).

=== 9.2 Woe (the GM\'s pool)
#strong[Starting Woe:] 2 per PC at the start of a session. #strong[GM gains Woe from:] players buying dice or other Momentum spends with Woe, Success at a Cost (if chosen), failures (+1), complications bought off (+2), refused compels, Escalation (+1, §9.3), and dangerous scene Truths (+1 per scene).

#figure(
  [#table(
    columns: (65%, 35%),
    align: (auto,auto,),
    table.header([GM spend], [Cost],),
    table.hline(),
    [Complication or minor twist], [1],
    [Tick a danger clock], [1 per segment],
    [NPC bonus die], [1 per die],
    [Activate an NPC/monster special ability], [1--3],
    [Create a Truth], [2],
    [Reinforcements], [1 per minion, 3 for a significant NPC],
    [Interrupt in a conflict (change an NPC\'s scripted action)], [3],
    [Cancel an NPC's complication from the dice (§2.6)], [2],
    [Make a roll Risky 1, or raise its Risk by 1 (§2.7)], [1],
  )]
  , kind: table
  )

=== 9.3 Escalation
Some acts and items make a situation more dangerous just by being there. They carry the #strong[Escalation] tag. It gives no bonus and doesn't count toward the tag cap.

- #strong[Escalation items.] Openly carrying an Escalation item into a scene gives the GM #strong[+1 Woe], once per item per scene. An item hidden before the scene starts doesn't count until it's drawn.
#colbreak()
- #strong[Escalation actions.] Declaring an Escalation action (reading a forbidden text, waking a dead machine, breaking a sacred taboo) gives the GM #strong[+1 Woe] before any roll.
- #strong[Keep it rare.] A playbook's starting kit should hold no more than one or two Escalation items. Settings list their own.
]

== 10. Conflict System
#columns(2, gutter: 6mm)[
#strong[Every big contest uses full scripting.] Small obstacles are handled with a single roll; anything that meets the conflict test below becomes a scripted conflict.

=== 10.1 When It\'s a Conflict
Use a conflict when #strong[any two] of these are true:

- Both sides have a clear #strong[intent] that excludes the other\'s.
- The opposition is a #strong[named NPC, a group, or a significant force] (not a single guard or a locked door).
- The outcome would #strong[change the story] (a relationship, a location, a faction, someone\'s life).
- A single roll would feel #strong[anticlimactic] to the table.


=== 10.2 Setup
+ #strong[Declare intent and stakes:] each side states what it wants if it wins. Establish what losing lets the other side do, whether death, permanent injury or capture is at stake, and what surrender or withdrawal could look like.
+ #strong[Choose the conflict type] (§10.4), which sets the skill for each action.
+ #strong[Disposition:] the leader of each side rolls #strong[2d12 + the type\'s Disposition skill + the highest Edge in that skill\'s pool];, divide the result by three (round down). Next,add +1 per helper, add every flat bonus or penalty to starting Disposition (from abilities, creature rank, conditions and similar effects). That is the side\'s #strong[Disposition] (usually 8--11), one shared total for the whole side (§10.7).
+ #strong[Superiority:] reduce the opposing side's starting Disposition by your Superiority (§10.3).
+ #strong[Track] Disposition as a number or a clock.

#strong[Intent sets the scope.] Beating a side whose intent is to hold a doorway doesn't, by itself, let you kill them all, take everything they carry or achieve some unrelated goal.

#strong[Lethal stakes.] A lethal outcome must be established before the roll or exchange that can produce it. Stakes can change mid-conflict when circumstances do, but never retroactively: the GM explains the new danger and lets those affected respond before it is resolved. Lethal stakes make death possible; they don't make every hit deadly.

#strong[New conflict or the same one?] Set fresh Disposition only for a genuinely new conflict: a materially different intent or changed circumstances. Moving through a doorway, switching from a Fight to a Chase, or changing tactics in the same unresolved struggle continues the same conflict; carry over Disposition, used injury trades (§10.9) and Taken Out characters.

=== 10.3 Superiority
Preparation can weaken an opponent's position before a conflict begins. Gain 1 Superiority for each of the following, to a maximum of 3:

- #strong[Know Thy Foe:] Obtain information that reveals an exploitable weakness, motive, fear, or vulnerability.
- #strong[Know Thy Battlefield:] Secure an advantageous position or understand circumstances that materially favour your approach.

- #strong[Know Thy Players:] Put a plan, alliance, resource, or other preparation into place that materially improves your position.

Each category grants Superiority only once. Preparation must apply to the opposing side and the declared stakes of the conflict.

After calculating starting Disposition and applying all other modifiers, reduce the opposing side's starting Disposition by your Superiority, to a minimum of 1. This adjusted value is its starting Disposition for all purposes, including recovery and compromise.
  
Superiority is not tracked or spent after the conflict begins. Abilities retain their normal benefits when their results also qualify for Superiority. Evaluate the concrete information, position, or preparation—not the ability’s name. Rephrasing one advantage does not create additional categories; additional categories require distinct material advantages. Determine Superiority only at conflict setup.
]
  
=== 10.4 Conflict Types
#figure(
  [#table(
    columns: (17%, 21%, 19%, 16%, 10%, 17%),
    align: (auto,auto,auto,auto,auto,auto,),
    table.header([Type], [Disposition], [Attack], [Defend], [Feint], [Maneuver],),
    table.hline(),
    [#strong[Fight];], [Fight or Brawl], [Fight / Brawl / Shoot], [Athletics / Endure], [Deceive], [Notice / Stealth],
    [#strong[Chase];], [Athletics or Drive/Pilot], [Athletics / Drive], [Athletics / Drive], [Stealth], [Notice / Survival],
    [#strong[Argument];], [Persuade], [Persuade], [Will], [Deceive], [Empathy],
    [#strong[Negotiation];], [Persuade], [Persuade], [Empathy], [Deceive], [Investigate],
    [#strong[Infiltration];], [Stealth], [Stealth / Tech], [Deceive], [Craft], [Investigate],
    [#strong[Battle] (armies)], [Lore (tactics)], [Fight], [Endure], [Deceive], [Lore],
    [#strong[Spirit Duel];], [Arcana], [Arcana], [Will], [Deceive], [Lore],
    [#strong[Hack / Netwar];], [Tech], [Tech], [Tech], [Deceive], [Investigate],
    [#strong[Survive the Wild];], [Survival], [Survival], [Endure], [---], [Notice],
  )]
  , kind: table
  )

#columns(2, gutter: 6mm)[
  Settings can add types; each type needs one skill per action and a Disposition skill. A dash (---) means that action isn\'t available in that type.
=== 10.5 Scripting and Volleys
Each #strong[exchange] is three #strong[volleys];. Each side secretly #strong[scripts] three actions in order, then they are revealed one volley at a time.

- #strong[Rotation:] every team member must act once in an exchange before anyone acts twice.
- #strong[Changing your script:] spend 2 Momentum (players) or 3 Woe (GM) to swap one unrevealed action.
- #strong[Independent:] roll against Standard 15 (adjusted by Truths and the opposition\'s tags).
- #strong[Versus:] both sides roll; the higher total wins, and the margin over the loser\'s total decides Power (meet = 1, +1 per full 3).
 
#figure(
  [#table(
    columns: (18%, 21%, 23%, 20%, 18%),
    align: (auto,auto,auto,auto,auto,),
    table.header([], [Attack], [Defend], [Feint], [Maneuver],),
    table.hline(),
    [#strong[Attack];], [Both roll independently], [Versus], [Attack independent; Feint does nothing], [Versus],
    [#strong[Defend];], [Versus], [Both roll independ-ently], [Feint independent; Defend does nothing], [Versus],
    [#strong[Feint];], [Attack independent; Feint does nothing], [Feint independent; Defend does nothing], [Versus], [Versus],
    [#strong[Maneuver];], [Versus], [Versus], [Versus], [Both roll independ-ently],
  )]
  , kind: table
  )


=== 10.6 Actions and Effects
#figure(
  [#table(
    columns: (20%, 80%),
    align: (auto,auto,),
    table.header([Action], [Default effect of Power],),
    table.hline(),
    [#strong[Attack];], [Remove Disposition from the opposing side equal to the Power committed, +1],
    [#strong[Defend];], [Each Power restores 1 of your side\'s Disposition (up to the starting value)],
    [#strong[Feint];], [Remove Disposition from the opposing side equal to the Power committed, +1; the Feint ignores Defend],
    [#strong[Maneuver];], [Spend Power on: #strong[Impede] (1: opponent −3 on next roll), #strong[Gain Position] (1: +1 bonus die on next roll), #strong[Disarm] (3: remove an action type or burn a key tag for the rest of the conflict), or #strong[Create a Truth] (2)],
  )]
  , kind: table
  )

Effort (including Effort for +1 Power), Momentum, Woe, Tychē Points, tags, and Truths all work normally.

#block(breakable: false)[
#strong[Three layers, three jobs.]

#figure(
  [#table(
    columns: (25%, 75%),
    align: (auto,auto,),
    table.header([Layer], [What it measures],),
    table.hline(),
    [#strong[Disposition]], [Whether your side can keep pursuing this conflict's intent. One shared total per side (§10.7). Reduced by Attacks and Feints; restored by Defend],
    [#strong[Pools]], [Your capacity for Effort, abilities and Resistance. Spent by you; restored by rest (§6.5)],
    [#strong[Statuses]], [What has actually happened to you. Inflicted by direct harm, injury trades, hazards and compromise; recovered by treatment and time (§6.6)],
  )]
  , kind: table
  )
]

Losing one doesn't reduce the others. Apply more than one only when a rule says so.

#strong[Conflict attacks.] An ordinary successful Attack or Feint removes Disposition, and nothing else: no pool points, no status. Describe the loss to fit the fiction (driven back, an opening lost, cut off, a glancing blow); the description doesn't create an injury. Armour and Resistance don't reduce Disposition loss unless an ability says so.

#strong[Attack and Feint loss.] When a successful Attack or Feint applies its default Disposition-loss effect, it removes Disposition equal to the Power committed to that effect, plus 1. This bonus is Disposition loss, not additional Power. Apply an eligible injury trade afterward (§10.9).

#strong[Direct harm.] Outside a conflict, harmful effects inflict statuses (§5, §6). Inside one, an ability or hazard can inflict a status only if it says so; resolve that status separately from any Disposition loss. Don't add harm to an ordinary Attack just because the weapon is dangerous or the narration is violent.

A side at 0 Disposition loses the conflict (§10.7), but its members aren't necessarily harmed (§6.4).

=== 10.7 Shared Disposition
Each side has one Disposition total. Determine it normally, but do not divide it among participants.

Successful Attacks and Feints reduce the opposing side's Disposition by the Power committed, plus 1 (§10.6). Successful Defend actions restore your side's Disposition, up to its starting total. Ordinary Disposition loss does not inflict statuses, drain Pools, or individually remove participants.

A character stops participating when a status, explicit effect, voluntary withdrawal, or established circumstance prevents them from pursuing the side's objective. Their removal does not directly change shared Disposition.

A side loses when its Disposition reaches zero or none of its participants can continue pursuing its objective. Complete independently resolving actions before checking victory. Resolve mutual defeat and compromise normally.

Injury trades protect shared Disposition, with no more than one participant accepting an injury against each Attack or Feint.

=== 10.8 Conflict Gear
Gear in conflicts is written as an #strong[action tag] that only applies to the listed action(s). It counts toward the +2 tag cap.

#figure(
  [#table(
    columns: (73%, 27%),
    align: (auto,auto,),
    table.header([Example gear], [Tag],),
    table.hline(),
    [Sword, knife], [+1 Attack],
    [Shield, cover], [+1 Defend],
    [Spear, polearm, rifle with scope], [+1 Maneuver],
    [Smoke grenade, false papers], [+1 Feint],
    [Damning evidence (Argument)], [+1 Attack],
    [Signed treaty draft (Negotiation)], [+1 Maneuver],
  )]
  , kind: table
  )

=== 10.9 Accepting Injury
#strong[The trade.] Injury trades protect your side's shared Disposition (§10.7). Once per character per conflict, when a successful Attack or Feint would reduce your side's Disposition, you may accept a lasting injury to cancel some of that loss. No more than one participant may accept an injury against each Attack or Feint. Declare it before the loss is applied, even if the loss would reduce your side to 0:

#figure(
  [#table(
    columns: (50%, 50%),
    align: (auto,auto,),
    table.header([Injury you accept], [Disposition loss cancelled],),
    table.hline(),
    [Tier 2], [1],
    [Tier 3], [2],
    [Tier 4], [3],
  )]
  , kind: table
  )

Name the injury, say how taking it keeps you in the fight, and record it at once. It must follow from the action: a blade gives #emph[slashed forearm], not #emph[embarrassed]; an occult assault might give #emph[fractured concentration]. The injury stacks normally (§5.1) and must add a real cost: a new relevant status, or a worse one.

#strong[You can't:]
- pay with an injury you already have, or with a status that has no relevant effect or is wholly covered by an equal or worse status;
- rename, split or file the injury somewhere irrelevant to dodge its cost;
- accept an injury that would take a status to tier 6;
- use the trade after you are Taken Out, or against voluntary costs or loss from Maneuvers, hazards or special effects (unless their rules allow it);
- cancel a status, an execution or any outcome that isn't ordinary Disposition loss, or cancel more loss than the Attack or Feint inflicted;
- invent a bodily injury to pay for a purely logistical setback.

The trade cancels incoming loss. It doesn't restore Disposition already lost or raise your starting Disposition.

#strong[It's a payment.] Armour, Resistance, cancellation effects and side benefits can't reduce or prevent an accepted injury (§6). It heals through treatment and time like any other injury.

#strong[One trade per Attack or Feint.] Only one participant's injury can cancel loss from a single Attack or Feint, and each point of loss can be cancelled only once.

#strong[Refresh.] The trade refreshes only when a genuinely new conflict begins (§10.2).

=== 10.10 Taken Out, Volleys and Mutual Defeat
#strong[Finish the action first.] Complete all the costs, choices and effects of the action being resolved before applying removal it causes. After that, the removed character can't act (§6.4).

#strong[Independent actions.] When two actions resolve independently in the same volley, both resolve even if one takes someone out. Neither cancels the other. Check victory after both.

#strong[Side defeat.] When a side's Disposition reaches 0, or none of its participants can continue pursuing its objective, that side loses (§10.7). The winner achieves its intent, subject to compromise (§10.12). Don't make the losing side play out the same contest again; a new conflict needs a materially different intent or changed circumstances.

#strong[Mutual defeat.] If both sides reach 0 in the same volley, neither wins outright. Resolve the compatible parts of both intents and a shared setback within the stakes. No compromise is calculated.

=== 10.11 Conceding
#strong[Offer it before the roll.] Before the next roll, a side may offer a concession instead of fighting on. State what the other side gains, what the conceding side keeps, what injuries, losses or obligations it accepts, and how the conflict ends. It must give the other side a meaningful success and fit the fiction: a mindless predator doesn't take surrender, so against one the offer may need an escape route or a sacrifice. If the sides don't agree, the conflict goes on. You can't offer a concession after the deciding roll.

#strong[Settle it.] An accepted concession ends the conflict. Apply its terms with no roll to see whether they happen, and don't also apply compromise unless the terms include it. Costs accepted in a concession can't be Resisted or prevented afterwards; injuries in the terms heal normally. Conceding gives no automatic Tychē Point.

=== 10.12 Compromise
When one side hits 0 Disposition, the conflict ends. The winner gets their intent but #strong[pays a compromise] based on how much Disposition they have left:

#figure(
  [#table(
    columns: (23%, 77%),
    align: (auto,auto,),
    table.header([Winner\'s Disposition left], [Compromise],),
    table.hline(),
    [Full or nearly full], [None or trivial],
    [More than half], [Minor --- loser gets a small concession; winner takes a tier-2 status],
    [Less than half], [Significant --- loser gets part of its intent; winner takes tier-3 statuses or loses gear],
    [1--2 points], [Major --- near pyrrhic victory; tier-4 statuses, a lost ally, or a new danger clock],
  )]
  , kind: table
  )

#strong[Settling the outcome.]
+ Determine the winner and the compromise.
+ State what the winner achieves and what the loser keeps or gains.
+ State every cost in full: who receives each injury and at what tier, and any non-injury costs. If there are alternative costs, state them now.
+ Credit existing injuries (below).
+ Resolve Resistance against what remains.

The listed tier doesn't apply to every member of the winning side; the costs say who pays.

#strong[Existing injuries count once.] An injury taken during this conflict, including one accepted through the trade, pays for one injury cost assigned to that character if its current tier equals or exceeds the required tier. Each injury pays for one cost only. Injuries can't be pooled, split, moved between characters or credited against a non-injury cost. An injury already treated below the required tier no longer pays. Don't add injury costs because an existing injury pays for one.

#strong[Resisting compromise.] Players may #strong[Resist] imposed compromise statuses as usual (§6), except costs they agreed to. Resistance can reduce or remove the injury, but it doesn't revoke the loser's gain or any other stated cost. Don't add a replacement cost because Resistance removed an injury.

=== 10.13 NPCs and Harm
- #strong[No injury trade.] Ordinary NPCs and minion groups can't use the injury trade. A named rival built as a full PC can; any other NPC needs a trait that grants it.
- #strong[Resisting.] Ordinary NPCs don't have pools (§6.1). An NPC reduces harm only through its listed armour, traits or abilities. Even then, it gets at most one reduction per imposed status application, and that reduction can't touch Disposition loss or an accepted payment.
- #strong[Defeat.] An NPC side at 0 Disposition is defeated in this contest. Capture, escape, injury or death follow the stakes and the outcome. Use a Dying clock for an NPC only when rescuing them matters to play, and never use that shortcut to make a rescue impossible after offering it as a goal.
- #strong[Special creatures.] Specific rules win: creatures with their own setting rules (such as being hard to kill, killing strikes or unusual recovery) keep them; machines and cyborgs shut down and are repaired rather than dying. An immunity stops an unsuitable status, but not Disposition loss in a contest the creature can lose.

=== 10.14 Order of Resolution
+ Establish intent, stakes and exits (§10.2); set starting Disposition and apply Superiority (§10.3); script the volley.
+ Pay pre-roll costs (Effort for dice, Help); resolve any running dry (§6.1).
+ Roll and determine the result and Power.
+ Make post-roll choices (Effort for Power) and pay them; resolve any running dry.
+ Separate Disposition loss from statuses imposed by a rule. An Attack or Feint's default loss is its committed Power + 1 (§10.6).
+ Offer eligible injury trades (§10.9).
+ Apply the remaining Disposition loss.
+ Resist imposed statuses (§6); pay; resolve running dry from Resistance.
+ Stack what remains; resolve tier 6: scope, Scar, Dying (§6.3, §6.7).
+ Resolve any independent action in the same volley.
+ Check removal, victory and mutual defeat. Before the next roll, either side may offer a concession.
+ Settle compromise (§10.12).
+ Afterwards, recover each layer by its own procedure (§6.5, §6.6).

#strong[Which rule wins.]
+ Explicit amendments and replacements in this damage cycle.
+ Current creature-specific rules and explicitly revised abilities.
+ The general procedures of this damage cycle.
+ Earlier general rules.

A rule overrides another only on the subject it addresses. An ability that heals a status doesn't also restore Disposition, refresh an injury trade or erase a Scar.

=== 10.15 Keeping It Fast
- Disposition of 8--11 should resolve in two or three exchanges.
- NPC sides script on index cards; minions act as a single group with one script.
- Table guideline: about 15--20 minutes per conflict.
]
  

== 11. Playbooks
#columns(2, gutter: 5mm)[
Each playbook is a one-page sheet with:

- #strong[Base pools and Edge]
- #strong[Anchor skill] (must be +3 or +4)
- #strong[Special abilities:] 1 free at start (6--8 options); more cost Refresh at creation or come from advancement. Major abilities are marked ★.
#colbreak()
- #strong[XP trigger:] one playbook-specific behaviour that earns XP
- #strong[Load-out list:] playbook items plus generic items, Blades-style light/normal/heavy load
- #strong[Relationship prompts:] 1 ally and 1 rival
Settings rename and reskin playbooks (Adept becomes \"Hedge Witch\" in fantasy, \"Netrunner\" in cyberpunk) but keep the structure.
]
 
=== 11.1 Generic Core Playbooks
#figure(
  [#table(
    columns: (21%, 18%, 16%, 35%, 20%),
    align: (auto,auto,auto,auto,auto,),
    table.header([Playbook], [Anchor], [Base pools (Sōm / Akm / Psy / Pne)], [XP trigger], [Concept],),
    table.hline(),
    [#strong[Bellator];], [Fight or Brawl], [12/10/6/8], [Address a challenge with force or threats], [Front-line muscle],
    [#strong[Furcifer];], [Stealth], [8/12/8/8], [Address a challenge with stealth or precision], [Infiltrator, scout, thief],
    [#strong[Savant];], [Lore or Investigate], [7/8/13/8], [Address a challenge with knowledge or insight], [Scholar, detective, scientist],
    [#strong[Interlocutor];], [Persuade], [7/9/9/11], [Address a challenge with charm, lies, or bargaining], [Diplomat, con artist, leader],
    [#strong[Explorator];], [Survival], [11/11/7/7], [Address a challenge with endurance or the land], [Ranger, pilot, explorer],
    [#strong[Adept];], [Arcana or Tech], [7/8/9/12], [Address a challenge with your powers or gadgets], [Mage, psychic, hacker],
  )]
  , kind: table
  )



== 12. Advancement
#columns(2, gutter: 6mm)[
=== 12.1 Earning XP (end of session)
1 XP per \"yes\" unless noted:

- Did you hit your #strong[playbook XP trigger];? (1, or 2 if it happened in a desperate scene)
- Did you #strong[accomplish your Goal];? (+2)
- Did your #strong[Belief] drive a meaningful decision?
- Did your #strong[Instinct] get you into trouble or save the day?
- Did you face consequences from a #strong[weakness tag or Scar];?

#strong[MVP vote:] the table votes on one standout moment each session; that player gets +1 Tychē Point at the next session (above Refresh, within the cap).

#colbreak()
=== 12.2 Spending XP (every 6 XP = 1 Advance)
- +1 to a skill (following the pyramid rule)
- +3 to one pool, or +1 Edge (max 3 Edge per pool)
- A new playbook special ability (★ abilities also cost 1 Refresh)
- A new power tag, or rewrite a weakness tag into a power tag
- #strong[+1 Refresh] (buys back Refresh spent on abilities or artifacts; max base 3 + 1 per 3 Advances)
- A Focus ability from the next tier (requires 3 Advances per tier)
- #strong[+1 Effort Level] (to Level 2 after 3 Advances; Level 3 after 9 Advances)
]


== 13. Example of Play
#columns(2, gutter: 5mm)[
#strong[Kade];, a #emph[Reckless Furcifer who Never Leaves Anyone Behind] (Akmē Edge 1, Effort Level 2), is creeping through a warehouse to free a captured friend. Scene Truths: #emph[Dim Lighting];, #emph[Patrolling Guards];.

- #strong[Roll:] Stealth +3, power tag #emph[quiet boots] +1, power tag #emph[knows this district] +1 (tags capped at +2). The GM sets Hard 18 but #emph[Dim Lighting] lowers it to Standard 15. Kade needs 10+ on the dice.
- #strong[Effort, part 1:] Kade spends 3 − 1 Edge = 2 Akmē for a bonus die → 3d12 keep 2.
- #strong[Result:] dice show 9, 9, 4 → keep 9 + 9 = 18, +5 = 23. That\'s 8 over → #strong[3 Power];, plus #strong[doubles on a success → +1 = 4 Power];.
- #strong[Effort, part 2:] Kade spends another 2 Akmē for #strong[+1 Power → 5 Power];.
- #strong[Spend:] Advance the #emph[Reach the Cell] clock by 3 (3 Power), Discover (1 Power): \"Where is the key?\" --- \"On the sergeant\'s belt.\" 1 Power left → #strong[+1 Momentum];.
- #strong[Later:] the sergeant\'s dread patron, a bound spirit, lashes out with #emph[terror-3];. Kade Resists with #strong[Pneuma] (Edge 0), so 2d12: highest die 7 → cost 2 Pneuma. The status drops to #emph[terror-1];.
- #strong[Compel:] the GM compels #emph[Reckless];: \"You can\'t wait for backup; you go in now.\" Kade accepts and gains +1 Tychē Point.
]
#pagebreak()  
== 14. Design Notes --- What Was Kept, Changed, Cut
#figure(
  [#table(
    columns: (14%, 37%, 28%, 21%),
    align: (auto,auto,auto,auto,),
    table.header([Source], [Kept], [Changed], [Cut],),
    table.hline(),
    [#strong[Fate];], [Skill pyramid, Tychē Points, invoke/compel, Refresh as cost of power], [Aspects are replaced by tags and Truths], [Fudge dice, stress boxes],
    [#strong[Cypher];], [Pools, Edge, the sentence, Effort on rolls and on Power, cyphers and artifacts (Module A)], [Four pools instead of three; Effort buys bonus dice instead of lowering difficulty], [d20 task levels, GM intrusions (replaced by compels and Woe)],
    [#strong[:Otherscape];], [Power/weakness tags, statuses with tiers, effects, burning tags], [Power comes from roll margin; tag cap +2], [Themebooks, Improve/Abandon tracks],
    [#strong[Mouse Guard];], [Full conflict scripting, Disposition, compromise, BIG, weapons as action bonuses, the Grind (Module B)], [Disposition from 2d12; actions spend Power], [Nature, Persona],
    [#strong[Blades];], [Playbooks, resistance, stress-as-currency, clocks, load-out], [Stress tracks are the four pools], [Action dice pools, Position/Effect grid, crew sheets],
    [#strong[2d20];], [Momentum, Woe, Truths, Module C, buy-offs, Escalation], [Momentum from unspent Power; Truths shift Difficulty; complication range → Risk die (§2.7)], [d20 roll-under],
  )]
  , kind: table
  )
  
=== 14.1 Known Risks
- #strong[Currency load:] pools + Tychē + Momentum + Woe is the upper limit for medium crunch. Keep spend menus short on the sheet.
- #strong[Modifier range (revised):] max is skill +4, tags +2, helpful status up to +6, Tychē invoke +2. Statuses are now the largest swing. Playtest a ±3 status cap.
- #strong[Effort for Power] may make high-Edge characters very efficient. Watch Edge-3 pools where Effort is free; consider a minimum cost of 1.
- #strong[Resistance dice (revised):] Edge now adds Resistance dice (2 + Edge, keep the highest) instead of reducing the cost, and only a double 12 is free. Below Edge −1 you keep the lowest of |Edge| dice, so stacked penalties (such as #emph[Exposed] and #emph[Shaken] on a 0-Edge pool) make Resisting very expensive; watch how often that happens. High-Edge pools still pay about 1 per Resist, so watch whether Resistance drains pools faster than before, and whether the double-12 result (1--6%) is too rare to matter.
- #strong[Four pools] means more pool points to track. The sheet should put all four in one row with Edge beside each.
- #strong[Conflict length:] with scripting used for every big contest, the conflict test (§10.1) is what stops overuse.
- #strong[Running dry (revised R3):] running dry now imposes a status at tier 1 + overrun instead of an automatic Taken Out, and a Scar comes from tier 6 instead of from an empty pool. Playtest the 2-recovery-points-per-tier rate for depletion statuses, the one-Scar-per-event limit, and how often Resisting at an empty pool reaches tier 4 or higher.
- #strong[Damage cycle (unified):] watch whether the once-per-conflict injury trade (tier 2/3/4 cancels 1/2/3 loss) is a hard choice or always taken, and whether it drags conflicts out. Also test the compromise tiers (now 2/3/4), the healing intervals, the 3-segment Dying clock, and whether the 1-tier treatment limit makes Restore-cost abilities (#emph[Field Medic], #emph[Field Surgeon]) feel too weak against lasting injuries.
- #strong[Shared Disposition:] each side now has one Disposition track (§10.7), so ordinary loss no longer removes individuals. Simulated mirrored fights ran about 23.5% shorter than with personal Disposition, but the old rolled 7--12 track still ran long against a one-to-two-exchange target. Setup is now halved again (§10.2): in simulation this averaged about 6 (range 3--9) and about 6 volleys, close to a fixed track of 6. Flat starting bonuses and penalties from abilities and creature rank are applied before the second halving, so they keep roughly their old weight. Compare this with a fixed track of 5 in play. Also watch whether a lone remaining participant acting repeatedly feels heroic or too forgiving, and whether larger parties get too many injury trades.
- #strong[Attack and Feint +1:] a successful Attack or Feint now removes its committed Power + 1 Disposition (§10.6). The +1 is loss, not Power, so it can't be spent on other effects, and the injury trade is applied after it. This keeps even a 1-Power hit meaningful against a starting track of about 6 and shortens conflicts. Watch whether Defend can keep pace, whether Feint becomes the default action, and how the +1 stacks with ability bonuses such as #emph[Crowd Work] and #emph[Every Trick in the Book].
- #strong[Superiority:] up to 3 Superiority against a starting track of about 6 can halve the opposition before the first volley. Watch whether preparation becomes routine, how often both sides claim it, and whether it double-counts preparation abilities such as #emph[Ambusher] and #emph[The Reveal].
