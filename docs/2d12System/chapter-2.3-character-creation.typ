#import "common.typ": *

== 3. Character Creation <core-character-creation>
#columns(2, gutter: 6mm)[
==== Character Creation at a Glance
Before creating characters, agree on the campaign premise: the situation that brings you together, the immediate problem, the kinds of characters that fit, and why you will cooperate. For example: isolated settlements must reopen a trade route before winter while rival leaders compete to control it.

These steps describe the order of creation; the subsections below group rules by subject for reference. Revisit earlier choices as your character takes shape.

+ Establish the campaign premise together.
+ Sketch your character concept: a role, an important experience, and something you want to explore.
+ Write your World Belief (@core-beliefs-goals-instincts).
+ Write your Self Belief (@core-beliefs-goals-instincts).
+ Choose Descriptor, Playbook, and Focus (@core-sentence); complete pools, Edge, skills, tags, abilities, and starting resources (@core-pools-edge[§§]–@core-tags[], @core-starting-resources).
+ Choose one Specialisation and two Knowledge Skills (@core-skill-pyramid), and name a starting circle and contact (@core-starting-resources).
+ Introduce the characters and agree on connections, including the link supplied by your Focus.
+ Write your Other Belief with the other player's agreement (@core-beliefs-goals-instincts).
+ Choose a concrete starting Goal (@core-beliefs-goals-instincts).
+ Write your Instinct (@core-beliefs-goals-instincts).
+ Review the character with the group.

=== 3.1 The Sentence <core-sentence>
#quote(block: true)[
#strong["I am a [Descriptor] [Playbook] who [Focus]."]

"I am a #strong[Reckless] #strong[Furcifer] who #strong[Never Leaves Anyone Behind]."
]

#figure(table(
  columns: (20%, 15%, 65%),
  table.header([Part], [Grammar], [What it gives you]),
  [Descriptor], [Adjective], [+2 pool points to one pool, 2 fixed double-sided tags, 1 suggested Instinct],
  [Playbook], [Noun], [Starting pools and Edge, choose 2 of 6 double-sided tags, special abilities, XP trigger, load-out, an anchor skill],
  [Focus], [Verb phrase], [2 fixed double-sided tags, a Tier 1 Focus ability, and a link to another PC],
))

=== 3.2 Pools and Edge <core-pools-edge>
Four pools, each roughly 6–14:

- #strong[Starting values:] the playbook sets the base (totals 36), plus 4 points to distribute and +2 from the Descriptor (42 total).
- #strong[Edge:] the playbook gives #strong[3 points of Edge], maximum 2 in any one pool at creation. Edge reduces the cost of Effort from that pool and adds dice when you Resist with it (@core-resistance-harm-recovery).
- Pools are spent on #strong[Effort] (@core-bonus-dice-effort) and #strong[Resistance] (@core-resistance-harm-recovery). They are your stress tracks.

#figure(table(
  columns: (20%, 40%, 40%),
  table.header([Pool], [Covers], [Resists]),
  [Sōma], [Strength, endurance, toughness], [Wounds, poison, exhaustion, cold],
  [Mētis], [Speed, precision, stealth, reflexes], [Traps, falls, being caught or grabbed],
  [Psychē], [Intellect, perception, memory, cunning], [Confusion, illusion, deception, madness from knowledge],
  [Pneuma], [Will, presence, faith, emotional core, the supernatural], [Fear, despair, possession, corruption, social pressure],
))

=== 3.3 Skill Pyramid <core-skill-pyramid>
Ten rated skills from a list of 20:

#figure(table(
  columns: (66%, 34%),
  table.header([Rating], [Count]),
  [+4 Great], [1],
  [+3 Good], [2],
  [+2 Fair], [3],
  [+1 Average], [4],
))

The playbook's anchor skill must sit at +3 or +4. The pyramid rule (each tier must have at least as many skills as the tier above it) still applies when you advance.

#strong[Generic skill list by default pool:]

#figure(table(
  columns: (23%, 24%, 28%, 25%),
  table.header([Sōma], [Mētis], [Psychē], [Pneuma]),
  [Athletics], [Shoot], [Notice], [Will],
  [Brawl], [Stealth], [Investigate], [Persuade],
  [Fight], [Drive/Pilot], [Lore], [Intimidate],
  [Endure], [Craft], [Tech], [Empathy],
  [Survival], [], [Medicine], [Arcana\*],
  [], [], [Deceive], [],
))

\*Arcana is renamed per setting: Mysticism, Faith, Psionics, Weirdness, or removed entirely in mundane games.

The default pool pays for Effort and Resistance. The GM can allow another pool when the fiction supports it (Intimidate with Sōma = looming; with Pneuma = cold menace).

==== Specialisations
// PLAYTEST: Specialisation die. Track how often it applies, whether it changes the kept pair, and whether it replaces Effort or Woe.
A #strong[Specialisation] names a narrow application of a rated skill: write it as #emph[Skill (Specialisation)], such as #emph[Medicine (Trauma Care)], #emph[Craft (Precision Mechanisms)] or #emph[Persuade (Mediation)].

- #strong[Benefit.] When a test uses that skill and the Specialisation directly applies to your approach, add #strong[one free bonus die] (@core-bonus-dice-effort). It counts toward the +2 cap. Only one Specialisation applies per test. At the cap it gives no substitute benefit.
- #strong[Approach, not scenery.] It applies to how you tackle the problem, not to what is present. #emph[Persuade (Mediation)] applies when brokering terms between rivals, not when bluffing one of them just because a dispute is under way.
- #strong[Narrow.] It must be narrower than its skill. If it would apply to almost every use of the skill, narrow it.
- #strong[Limits.] It grants no flat modifier, free Power or extra action, and doesn't let you substitute one skill for another in a scripted conflict (@core-conflict-system). It combines with Effort, Help or a die bought with Woe, within the cap.
- #strong[Getting one.] Start with #strong[one]. An Advance can buy another (@core-spending-xp).

==== Knowledge Skills
A #strong[Knowledge Skill] is an unrated field of expertise: #emph[Regional Trade Customs], #emph[River Ecology], #emph[Institutional Records]. Start with #strong[two], covering subjects your background and skills don't already cover.

#strong[What also counts.] Relevant tags from your background count as knowledge within their scope, and so does any skill rated #strong[+2 or higher] (professional). Don't take #emph[Medicine] again as knowledge if you already practise it at +2.

#strong[What knowledge does.] It adds no die or modifier by itself. It tells you what the character knows, what they can attempt, and what a result means to them:

+ #strong[Routine facts are free.] If someone with this expertise would know the answer and it's available to them, the GM says so. Don't roll to recall standard practice.
+ #strong[Expertise grants permission] (@core-difficulty-ladder). It may let the character interpret a technical record or attempt a specialist procedure. If the action is still uncertain and matters, roll the relevant skill.
+ #strong[An expert reads more into the same result.] Anyone might find the altered record; an expert also recognises which entry couldn't come from the normal process. That reading is information, not extra Power.
+ #strong[No single gate.] Don't make one Knowledge Skill the only route to an essential clue. Others can consult a source, find a contact or investigate another way.

#emph[Example:] a medic recognises without a roll that a patient's symptoms don't match the recorded injury. Stabilising the patient during an evacuation is uncertain, so they roll Medicine and add a die for #emph[Trauma Care]. Knowledge changes what the character understands; a Specialisation changes the roll.

=== 3.4 Tags <core-tags>
A new character has #strong[six identity tags]: the 2 fixed tags from the Descriptor, 2 chosen from the Playbook's 6 options, and the 2 fixed tags from the Focus. Each is double-sided: it can supply Power or be compelled. Tags separately granted by equipment, Domains or abilities are additional to this starting identity package and follow their existing rules.

- #strong[One description, two sides.] Each tag is a single description (#emph[Built Like a Door], #emph[My Word Is Iron], #emph[Favours Run Both Ways]). Neither tag in a pair is assigned the role of strength or weakness. Both helpful uses and complications must follow naturally from that tag's wording and the established fiction.
- #strong[When it helps,] it supplies #strong[+1 Power] on any success, #strong[max +2 per action] (@core-outcomes). Explain how it helps. Tags never add to or subtract from the roll.
- #strong[When it causes trouble,] it can be compelled for a Tychē Point (@core-tyche-points). A tag can supply Power and be compelled in the same action when the help and the trouble are distinct.
- #strong[Burning a tag:] mark a relevant tag as burned to gain an automatic +1 Power on a success. It stays unusable until you recover it (a downtime action or a milestone). Burning ignores the +2 cap.

#emph[Example:] #emph[My Word Is Iron] can supply Power when your reputation for keeping promises helps you earn trust. It can be compelled when honouring a promise demands a serious sacrifice. Both uses come from the same commitment.

With a +2 cap, a third relevant tag is best used for burning or as Tychē Point invoke material.

=== 3.5 Beliefs, Goals, and Instincts <core-beliefs-goals-instincts>
==== Three Different Jobs
- #strong[Beliefs] state convictions and commitments: why you act. Write one World, one Other, and one Self Belief.
- #strong[Goal] states a concrete objective for this session or mission: what you want to accomplish next.
- #strong[Instinct] states an if/then reflex: how you habitually respond.

Rewrite a Goal when it's accomplished or no longer fits, and check it at the start of each session. Beliefs and Instincts can change at milestones (@core-reviewing-beliefs-instincts). Beliefs can justify compels (@core-tyche-points) and meaningful decisions can earn XP (@core-earning-xp). They do not create an additional resource.

==== Writing Your Beliefs
Each Belief combines a conviction with a commitment to act: "I believe this; therefore, I will do this." Write what you intend to do, not an outcome you are guaranteed to achieve. Avoid a virtue without an action: "I value loyalty" gives less direction than "Those who stand beside me deserve my loyalty; I will not abandon a companion to save myself."

==== World Belief
Connect yourself to an important problem, faction, institution, or conflict in the campaign premise. Explain why you cannot simply walk away.

- What must change, or be protected?
- Why does it matter to you personally?
- What will you do about it?

#quote(block: true)[
I believe [something about the campaign situation]. Because [why it matters to me], I will [an action or ongoing commitment].
]

#emph[Example:] "The settlements will starve if their leaders keep the roads divided. Because I have seen what isolation costs, I will bring them into a common defence agreement."

Agree with the group that this commitment engages with the campaign you intend to play. Characters need not share an ideology, but should have reasons to participate together.

==== Self Belief
State a principle about who you are, who you intend to become, or what you consider right. Show how it affects your choices.

- What principle is more than a convenience?
- What kind of person are you determined to become, or never become?
- What will you do when this conviction becomes difficult to uphold?

#quote(block: true)[
I believe [a personal principle]. I will live by this conviction by [a commitment], even when [a meaningful pressure or cost].
]

#emph[Example:] "People are not expendable tools. I will not knowingly sacrifice those in my care merely to secure an advantage."

Your Self Belief need not contradict the others, but their demands may sometimes pull in different directions. Do not resolve those possible dilemmas during creation.

==== Other Belief
Once the characters have concepts and roles, introduce their World and Self Beliefs. Agree on connections and shared history, then choose another PC whose outlook or choices interest you. Your Focus's existing link may supply this connection; writing a Belief does not grant an additional Focus benefit.

- Whom do you trust, admire, distrust, or feel you owe?
- What do you hope to preserve or change in the relationship?
- How will you act because of that conviction?

#quote(block: true)[
I believe [another PC] is / deserves / needs [my conviction about them]. Because [our connection or why it matters], I will [how I intend to act toward them].
]

#emph[Example:] "Mara kept our caravan alive when I lost my nerve. I will support her leadership, but I will speak against her when she treats lives as acceptable losses."

Agree on the relationship premise with the other player. Your Belief expresses your perspective, not authority over their character's motives or decisions. An agreed misunderstanding is possible; it does not establish your interpretation as fact.

==== Connecting Beliefs to Your Character
Use Beliefs as prompts, not prerequisites, when completing your mechanical choices:

- #strong[Descriptor:] how does your temperament shape your approach?
- #strong[Playbook:] what role and methods do you bring?
- #strong[Focus:] what distinctive pursuit supports or complicates your commitments?
- #strong[Skills and abilities:] what can you already do, and where does ambition exceed competence?
- #strong[Tags:] where does each one help you act, and when does it get you into trouble?
- #strong[Load-out:] which gear options and load may support your commitments? Follow @core-starting-resources; do not choose every item in advance.

Beliefs grant no extra skills, tags, abilities, equipment, pool points or Tychē, and a conviction isn't a tag. Wanting to protect others doesn't mean you're good at it.

==== Choose Your Starting Goal
Choose a concrete opening objective that advances at least one Belief. It should have a recognisable completion point.

#quote(block: true)[
My current Goal is to [achieve a specific result]. I will know it is accomplished when [observable outcome].
]

#emph[Example:] "Secure the mill town's agreement to send a delegate to the road council."

Completing this Goal does not complete the World Belief about uniting the settlements. A Belief can motivate several successive Goals. Your Goal can instead arise from an Other or Self Belief; it need not serve all three.

==== Write Your Instinct
Write a recognisable trigger and habitual response. Your Descriptor's suggested Instinct can be a starting point.

#quote(block: true)[
When [trigger], I [habitual response].
]

#emph[Example:] "When we enter an unfamiliar place, I identify an escape route before settling in."

Acting on an Instinct takes no time, but it doesn't guarantee success or skip a roll the normal rules require. Scripted conflicts limit it further (@core-conflict-limits-reference).

==== Review Before Play
Read your three Beliefs, Goal, and Instinct aloud. Check that:

- Each Belief contains a conviction and intended action.
- The World Belief connects to the agreed premise.
- The Other Belief concerns a PC and has their player's agreement.
- The Self Belief can influence a difficult choice.
- The Goal gives you something concrete to pursue immediately.
- The Instinct has a recognisable trigger.
- You have reasons to cooperate even when convictions differ.

#sidebar("Using Beliefs to Prepare Play")[
For each character, note an opportunity and a possible dilemma suggested by their Beliefs. These are invitations, not predetermined outcomes. Challenge commitments without prescribing the correct response. Use Other Beliefs to invite interaction, not override another player's agency. A character's conviction does not automatically establish facts about the world. Do not demand a roll merely to prove that the character sincerely holds it.
]

==== Example: A Character Ready for Play
#strong[Premise:] isolated settlements must reopen their trade route before winter.

#strong[Concept:] a former caravan guard seeking to prevent another disastrous winter expedition. The player completes the normal mechanical choices for protection, travel, or negotiation; these Beliefs do not dictate a single build.

Their World, Other and Self Beliefs, Goal and Instinct are the examples shown above.

The GM might offer a delegation in exchange for escorting a vulnerable supply caravan through a dangerous pass. The Goal provides direction, capabilities determine options, and the Beliefs make decisions matter. The GM does not predetermine the character's answer.

=== 3.6 Starting Resources <core-starting-resources>
- #strong[Tychē Points:] start each session at your #strong[Refresh] (base 3; @core-refresh). Beliefs and connections grant no extra points.
- #strong[Starting abilities.] You get #strong[1 playbook ability and your Tier 1 Focus ability for free], and may buy #strong[up to 2 more playbook abilities at 1 Refresh each].
- #strong[★ (Major) abilities] cost #strong[1 extra Refresh] whenever you take them (Generic Playbooks @pb-ability-notation). Refresh can't drop below 1 (@core-refresh).
#colbreak()    
- #strong[Load-out:] choose light, normal or heavy load before the mission, then declare playbook-kit items as you need them and mark their load; don't buy a full item list in advance. Signature items are chosen at creation and count against load when carried; always-carried items and items marked (0) follow their listed rules (Generic Playbooks @pb-load). In conflicts, declare active gear before scripting each exchange (@core-conflict-gear-assets).
- #strong[Circle and contact.] Name one #strong[social circle] (#emph[Dock Workers], #emph[The Archive Staff]) and one #strong[named contact] in it or elsewhere. Record both as contact Truths. The circle answers #emph[who here might help?]; the contact answers #emph[whom can I ask, and what might it cost them?]

#strong[Using contacts.] Routine help that fits the relationship needs no roll. When access, discretion or cost is uncertain, roll an existing skill such as Persuade or Empathy; there is no separate Network skill or loyalty track. On a Success with Complication, you get the introduction, shelter or supplies, and the complication can be that you owe a favour or expose the relationship. A favour owed uses Module E.7 when that module is in play. A starting contact grants no free Discover, Help or turn; abilities such as #emph[Contacts] and #emph[Network] add those benefits.

#strong[Ordinary gear, borrowed or bought locally.] Getting an ordinary item you didn't bring is a contact or circle question, not a separate inventory. Load covers what you brought; a contact covers what you can find now; an optional flashback covers what you arranged earlier (@core-prepared-advance).
]
