//  CHAPTER — CORE RULES
// =====================================================================
#chapter("Core Rules", [One roll, many outputs. A pair of twelve-sided dice decides whether you succeed, how much Power you earn and whether fate twists. Around that roll: pools that double as stress, tags and Truths, Tychē Points, Momentum and Woe, and scripted conflicts.], epigraph: [Roll 2d12 + Skill + Modifiers vs. Difficulty.])

== 1. Design Pillars
#columns(2, gutter: 6mm)[
+ #strong[Every currency has one job.] Four resources, each answering a different question:

#figure(
  [#table(
    columns: (27%, 12%, 47%, 14%),
    align: (auto,auto,auto,auto,),
    table.header([Resource], [Owner], [Job], [Borrowed from],),
    table.hline(),
    [#strong[Pools] (Sōma / Akmē / Psychē / Pneuma)], [Each PC], [Physical, mental and spiritual cost --- Effort and Resistance], [Cypher + Blades stress],
    [#strong[Tychē Points];], [Each PC], [Narrative authority --- invoke tags, accept compels], [Fate],
    [#strong[Momentum];], [The party (shared)], [Tactical surplus from strong rolls], [2d20],
    [#strong[Woe];], [The GM], [Mirror of Momentum --- complications and escalation], [2d20],
  )]
  , kind: table
  )
#colbreak()
#block[
#set enum(numbering: "1.", start: 2)
+ #strong[One roll, many outputs.] A single 2d12 roll tells you whether you succeed, how well (Power), and whether something twists (doubles).
+ #strong[Fiction is mechanical.] Tags (on characters and items) and Truths (on scenes and the world) are the only modifiers. No hidden situational math.
+ #strong[Characters are driven, not just capable.] Beliefs, Goals, and Instincts are the primary engine for earning Tychē Points and XP.
]
]
          
== 2. Core Resolution
  #columns(2, gutter: 6mm)[
=== 2.1 The Roll
#strong[Roll 2d12 + Skill + Modifiers vs. Difficulty.]

- #strong[Skill:] +0 to +4 (from the skill pyramid; untrained = +0).
- #strong[Tags:] +1 per relevant #strong[power tag];, #strong[maximum +2 per roll];. −1 per relevant #strong[weakness tag] (no cap).
- #strong[Statuses:] ± the tier of the highest relevant harmful status and the highest relevant helpful status.
- #strong[Truths:] shift Difficulty by steps (§8), not the roll: one step per rank, ±3 steps at most.

Why 2d12 summed: it produces a bell curve (2--24, average 13) --- predictable for skilled characters, swingy at the extremes, and big enough that +1 modifiers matter without dominating.

=== 2.2 Difficulty Ladder
#figure(
  [#table(
    columns: (19%, 11%, 70%),
    align: (auto,auto,auto,),
    table.header([Difficulty], [Target], [Example],),
    table.hline(),
    [Routine], [---], [No roll; it happens],
    [Easy], [12], [Climb a knotted rope],
    [Standard], [15], [Pick a decent lock],
    [Hard], [18], [Track someone over bare rock],
    [Formidable], [21], [Talk down a warlord in front of his troops],
    [Heroic], [24], [Things legends are made of],
  )]
  , kind: table
  )

=== 2.3 Odds Reference
Chance to hit the number needed on the dice (after subtracting your bonuses):

#figure(
  [#table(
    columns: (31.68%, 10.89%, 28.71%, 28.71%),
    align: (auto,auto,auto,auto,),
    table.header([Need on dice], [2d12], [3d12 keep 2], [4d12 keep 2],),
    table.hline(),
    [7+], [90%], [98%], [99%],
    [9+], [81%], [94%], [98%],
    [11+], [69%], [88%], [95%],
    [13+], [54%], [78%], [89%],
    [15+], [38%], [65%], [80%],
    [17+], [25%], [48%], [66%],
    [19+], [15%], [32%], [48%],
    [21+], [7%], [17%], [28%],
  )]
  , kind: table
  )

Example: Skill +3 and one tag (+1) vs. Standard 15 → need 11+ → #strong[69%];, or #strong[88%] with one bonus die.

=== 2.4 Bonus Dice and Effort
You can add d12s to the roll and #strong[keep the best two];. Maximum #strong[+2 bonus dice] (4d12 keep 2) from any combination of:

#figure(
  [#table(
    columns: (18%, 82%),
    align: (auto,auto,),
    table.header([Source], [Cost],),
    table.hline(),
    [#strong[Effort] (Cypher)], [3 points from the relevant pool, minus that pool\'s Edge (min 0)],
    [#strong[Momentum] (2d20)], [1 for the first die, 2 for the second],
    [#strong[Woe] (2d20)], [Give the GM 1 Woe per die],
    [#strong[Help];], [An ally spends 1 point from a pool and risks sharing the consequences],
  )]
  , kind: table
  )

#strong[Effort (revised).] Each use of Effort costs 3 − Edge from the relevant pool. You may use Effort a number of times per roll equal to your #strong[Effort Level] (1 at start; 2 and 3 are unlocked by advancement). Each use buys one of:

- #strong[+1 bonus die] --- declared before rolling.
- #strong[+1 Power] --- declared #strong[after] a Success or Success at a Cost (Cypher\'s \"effort on damage\"). It cannot turn a failure into a success.

Example: Effort Level 2 lets you buy one bonus die before the roll, then spend again for +1 Power if you succeed.

=== 2.5 Outcomes
#figure(
  [#table(
    columns: (24%, 76%),
    align: (auto,auto,),
    table.header([Result], [Outcome],),
    table.hline(),
    [#strong[Beat the target by 3+ per step];], [Success with extra Power],
    [#strong[Meet the target];], [#strong[Success] --- 1 Power],
    [#strong[Miss by 1--3];], [#strong[Success at a Cost] --- 1 Power, but the GM adds a consequence or gains 1 Woe (player\'s choice of which)],
    [#strong[Miss by 4+];], [#strong[Failure] --- the GM makes a move; GM gains 1 Woe],
  )]
  , kind: table
  )
#strong[Power] = 1 for meeting the target, +1 for every full 3 points over it. Power is spent on #strong[Effects] (§5). Any Power you don\'t spend becomes #strong[Momentum] (party pool, max 6).

=== 2.6 Doubles (Twists)
If your two #strong[kept] dice show the same number:

- #strong[On a success:] Critical --- +1 Power and add a narrative flourish.
- #strong[On a failure or cost:] Complication --- the GM introduces a complication right away.
- #strong[Double 12s:] always a success with +2 Power. #strong[Double 1s:] always a complication, even on a success.
- #strong[Buying it off.] When the dice give you a complication (a twist, or a Risky roll, §2.7), you may cancel it by giving the GM #strong[2 Woe]: a problem now, or a problem later. If you keep it and the GM can't think of a fitting complication, the GM gains the 2 Woe instead.
#colbreak()
- #strong[NPCs.] When the dice give an NPC a complication, the GM may spend #strong[2 Woe] to cancel it. Otherwise the GM describes the complication, or invites the players to.

Base chance of doubles on 2d12 is about 8% (1 in 12).

=== 2.7 Risky Rolls (Optional)
Some rolls aren't harder, just more dangerous. Before a roll, the GM may call it #strong[Risky 1], #strong[2] or #strong[3].

- #strong[Risk die.] Roll one extra d12 of a different colour with the others. It's never kept, doesn't add to the total and doesn't count toward the bonus dice maximum.
- #strong[Complication.] If the Risk die shows the rating or lower, a complication occurs after the roll is resolved, whatever the result and on top of any twist. You can buy it off for 2 Woe (§2.6).
- #strong[Raising the stakes.] The GM may spend #strong[1 Woe] to make a roll Risky 1, or to raise its rating by 1 (maximum 3). Settings may make some hazards Risky by default.

#figure(
  [#table(
    columns: (22%, 34%, 44%),
    align: (auto,auto,auto,),
    table.header([Rating], [Risk die shows], [Chance of a complication],),
    table.hline(),
    [Risky 1], [1], [about 8%],
    [Risky 2], [1--2], [about 17%],
    [Risky 3], [1--3], [25%],
  )]
  , kind: table
  )
  ]
        
== 3. Character Creation
  #columns(2, gutter: 6mm)[
=== 3.1 The Sentence
#quote(block: true)[
#strong[\"I am a \[Descriptor\] \[Playbook\] who \[Focus\].\"]

\"I am a #strong[Reckless] #strong[Furcifer] who #strong[Never Leaves Anyone Behind];.\"
]

#figure(
  [#table(
    columns: (20%, 15%, 65%),
    align: (auto,auto,auto,),
    table.header([Part], [Grammar], [What it gives you],),
    table.hline(),
    [#strong[Descriptor];], [Adjective], [+2 pool points to one pool, 1 power tag, 1 weakness tag, 1 suggested Instinct],
    [#strong[Playbook];], [Noun], [Starting pools and Edge, special abilities, XP trigger, load-out, an anchor skill],
    [#strong[Focus];], [Verb phrase], [A tag theme (2 power tags + 1 weakness), a Tier 1 Focus ability, and a link to another PC],
  )]
  , kind: table
  )

=== 3.2 Pools and Edge
Four pools, each roughly 6--14:

- #strong[Starting values:] the playbook sets the base (totals 36), plus 4 points to distribute and +2 from the Descriptor (42 total).
- #strong[Edge:] the playbook gives #strong[3 points of Edge];, maximum 2 in any one pool at creation. Edge reduces the cost of Effort from that pool and adds dice when you Resist with it (§6).
- Pools are spent on #strong[Effort] (§2.4) and #strong[Resistance] (§6). They are your stress tracks.
#figure(
  [#table(
    columns: (20%, 40%, 40%),
    align: (auto,auto,auto,),
    table.header([Pool], [Covers], [Resists],),
    table.hline(),
    [#strong[Sōma];], [Strength, endurance, toughness], [Wounds, poison, exhaustion, cold],
    [#strong[Akmē];], [Speed, precision, stealth, reflexes], [Traps, falls, being caught or grabbed],
    [#strong[Psychē];], [Intellect, perception, memory, cunning], [Confusion, illusion, deception, madness from knowledge],
    [#strong[Pneuma];], [Will, presence, faith, emotional core, the supernatural], [Fear, despair, possession, corruption, social pressure],
  )]
  , kind: table
  )


=== 3.3 Skill Pyramid
Ten rated skills from a list of 20:

#figure(
  [#table(
    columns: (66%, 34%),
    align: (auto,auto,),
    table.header([Rating], [Count],),
    table.hline(),
    [+4 Great], [1],
    [+3 Good], [2],
    [+2 Fair], [3],
    [+1 Average], [4],
  )]
  , kind: table
  )

The playbook\'s anchor skill must sit at +3 or +4. The pyramid rule (each tier must have at least as many skills as the tier above it) still applies when you advance.

#strong[Generic skill list by default pool:]

#figure(
  [#table(
    columns: (23%, 24%, 28%, 25%),
    align: (auto,auto,auto,auto,),
    table.header([Sōma], [Akmē], [Psychē], [Pneuma],),
    table.hline(),
    [Athletics], [Shoot], [Notice], [Will],
    [Brawl], [Stealth], [Investigate], [Persuade],
    [Fight], [Drive/Pilot], [Lore], [Intimidate],
    [Endure], [Craft], [Tech], [Empathy],
    [Survival], [], [Medicine], [Arcana\*],
    [], [], [Deceive], [],
  )]
  , kind: table
  )

\*Arcana is renamed per setting: Mysticism, Faith, Psionics, Weirdness, or removed entirely in mundane games.

The default pool pays for Effort and Resistance. The GM can allow another pool when the fiction supports it (Intimidate with Sōma = looming; with Pneuma = cold menace).
=== 3.4 Tags
Characters carry 6--8 #strong[character tags] from Descriptor, Focus, and Playbook:

- #strong[Power tags] (e.g. #emph[ex-navy marksman];, #emph[silver tongue];, #emph[grandfather\'s revolver];): +1 each when relevant, #strong[max +2 per roll];.
- #strong[Weakness tags] (e.g. #emph[owes the wrong people];, #emph[bad knee];): −1 when relevant, or compel for a Tychē Point (§4).
#colbreak()
- #strong[Any tag can be compelled.] A power tag can also cause trouble when its meaning creates a concrete complication. It keeps its normal benefits (§4).
- #strong[Burning a tag:] mark a power tag as burned to gain an automatic +1 Power on a success. It stays unusable until you recover it (a downtime action or a milestone). Burning ignores the +2 cap.

With a +2 cap, a third relevant tag is best used for burning or as Tychē Point invoke material.

=== 3.5 Beliefs, Instincts, Goals
- #strong[Belief] --- a moral stance or conviction. \"The law protects the powerful; I protect everyone else.\"
- #strong[Instinct] --- an if/then reflex. \"Always check the exits when entering a room.\" Acting on an Instinct lets you take that action without spending time.
- #strong[Goal] --- a concrete objective for this session or mission. \"Get Mara out of the precinct before dawn.\"

Goals are rewritten each session; Beliefs and Instincts can change at milestones.

=== 3.6 Starting Resources
- #strong[Tychē Points:] start each session with Tychē Points equal to your #strong[Refresh] (base 3; see §4.1).
- #strong[Load-out:] chosen during play from the playbook\'s gear list (Blades-style light/normal/heavy load), not bought in advance.
  ]
== 4. Tychē Points
    #columns(2, gutter: 6mm)[
#strong[Spend 1 Tychē Point to:]

- #strong[Invoke] --- reroll all dice, or add +2 after rolling. This works with any tag or Truth you can justify, even one belonging to the scene or an enemy. Invokes are not limited by the tag cap.
- #strong[Declare] --- establish a minor fact about the scene. The GM may require it to tie to one of your tags.
- #strong[Resist harder] --- reduce one Resistance cost to 0 (§6).

#strong[Earn Tychē Points by:]

- #strong[Compels] --- the GM or another player offers a meaningful complication based on any character tag (power, weakness, or Scar), Belief, or Instinct. Accept → +1 Tychē Point. Refuse → pay 1 Tychē Point.
- #strong[Compel yourself] --- propose a compel on one of your own tags, your Belief or your Instinct. If the GM agrees it meets the rules below, take the complication and gain +1 Tychē Point. Facing it can also earn XP (§12.1).

#strong[Compels]

- #strong[Meaningful.] The complication must change the situation: an obstacle, obligation, exposure, hard choice, or lost opportunity. Flavour or a minor inconvenience doesn't count.
- #strong[Clear offer.] Before you accept, know which tag justifies it, what will happen, and what it commits your character to. You otherwise control how your character responds.
- #strong[Limits.] A compel must follow from the tag's established meaning. It adds no numerical penalty, can't cancel a success already resolved, and an existing penalty doesn't earn Tychē just because a tag explains it.
- #emph[Feared duellist:] a rival challenges you before an audience whose support you need. #emph[Devoted healer:] you stay to treat a dying enemy and lose the chance to pursue their commander.

=== 4.1 Refresh
- #strong[Base Refresh is 3.] At the start of each session, your Tychē Points reset to your Refresh (if you have more, keep them, up to the cap).
- #strong[Tychē cap.] You can hold at most #strong[Refresh + 3] Tychē Points. Any you would gain above the cap are lost.
- At creation you get #strong[1 playbook ability and your Tier 1 Focus ability for free];.
#colbreak()
- You may take #strong[up to 2 additional playbook abilities at creation, at 1 Refresh each];.
- Abilities marked #strong[★ (Major)] cost #strong[1 Refresh] whenever you take them, including through advancement.
- An #strong[attuned artifact] (Module A) costs 1 Refresh while you keep it.
#colbreak()
- #strong[Minimum Refresh is 1.] You can never trade away your last Tychē Point.
- The advancement option \"+1 Refresh\" (§12) lets you buy Refresh back.

Design intent: power comes at the cost of narrative flexibility. A low-Refresh character is mechanically strong but has to accept compels to stay fuelled.
]

== 5. Effects

#figure(
  [#table(
    columns: (12%, 14%, 74%),
    align: (auto,auto,auto,),
    table.header([Effect], [Cost], [What it does],),
    table.hline(),
    [#strong[Attack];], [1 Power per tier], [Inflict a #strong[Status] (e.g. #emph[wounded-2];, #emph[rattled-1];, #emph[on fire-3];). In a conflict, an Attack removes Disposition equal to its Power + 1 instead (§10.6)],
    [#strong[Weaken];], [1], [Reduce one of the target\'s statuses by 1 tier, or #strong[Burn] one of its tags for the scene],
    [#strong[Create];], [3], [Create a #strong[Truth] that lasts for the scene (#emph[smoke cover];, #emph[crowd on our side];). It may end sooner if its removal condition is met. One extra Power makes it last until its removal condition is met. State its scope, rank (1, or 2 for double the Power) and removal condition (§8)],
    [#strong[Enhance];], [1 per tier], [Give an ally a helpful status (#emph[inspired-2];)],
    [#strong[Restore];], [1 per tier], [Reduce a harmful status on yourself or an ally. Lasting injuries have limits (§6.6)],
    [#strong[Discover];], [1], [Ask the GM one question; you get a true, useful answer],
    [#strong[Advance];], [1 per segment], [Tick a #strong[progress clock] (§7)],
    [#strong[Disrupt];], [3], [Cancel or delay an enemy\'s prepared action, or take 1 point off the GM\'s Woe],
    [#strong[Extra Feat];], [1], [Achieve a second, related goal with the same action],
  )]
  , kind: table
  )
#columns(2, gutter: 6mm)[
Each point of Power buys an Effect. Players choose Effects that fit what their character did in the fiction.
  
Any unspent Power → #strong[Momentum];.

=== 5.1 Statuses
- Statuses have #strong[tiers 1--6];.
- #strong[Recording a status.] When you create a status, record its name and tier, its #strong[scope] (who or what it affects, and in which circumstances), and its #strong[removal condition] (the event, recovery, treatment, or change that ends it). The scope must follow from the fiction. Normal recovery and removal rules still apply. #emph[Mapped patrol routes-2] --- evading the patrols you watched; ends when the routes change.
- #strong[Stacking:] a new status of the same kind raises the existing tier by the new tier minus 1 (minimum +1), so small hits accumulate slowly.
- #strong[Tier 6:] the target is #strong[Taken Out] of whatever that status represents (dead, unconscious, captured, convinced, routed), within the status's scope. A harmful status reaching tier 6 also gives one #strong[Scar] (§6.3). Death needs a lethal cause and established stakes.
#colbreak()
- Statuses modify rolls by #strong[± their tier] (use only the highest relevant harmful status and the highest relevant helpful status).

- #strong[Same kind.] Harm is the same kind when it worsens the same injury, affliction or condition. Renaming it doesn't stop it stacking: another cut worsens #emph[wounded], renewed menace worsens #emph[terrified], but a fresh burn needn't stack with a concussion. The GM says whether new harm stacks #strong[before] you decide to Resist or accept an injury (§10.9).
- #strong[Order.] Resistance and armour reduce incoming harm before it stacks. Harm reduced to tier 0 isn't recorded and doesn't stack. A status can't go above tier 6; extra tiers have no effect unless a rule says so.
- #strong[What it hinders.] A status modifies only rolls within its recorded scope: #emph[slashed thigh-3] hinders running and climbing, not reading a ledger. A status can also decide what is possible: no roll lets you use a hand you no longer have. If circumstances change, review its scope; don't broaden it just because its name allows another reading.
- #strong[Life-threatening harm.] A physical status that reaches tier 6 can make you #strong[Dying] when lethal stakes are in play (§6.7).
]
#pagebreak()
== 6. Resistance, Harm and Recovery
  #columns(2, gutter: 6mm)[
When a consequence lands on you (a status, lost gear, a bad position), you may #strong[Resist];:

+ Choose the pool that fits (see §3.2: Sōma for harm, Akmē to dodge, Psychē against deception and confusion, Pneuma against fear and the supernatural).
+ Roll a number of d12s equal to #strong[2 + that pool\'s Edge] and read only the #strong[highest die];. If penalties take the pool's Edge below 0, see #strong[Negative Edge] below.
+ Pay the listed cost in pool points. #strong[Don\'t subtract Edge] from it; Edge has already helped by adding dice. If #strong[two or more dice show 12];, pay 0 and clear one tier-1 status:

#figure(
  [#table(
    columns: (24%, 28%, 12%, 12%, 12%, 12%),
    align: (auto,auto,center,center,center,center,),
    table.header([Roll], [Cost], [2d], [3d], [4d], [5d],),
    table.hline(),
    [Two 12s], [0 + clear a tier-1], [1%], [2%], [4%], [6%],
    [9--12], [1], [55%], [68%], [77%], [81%],
    [5--8], [2], [33%], [26%], [19%], [13%],
    [1--4], [3], [11%], [4%], [1%], [\<1%],
  )]
  , kind: table
  )

#block[
#set enum(numbering: "1.", start: 4)
+ #strong[Effect:] reduce the incoming status by #strong[2 tiers] (to 0 if that brings it below 1), or turn a severe consequence into a lesser one.
]

The chance columns show Edge 0 to 3 (2d to 5d). A single 12 is simply a highest die in the 9--12 band. When an ability says your Edge #strong[counts as 1 higher] for a Resist, or gives #strong[Edge +1] to it, roll one more die; a penalty to Edge (such as #emph[Exposed] or #emph[Shaken]) rolls one fewer.

#strong[Negative Edge.] Penalties can take Edge below 0 for a Resist:
- #strong[Edge −1:] roll #strong[1d12];.
- #strong[Edge −2 or lower:] roll a number of d12s equal to the Edge without its minus sign (2d12 at −2, 3d12 at −3, and so on), and read only the #strong[lowest die];.

Pay the listed cost for the die you read. A single die can't give the double-12 result. When you keep the lowest, the double-12 result needs #strong[every die] to show 12. The chance columns show Edge −1 (1d), −2 (2d, lowest) and −3 (3d, lowest).

#figure(
  [#table(
    columns: (22%, 33%, 15%, 15%, 15%),
    align: (auto,auto,center,center,center,),
    table.header([Roll], [Cost], [−1], [−2], [−3],),
    table.hline(),
    [All 12s], [0 + clear a tier-1], [---], [1%], [\<1%],
    [9--12], [1], [33%], [10%], [4%],
    [5--8], [2], [33%], [33%], [26%],
    [1--4], [3], [33%], [56%], [70%],
  )]
  , kind: table
  )

#strong[Imposed harm, in order.] When an effect imposes a harmful status:
+ The GM names the status, its source and its incoming tier, and says whether it stacks with a status you already have (§5.1).
+ If you Resist, add any armour that applies (Playbook Rules §2.3) and pay the cost. A cost you can't fully pay makes you run dry (§6.1).
+ Record what is left with normal stacking. A status reduced to tier 0 isn't recorded.

#strong[Once per application.] Resist each application of harm once. You can't make a second attempt against the same harm.

#strong[What Resistance can't touch.] Resistance changes an imposed consequence. It doesn't reverse the action's success, restore lost Disposition or revoke an agreed outcome. Unless an ability says otherwise, you can't Resist:
- ordinary Disposition loss in a conflict (§10.6);
- an injury you accepted to cancel Disposition loss (§10.9);
- a cost you accepted in a concession (§10.11), or any other cost you accepted as payment for a benefit;
- a running-dry status (§6.2).

#strong[Protected payments.] An effect that prevents incoming harm, cancels a consequence or clears a status as a side benefit (such as the double-12 result above) can't remove an injury you accepted as payment, whichever action or Resistance produced it. Treatment, healing time and effects that explicitly heal an existing injury affect it normally (§6.6).

=== 6.1 Running Dry
#strong[Trigger.] You #strong[run dry] when a positive cost brings a pool to 0 or is more than the points left in it. Finish the action or Resistance that caused the cost, then take a harmful #strong[running-dry status] for that pool (§6.2). Running dry does not, on its own, take you out, give you a Scar or refill the pool.

#strong[Overrun.] Work out the final cost after Edge (for Effort), Tychē and every other permitted reduction, then compare it with the points left in the pool:

- #strong[Overrun] = final cost − points left (minimum 0).
- #strong[Incoming status tier] = 1 + overrun (recorded at tier 6 at most).

Spend the points you have. A pool can't go below 0, and the unpaid excess does not move to another pool.

#figure(
  [#table(
    columns: (22%, 20%, 20%, 38%),
    align: (auto,auto,auto,auto,),
    table.header([Points left], [Final cost], [Overrun], [Incoming status],),
    table.hline(),
    [3], [2], [0], [None (1 point left)],
    [3], [3], [0], [Tier 1],
    [1], [2], [1], [Tier 2],
    [1], [3], [2], [Tier 3],
    [0], [3], [3], [Tier 4],
    [0], [5], [5], [Tier 6],
  )]
  , kind: table
  )

Overrun beyond tier 6 has no extra effect unless a rule or an established stake says so.

#strong[Which costs can overrun.] Only #strong[Resistance] and costs #strong[imposed] on you. Effort, Help and ability activation costs must be paid in full unless the ability says it can overrun. You may spend your exact last points on purpose: the pool runs dry and you take a tier-1 status. A cost you accept as payment for a benefit is not an imposed cost.

#strong[Pay as you go.] Pay each cost at the point its rule says, and resolve any running dry straight away. If that status takes you out, finish only the action or Resistance whose cost caused it: you can't add more Effort, buy more Power or activate more abilities for that action. The action still resolves. If it is one of two independent actions in a volley, both resolve before victory is checked.

#strong[Separate costs stay separate.] Each cost listed separately is its own payment. You can't split one cost into smaller payments, or combine separate costs, to change overrun or stacking. When one effect takes several points from the same pool at once, total them as one imposed cost unless the effect says otherwise. Costs from different pools are resolved separately.

#strong[Resisting on empty.] You can Resist with a low or empty pool unless your condition prevents it (§6.4), and the Resistance still takes effect. Resolve protection, the Resistance and the original consequence first, then apply the running-dry status. The new status doesn't penalise that Resistance roll or undo its result.

#strong[Zero costs.] A final cost of 0 never makes you run dry, even if the pool is already empty. Being at 0 isn't an event in itself: you don't take a new status because time passes, a new turn begins, or you take an action that costs nothing. A later positive Resistance cost or imposed cost can make you run dry again.

#strong[Empty pools.] An empty pool has no penalty of its own. It doesn't remove Disposition or take you out; its running-dry status does that work. You can keep acting with other resources or with actions that cost nothing. The pool stays at 0 until rest restores it (§6.5). There is no automatic refill.

#strong[NPCs.] Ordinary NPCs don't have pools and never run dry. Spending Woe on an NPC creates no status, and Woe can't be overrun: if the GM can't pay an ability's Woe cost, the NPC can't use that ability. An NPC built with full PC pools runs dry normally.

#sidebar("Running Dry in Order")[
  #set enum(numbering: n => text(font: display-font, fill: brass, weight: 700, size: 0.85em)[#n.])
+ Pay each cost when its rule says.
+ If the cost empties or overruns the pool, work out the overrun.
+ Impose that pool's running-dry status at tier 1 + overrun.
+ Stack it with the same status if you already have it (§5.1).
+ At tier 6, apply the status's scope, then record one Scar (§6.3).
+ Recover the pool and the status separately (§6.5).
]
#colbreak()
=== 6.2 Running-Dry Statuses
The status must fit both the pool and the action that drained it:

#figure(
  [#table(
    columns: (18%, 82%),
    align: (auto,auto,),
    table.header([Pool], [Example running-dry statuses],),
    table.hline(),
    [Sōma], [#emph[physically exhausted];, #emph[muscular strain];],
    [Akmē], [#emph[unsteady];, #emph[reflexes overloaded];],
    [Psychē], [#emph[mentally exhausted];, #emph[cognitive overload];],
    [Pneuma], [#emph[resolve fractured];, #emph[spiritually drained];],
  )]
  , kind: table
  )

#strong[Set it up once.] When you first record the status, set its name, its scope and its recovery category (§6.5). The name decides which rolls it hinders.

#strong[One status per pool.] The first time a pool runs dry, that status becomes the pool's depletion status for the rest of the continuous ordeal. Write the pool beside it. Running dry in that pool again worsens the same status, unless a genuinely different cause calls for a different consequence. A new name or description is not a different cause. Each running-dry event worsens only one status.

#strong[Example.] You have #emph[mentally exhausted-2] and overrun Psychē by 2. The incoming status is tier 3, which stacks for +2, so you now have #emph[mentally exhausted-4].

#strong[It is a cost.] Armour, Resistance and effects that cancel incoming consequences can't prevent or reduce a running-dry status. Once recorded, it can be treated, Restored or healed like any existing status, within the limits of the effect used. A clearing benefit from the same Resistance or action can't clear the status that paid for it.

=== 6.3 Tier 6 and Scars
When a harmful status reaches #strong[tier 6], whether in one hit or through stacking:

+ Resolve its tier-6 outcome (§5.1).
+ Apply removal within the status's scope (below).
+ Record #strong[one Scar], subject to the limits below.

#strong[Scope.] If the status leaves you unable to pursue your side's intent in the current conflict, you are #strong[Taken Out]. Your side's shared Disposition doesn't change (§10.7). If none of a side's participants can continue pursuing its objective, that side loses at once. If the status only stops one activity (#emph[bound] stops you moving, not talking), apply that restriction and stay in the conflict. Set the scope of a non-damage status when it is inflicted, and don't widen it at tier 6. Either way, the status still gives its Scar.

#strong[Not lethal by default.] A running-dry status at tier 6 is not deadly on its own. Death needs a lethal cause and established stakes. Tier 6 doesn't, by itself, cost you a limb, lower a maximum pool or impose any other permanent loss; those need an established consequence, a specific effect or an agreement.

#strong[The Scar.] The status records your current condition; the Scar records the lasting mark of reaching the breaking point. The player and GM agree on a Scar that fits what happened. A Scar can't introduce an unrelated injury, dictate an unrelated belief, or extend the opposition's victory beyond the stakes. Label it with the pool most tied to the condition (a #emph[Pneuma Scar]):

#figure(
  [#table(
    columns: (38%, 62%),
    align: (auto,auto,),
    table.header([Tier-6 status], [Possible Scar],),
    table.hline(),
    [#emph[physically exhausted]], [#emph[my old injury gives out under strain]],
    [#emph[reflexes overloaded]], [#emph[hesitates when everything moves at once]],
    [#emph[cognitive overload]], [#emph[gaps in the memory of that night]],
    [#emph[terrified]], [#emph[can't forget what was behind the door]],
    [#emph[resolve fractured]], [#emph[doubts the oath that once sustained me]],
    [#emph[bound] or #emph[captured]], [#emph[can't bear being restrained]],
  )]
  , kind: table
  )

#strong[Scar limits.]
- #strong[One per episode.] A status gives a Scar the first time it reaches tier 6. More harm while it stays at tier 6, or lowering it and raising it again in the same episode, gives no further Scar.
- #strong[One per event.] A single action or hazard can give a character at most one Scar, even if it takes several statuses to tier 6. Only an ability that says so can give more than one.
- #strong[Scar Recorded.] Mark every status that reached tier 6 in a Scar-giving event as #emph[Scar Recorded] for the rest of the continuous ordeal, even if the status is later cleared. Remove the mark only when the status is fully cleared #strong[and] the scene or ordeal is over. The mark is bookkeeping only, not a status or a penalty.
- Don't split one condition into several differently named statuses to gain or avoid Scars.

#strong[Scar effects.] A Scar is a lasting weakness tag, not a status. Apply it when it's relevant, and it can be compelled for Tychē Points. Rest, treatment, Restore and pool recovery don't remove a Scar; changing one takes an Advance, a milestone or an explicit ability. If a Scar and a harmful status describe the same impairment on the same roll, apply only the larger penalty. Your #strong[fourth Scar] retires the character from ordinary adventuring. Finish the immediate scene, then decide with the player how the character leaves. Retirement doesn't mean death.

=== 6.4 Being Taken Out
#strong[Three ways out.] You are #strong[Taken Out] of a conflict when a harmful status reaches tier 6 within its scope (§6.3), when an effect says so, when you voluntarily withdraw, or when an established circumstance prevents you from pursuing your side's objective (§10.7). Ordinary Disposition loss never takes an individual out. Once you are out, you can't start another action, spend Effort or activate an ability unless its rules let you act while Taken Out.

#strong[Disposition stays with the side.] Being Taken Out doesn't directly change your side's shared Disposition. Your side loses your skills, abilities and help, and if none of its participants can continue pursuing its objective, it loses at once (§10.7, §10.10).

#strong[Out isn't down.] Being Taken Out doesn't, on its own, make you unconscious, injured or dying. Describe it to fit the fiction: pinned down, disarmed, driven back, cut off, or too frightened to go on. Injury needs a status, death needs established lethal stakes (§6.7), and permanent harm needs an established consequence (§6.8).

#strong[Resisting while out.] Being Taken Out doesn't automatically stop you Resisting, but the Resistance must be something you can still do. You can brace against pain while pinned down, but you can't dodge while fully #emph[bound], or use an act of will while unconscious. When a status first takes you out, finish any Resistance already under way. Resistance can't reverse a defeat, undo an accepted concession, or prevent a cost you accepted as payment. Once a conflict is settled, you can only Resist the consequences that were left open to it; you can't use Resistance to reopen the intent or delay settlement.

#strong[Getting back in.] To rejoin a conflict that is still going, and that your side hasn't lost, you need both of these:
+ the condition that stopped you must be removed; and
+ an ability or rule must explicitly let a Taken Out character return.

Returning doesn't restore any of your side's Disposition unless the ability says so.

An ordinary Defend can't bring back a Taken Out ally unless its rules say it can. If you recover after the conflict is over, you act normally in the scenes that follow, subject to your remaining statuses.

=== 6.5 Rest and Recovery

Recovery follows four successive rest stages:

#figure(
  [#table(
    columns: (16%, 38%, 46%),
    align: (auto,auto,auto,),
    table.header([Rest], [Time required], [Recovery],),
    table.hline(),
    [First], [A few seconds; one action during an encounter], [Roll 1d12, halve the result and round up],
    [Second], [10 minutes], [Roll 1d12, halve the result and round up, then add 1],
    [Third], [1 hour], [Roll 1d12, halve the result and round up, then add 2],
    [Fourth], [10 hours, usually overnight], [Restore all four pools to full],
  )]
  , kind: table
  )

- #strong[Divide the recovered points among Sōma, Akmē, Psychē and Pneuma however you wish], without exceeding a pool\'s maximum. They don\'t have to go to whichever pool was drained most recently.

- #strong[Edge does not apply to recovery.] Edge only reduces Effort cost and adds Resistance dice (§2.4, §6); recovery stays flat so it can\'t stack with Edge\'s other benefits.
- After the 4th rest, the cycle resets --- your next rest that day (or the start of a new day) is a First rest again.
- Each PC rests and rolls independently. If two of five party members stop for 10 minutes to recover, the other three don\'t have to stop or roll.
- #strong[Running dry has no automatic refill.] A pool at 0 comes back through these rests in the normal way. Its running-dry status recovers separately, as described below.

#strong[Recovering running-dry statuses.] Restoring a pool doesn't clear its running-dry status, and clearing the status doesn't refill the pool. When you first record the status, choose its category:
- #strong[Depletion] (exhaustion, strain, temporary overload): the default, unless the source makes it an injury or affliction. It recovers through rest, as described below.
- #strong[Injury] (real physical damage): recovers through treatment, Restore and healing time, like any wound.
- #strong[Affliction] (supernatural or ongoing cause): recovers only as its source allows.

#strong[Resting off depletion] #emph[(playtest value)]#strong[.] When you take one of the 1st--3rd rests, you can put the recovery roll toward the pool, toward its depletion status, or split it between them. Every #strong[2 points] removes #strong[1 tier] of the depletion status. Each point counts once. The 4th rest (full restore) also clears any depletion status whose cause has ended. It doesn't clear Scars, injuries or afflictions. Reassurance or first aid can make recovery possible, but can't keep stripping depletion tiers with Restore. Abilities that explicitly restore exhaustion or harmful statuses work as written.

#strong[No shortcut.] Running dry never gives a special recovery roll, an automatic refill, or a way around the rest cycle. You can't overrun a pool on purpose to replace a bad recovery roll or to jump to a fresh rest stage.

#strong[Each layer recovers on its own.] Disposition, pools and statuses each recover only through their own procedure:
- #strong[Disposition] is set fresh when a genuinely new conflict begins (§10.2). Fresh Disposition doesn't refill pools or clear statuses, and a brief pause in the same struggle isn't a new conflict.
- #strong[Pools] recover through the rests above. A full pool doesn't heal an injury, and an injury doesn't stop pool recovery unless its rule says so.
- #strong[Statuses] recover by their kind: a temporary state ends when its cause or duration ends; injuries need treatment and time (§6.6); afflictions follow their source.

Winning a conflict, ending a scene or setting fresh Disposition is #strong[not a general reset].


#strong[Advance option --- Hardened] #emph[(6 XP, one-time)]

Recover #strong[1 additional point] whenever you make a recovery roll. This Advance may be taken only once. It does not change the fourth rest\'s full recovery.

=== 6.6 Treatment and Healing

#strong[Appropriate care.] Treatment must address the cause of the harm:

#figure(
  [#table(
    columns: (44%, 56%),
    align: (auto,auto,),
    table.header([Harm], [Typical care],),
    table.hline(),
    [Wounds, blood loss, poison], [Medicine and suitable supplies],
    [Fear, grief, shock], [Empathy, reassurance and safety],
    [Confusion, cognitive disruption], [Diagnosis, rest or specialist care],
    [Damaged machines or implants], [Science or Craft, tools and access],
    [Curses, possession, corruption], [A fitting supernatural method or the source's stated cure],
  )]
  , kind: table
  )

A skill doesn't supply the tools, knowledge or fictional permission on its own.

#strong[Routine care.] In safe conditions, when failure would add nothing, care needs no roll. It gives permission to treat, stabilises where nothing is uncertain, and meets the conditions for natural recovery. It #strong[generates no Power]. If ordinary treatment could remove one tier of a lasting injury and success is routine, remove that tier and mark the injury #emph[treated]; there's no surplus Power or Momentum. Roll only when an uncertain result matters, never just to farm Momentum.

#strong[Emergency care] stops an injury getting worse: stopping bleeding, splinting a limb, pulling someone away from a harmful influence, isolating a damaged power cell. It doesn't normally reduce the tier. When the outcome is uncertain, roll the treatment skill vs. #strong[Standard 15], adjusted by Truths. On a success, the deterioration stops or treatment can begin. On a Success at a Cost, the same, with the normal cost. On a failure, the condition is still untreated; the GM announces any further consequence before another attempt.

#strong[Restore on lasting injuries.] Restore costs 1 Power per tier (§5). It can clear a #strong[temporary] condition outright when the action removes its cause: putting out burning clothes reduces #emph[on fire], calming an ally reduces fear. #strong[Lasting injuries] are slower:
- Ordinary treatment reduces a given lasting injury by #strong[at most 1 tier]. Mark it #emph[treated].
- Further ordinary treatment can't reduce it again until a healing interval (below) actually removes a tier from it. Interrupting rest, changing healers, renaming the injury or starting a new scene doesn't clear the mark, and new harm to the same injury doesn't refresh it. A separate injury has its own mark.
- Spare Power buys other fitting Effects or becomes Momentum as normal.
- Abilities, cyphers and items that explicitly heal a stated number of tiers (such as #emph[healing gel]) follow their own text. Abilities that only change the cost of Restore don't lift the 1-tier limit.

#strong[Care in a conflict.] Treating someone under opposition uses your action. Emergency care can be a Defend only where the conflict type or an ability allows its skill (such as #emph[Battlefield Surgeon]). Restoring Disposition keeps your side in the contest; it doesn't heal an injury unless the action also buys a healing effect.

#strong[Healing intervals] #emph[(playtest values)]#strong[.] Once a lasting injury has had appropriate care and its cause has stopped, safe rest removes one tier per interval. Use the injury's current tier:

#figure(
  [#table(
    columns: (26%, 74%),
    align: (auto,auto,),
    table.header([Current tier], [Safe recovery to remove 1 tier],),
    table.hline(),
    [1], [One full night],
    [2], [One full day],
    [3], [Three full days],
    [4], [One full week],
    [5], [Appropriate treatment, then one full week],
    [6, not lethal], [Remove the incapacitating cause and set a recovery method],
    [6, life-threatening], [Stabilise, then definitive care before natural recovery begins (§6.7)],
  )]
  , kind: table
  )

These are game-time intervals, not medical estimates. A full night is the normal overnight rest; a full day is 24 hours in recovery conditions; a full week is seven such days. Intervals can overlap pool rests. Recovery needs shelter, food and care that suit the injury. Light activity is fine; strenuous activity that aggravates the injury stops recovery.

#strong[Timing.]
- When an injury's tier changes, its next interval uses the new tier.
- If treatment or healing lowers the tier, keep the qualifying time already spent. If that time already meets the new interval, remove one tier and start the next interval at zero. One change can complete only one interval.
- If fresh harm raises the tier, discard progress and start a new interval at the higher tier. Separate injuries don't reset each other.
- A brief interruption pauses recovery; it doesn't erase it. A bad roll on an unrelated action doesn't worsen an injury; that needs a relevant danger or a stated consequence.

#strong[Afflictions] (poison, disease, possession, curses, ongoing exposure) don't follow the interval table. When the affliction is identified, its source sets what worsens it, what suppresses it, what allows recovery, and whether treatment cures it or only eases the symptoms. A setting book can give specific afflictions, and creatures that recover in unusual ways, their own rules; where it does, those rules win.

=== 6.7 Dying and Stabilisation

#strong[Becoming Dying.] After Resistance and stacking, life-threatening physical harm that reaches tier 6 makes a living character #strong[Dying], if lethal stakes allow that outcome (§10.2). It also gives a Scar as normal (§6.3). The character is incapacitated and can't take ordinary actions. Start a #strong[3-segment Dying clock]. There is no extra #emph[dying] penalty; the injury already records the harm. Mental defeat, capture, exhaustion and ordinary fear never start a Dying clock, and a running-dry status is never lethal on its own.

#strong[Cadence.] When Dying begins, set how the clock advances: at the end of each exchange after the one in which Dying began, during a scripted conflict; or after a stated fictional interval, outside one. The clock advances #strong[because the interval passes], not because someone attempts treatment. Several characters can act in the same interval without advancing it further. Moving into or out of a scripted conflict carries the existing deadline over; it doesn't advance the clock or grant extra time.

#strong[Further harm.] Each further unmitigated physical harm that could worsen the mortal injury marks one extra segment, even though the injury stays at tier 6. One action or hazard can mark at most one extra segment. When the third segment is marked, the character dies.

#strong[Stabilising.] An adjacent character with suitable means rolls Medicine vs. #strong[Hard 18], adjusted by Truths. An ability or a fitting supernatural method can offer another way.
- #strong[Success:] the patient is stable and the clock stops.
- #strong[Success at a Cost:] stable, with the normal cost.
- #strong[Failure:] still Dying. The attempt uses the action, but doesn't advance the clock.

Stabilising doesn't erase marked segments, reduce the injury, refill pools or return the patient to the conflict. A stable patient can be moved with care. If a new event makes them Dying again, the clock resumes from its recorded segments.

#strong[Definitive care.] Emergency care can stabilise a tier-6 life-threatening injury but can't lower its tier. Lowering it below tier 6 takes #strong[definitive care]: a suitable procedure, facility or specialist, or an ability or item that explicitly heals the injury (such as #emph[Miracle Worker], #emph[Not on My Table] or #emph[healing gel]). The GM states what that requires when the injury is assessed and doesn't add requirements once they are met. When definitive care brings the injury below tier 6 and removes its immediate lethal cause, clear the Dying clock.

#strong[Immediate death.] Use it only when the established outcome leaves no plausible time for rescue, or a specific killing method calls for it (such as a creature's killing strike in a setting book). Announce that danger before the roll, and allow Resistance, escape or interruption. Once such an outcome is fully resolved, don't add a Dying clock to undo it; equally, don't skip the clock for an ordinary mortal wound just because the description is graphic.

#strong[Setting-specific harm.] If a setting gives a condition (such as blood loss) its own tiers and stabilising rules, use those instead of a Dying clock, not as well.

    
=== 6.8 Permanent Harm
#strong[Where it comes from.] An injury doesn't become permanent just because its tier is high. Permanent harm needs an established permanent-injury stake, a specific effect or creature rule, a voluntary bargain, or a Scar-giving event. Tier 6 always gives a Scar (§6.3), but never by itself severs a limb, destroys an organ, lowers a maximum pool or causes any other permanent mechanical loss.

#strong[The wound heals; the loss stays.] A permanent change can outlast the injury that caused it. When #emph[severed hand-4] has

healed, the hand is still gone: the status measured the acute
wound. Record the lasting change as a tag or a character fact, not as a status that never heals.

#strong[Adapting.] Training, help, prostheses, old-world works or supernatural intervention can change how permanent harm affects play. A replacement doesn't automatically remove a related Scar, and a Scar doesn't make a replacement useless. Don't reduce maximum pools, Edge, skills or Refresh unless the effect or an agreed Advance says so.
]

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
