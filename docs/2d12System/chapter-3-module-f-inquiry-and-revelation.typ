#import "common.typ": *
    
== Module F: Inquiry & Revelation

#columns(2, gutter: 6mm)[
Use this module when a mystery is the point of the game: a murder, a vanished caravan, a forbidden text, a buried ruin. It separates *finding* from *understanding*. Finding the clue is never the challenge. Reading it correctly is.

The module changes nothing outside Inquiry scenes. Conflicts, travel, Resistance, Momentum and Woe all work as written.

=== F.1 The Core Rule

#quote(block: true)[
  If a scene holds a *core clue*, and a character has a fitting skill rated *+1 or higher*, that character finds it. No roll. No cost. No failure.
]

- *Core clue.* A fact the group needs to reach the next scene or to understand the Truth of the case. Every Inquiry scene has at least one.
- *Fitting skill.* Any skill from the setting's skill list that the GM can reasonably tie to the clue. Several skills can reach the same clue by different routes.
- *Description.* The player says what the character does and which skill it uses, or the GM offers the clue unprompted to a character who clearly has it.
- *Stuck groups.* If nobody has a fitting skill, the clue floats (§D.6) to another source. A core clue is never locked behind a missing skill.

=== F.2 Insight: The Extra Layer

A core clue gets you to the next scene. *Insight* is everything beyond that: motive, timing, who else was involved, what the culprit will do next, a shortcut, an ally. Insight is optional, and you can gain it in two ways.

#figure(table(columns: (20%, 80%),
  table.header([Method], [How it works]),
  [*Probe*], [Roll 2d12 + the skill vs. a Difficulty set by the GM (usually *Standard 15*). Each Power you spend on *Discover* (Core Rules §5) is one Insight. The usual outcomes apply: a miss by 1--3 is a Success at a Cost, and a miss by 4+ is a Failure that gives the GM 1 Woe. A failed Probe never removes a core clue.],
  [*Buy*], [Spend *4 − Edge* points (minimum 1) from the skill's pool, with no roll. You gain exactly one Insight. The pool is the one that pays for that skill in Effort and Resistance (Core Rules §3.3).],
))

Probe is cheap but risky. Buy is safe but drains the pool you also need for Resistance and Effort. Players should have to choose between them.

#sidebar("Which pool pays?")[
  *Sōma:* long vigils, exhumations, hard physical labour. *Mētis:* meticulous search, tailing, lock and mechanism work. *Psychē:* deduction, records, anatomy, languages. *Pneuma:* reading people, rites, dread places, the uncanny. The GM may allow a different pool when the fiction supports it (Core Rules §3.3).
]

=== F.3 What an Insight Can Be

When you gain an Insight, choose one. The GM may veto a choice that does not fit the scene.

- *Detail.* A true fact that deepens a clue you already have. It can help you solve the case, but it is never required to reach the next scene.
- *Edge.* Create a Truth that fits what you learned (_the guard captain is afraid of the cellar_). It lasts for the scene, or until the case ends if the group spends an extra Power or point.
- *Contact.* Name an ally, informant or source, and say how you know them. The GM adds a short tag.
- *Spotlight.* Show real expertise in front of others. You gain a free invoke of one tag or Truth about your standing, once per scene. Use this to shine, not to win a fight.
- *Foresight.* The GM tells you one thing the opposition is about to do.

If no Insight fits, nothing happens and no points are lost. Buy costs are refunded.

=== F.4 Boosted Skills and Recovery

- *Boosted skill.* At creation, mark one skill you hold at +1 or higher. When you Buy an Insight with it, regain 1 point to the paying pool. Mark another skill each time you have taken 4 Advances.
- *Recovery.* Pools recover as usual (Core Rules §6). The GM may also offer a *refresh opportunity*: a night in an archive, a round of drinks in the right tavern, a meal with a scholar. Each restores 2 points to the pool that fits.
- *Help.* One ally may Help a Probe as normal (Core Rules §2.4), or contribute a relevant skill to a Buy. Add +1 point of discount per helper, to a minimum cost of 1.
- *Tags.* A power tag that applies to the skill adds +1 to a Probe, as usual. Burning one gives +1 Power.

=== F.5 Danger and the Clock

Inquiry has no failure state, so it needs pressure from somewhere else. Pressure comes from the opposition, not from missed rolls.

- *Woe pays for Reaction.* When a Probe fails, or when the group lingers, the GM gains Woe as normal. The GM may spend Woe on an *Antagonist Reaction*: the culprit destroys evidence, a witness vanishes, a patron grows impatient, an ambush is arranged.
- *The case clock.* Start a 6-segment clock (Core Rules §7) called _They Know We Know_. Tick it when the group makes noise, takes a long time, or when a Probe fails by 4+. When it fills, the opposition acts decisively.
- *Danger is a separate scene.* A scene either asks "what do we learn?" (Inquiry) or "what do we survive?" (Conflict, Hazard). A scene that is both is two scenes: finish one, then start the other.
- *Clues never depend on winning a fight.* Winning may give Insight, but a core clue must be reachable even if the group loses, flees or is captured.

=== F.6 Building a Case

Work backward from the Truth, then forward through scenes.

+ *The Truth.* Write one paragraph: who, what, why, and how it was done.
+ *The Hook.* Tie it to a Belief, Goal or Instinct of at least one PC.
+ *The Twist.* Something that widens or changes the case halfway through.
+ *The Conclusion.* A confrontation, a choice, or a public accusation. Core clues bring the group here, but the players decide what to do with what they know.
+ *The scenes.* Link them with clues, as below.

#figure(table(columns: (24%, 76%),
  table.header([Clue type], [Use]),
  [*Core clue*], [Points to a scene or to the Truth. Always found, never rolled for.],
  [*Lead-in*], [A clue that points _to_ a scene. Give every scene at least *two* lead-ins from different scenes, so the case is a web and not a line.],
  [*Floating clue*], [The GM places it wherever the group looks first. Use it for the clue the case cannot do without.],
  [*Leveraged clue*], [Available only once the group holds another clue. Example: a suspect clams up until you confront them with the ledger.],
  [*Pipe clue*], [A detail that seems like colour now and pays off later.],
  [*Red herring*], [True, interesting and misleading. Never a lie told by the narrator. Give each one a source and a reason.],
))

Scene types: *Introduction*, *Core* (holds core clues), *Alternate* (another route to a clue), *Subplot*, *Action* (Conflict or Hazard), *Reaction* (the opposition responds) and *Conclusion*.

=== F.7 Running Inquiry

- *Cover the skills.* Build an Investigator Matrix, a table of the party's skills against the case's scenes. Give each PC a scene where their skills matter most.
- *Be generous.* Give information freely. Let players chase red herrings. Give minor NPCs a past and a want.
- *Core clues lead to the end, not through it.* Following them only gets the party to the last scene. Insight and good reasoning decide whether they arrive prepared.
- *Listen and improvise.* When players theorise, borrow their best ideas, provided they do not contradict a core clue or the Truth.
- *Share the world.* A good Insight lets the player describe the contact, the rumour or the detail, within the Truths already established.
- *Prompt early.* For the first session or two, remind players what their skills can do.

=== F.8 Weird Methods

Oracles, divinations, scrying, speaking to the dead and similar methods are tools that produce *clues*, not answers. An Arcana-style skill finds core clues like any other. The result is a true but partial, symbolic or conditional reading. Use Pneuma for the Buy or Probe. Opponents who expect scrying can block it, mislead it, or leave a false trail with their own working. Let the setting decide whether such evidence counts as proof.

#sidebar("Quick Reference")[
  *Core clue:* fitting skill (+1 or higher) → found, free. \
  *Probe:* 2d12 + skill vs. Standard 15; each Power on Discover = 1 Insight. \
  *Buy:* 4 − Edge (minimum 1) from the skill's pool = 1 Insight, no roll. \
  *Boosted skill:* Buy with it → regain 1 point. \
  *Case clock:* 6 segments; tick on noise, delay, or a Probe failed by 4+. \
  *Danger:* a separate scene; clues never depend on winning.
]
]
