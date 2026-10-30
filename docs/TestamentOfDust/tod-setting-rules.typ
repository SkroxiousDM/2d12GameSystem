#import "tod-common.typ" : *
// =====================================================================
//  CHAPTER — FRONTIER RULES
// =====================================================================
#chapter("Frontier Rules", [The old world is buried beneath the present, but it has not fallen silent. This chapter covers the setting: Campaign Truths, day and night, vampires and the blood they need, the bled, dhampirs, how the afflicted die, old-world works, contracts and the long roads between towns.], epigraph: [Every door in this valley opens for someone. Find out who, and you'll know who rules it.])

== 1. The Setting in Brief
The old world is buried beneath the present, but it has not fallen silent. Its roads, foundations and sealed rooms are everywhere; a few of its works still run. No one agrees on when it fell, and every claim to rule rests on a history that cannot all be true.

Across the #strong[Frontier] --- wherever law, knowledge and working infrastructure give out --- towns bargain with ancient households, physicians dispute the teachings of religious orders, and courts fight over succession, charters and the machines that keep people alive.

Among the living are #strong[vampires]: people who must take blood to live. They are few, long-lived, hard to kill and often indispensable. Some claim to remember the world before the fall. Most rule nothing; some rule a great deal. Their #strong[dhampir] children are rarer still.

#strong[Tone:] grim, gothic, political. Locked rooms and disputed wills, blood ledgers and charity clinics, rifles beside silver knives, and monsters who know every family in town.

Players can be dhampirs (see the Focus #emph[Carries Her Mother's Blood]) but not full vampires.

== 2. Campaign Truths
Agree on these at session zero. The first five are the #strong[core Truths]. Replace or add to them from the optional list.

=== 2.1 Core Truths

#figure(
  [#table(
    columns: (5%, 22%, 73%),
    align: (auto,auto,auto,),
    table.header([\#], [Truth], [In play],),
    table.hline(),
    [1], [#strong[The Kept are few and indispensable]], [Vampires are rare. A single vampire is a campaign arc, not a random encounter --- and killing one rarely solves the problem it was part of.],
    [2], [#strong[Blood behind every bargain]], [Every vampire depends on a supply: a household, a levy or an exchange. The supply is politics.],
    [3], [#strong[The Frontier pays for answers and fears them]], [Towns hire investigators and Hunters because they must. They don't always want what's found.],
    [4], [#strong[The old world's works are disputed]], [Machines, miracles, curses and hauntings are argued over by physicians, priests and scholars. Science and Occult both apply (§3).],
    [5], [#strong[Dhampirs are rare, feared and coveted]], [Common folk fear them. Vampire households want them --- as heirs, keys or worse.],
  )]
  , kind: table
  )

=== 2.2 Optional Truths (d12)

#figure(
  [#table(
    columns: (6%, 94%),
    align: (auto,auto,),
    table.header([d12], [Truth],),
    table.hline(),
    [1], [#strong[A founder still lives] --- one of the oldest vampires in the region controls a bloodline whose doors open across half the region.],
    [2], [#strong[No one rules the whole Frontier] --- no higher power is coming to settle disputes.],
    [3], [#strong[Some vampires want to end it] --- certain vampires seek death, love, escape, or a cure that may not exist.],
    [4], [#strong[The machines still run] --- old-world works keep operating with no one in charge, defended by guardians nobody controls.],
    [5], [#strong[Old oaths bind the retainers] --- hereditary retainer clans serve vampire households for pay, loyalty or debt.],
    [6], [#strong[Hunters compete for bounties] --- rival crews race for every contract. Bounties go to whoever brings back the proof.],
    [7], [#strong[The weather is a weapon] --- old weather works still run in places and still fail.],
    [8], [#strong[The bled are suspected] --- local law says anyone fed on by a vampire must be examined, confined or exiled, in case they turn.],
    [9], [#strong[The old faith keeps the old rites] --- the rites are older than anyone can explain, and some of them work.],
    [10], [#strong[Mutants are people too] --- mutants live everywhere, and how they're treated is a frontier politics question.],
    [11], [#strong[The lights in the sky still move] --- something the old world left overhead is still watching.],
    [12], [#strong[The Hunters' Code] --- Hunters keep a code: never abandon a contract, never hunt another Hunter's quarry. Breaking it makes you a target.],
  )]
  , kind: table
  )
#pagebreak()
== 3. Skill List
The 20 generic skills are renamed or kept as follows. Default pools are unchanged unless noted.

#figure(
  [#table(
    columns: (25.74%, 23.76%, 27.72%, 22.77%),
    align: (auto,auto,auto,auto,),
    table.header([Sōma], [Mētis], [Psychē], [Pneuma],),
    table.hline(),
    [Athletics], [Shoot], [Notice], [Will],
    [Brawl], [Stealth], [Investigate], [Persuade],
    [Fight], [#strong[Ride] #emph[(was Drive/Pilot)]], [#strong[Old Lore] #emph[(was Lore)]], [Intimidate],
    [Endure], [Craft], [#strong[Science] #emph[(was Tech)]], [Empathy],
    [#strong[Frontier] #emph[(was Survival)]], [], [Medicine], [#strong[Occult] #emph[(was Arcana)]],
    [], [], [Deceive], [],
  )]
  , kind: table
  )

#figure(
  [#table(
    columns: (11%, 89%),
    align: (auto,auto,),
    table.header([Skill], [Covers in this setting],),
    table.hline(),
    [#strong[Ride]], [Horses, cyborg horses, wagons, hover-vehicles, land-ships, and riding through a chase.],
    [#strong[Frontier]], [Wilderness survival, desert and wasteland travel, tracking, mutant animals, weather, finding water.],
    [#strong[Old Lore]], [History, households and bloodlines, etiquette and succession law, charter-speech (§10.5), old-world ruins and records, the folklore of the afflicted.],
    [#strong[Science]], [Repairing, using and disabling machines, old and new; cyborg parts; old-world weapons and works.],
    [#strong[Occult]], [Rites, wards and religious practice; omens, relics and reliquaries; what people believe about the afflicted, and which customs they keep.],
    [#strong[Medicine]], [Surgery, poisons, mutations, blood loss and transfusion (§6).],
  )]
  , kind: table
  )

#strong[Guideline:] Science and Occult often overlap. Let the player choose which applies, then fix it for that device or effect for the rest of the scene.

== 4. Day and Night
Time of day is always a #strong[scene Truth]. Every scene has one.

#figure(
  [#table(
    columns: (9.09%, 90.91%),
    align: (auto,auto,),
    table.header([Time Truth], [Effect],),
    table.hline(),
    [#strong[Day]], [Direct sunlight harms vampires and dhampirs (#emph[Sun-Sick], §7.1). Most vampires keep indoors or underground and many keep night hours, but they are not helpless by day: a vampire in a shuttered room is as dangerous at noon as at midnight. Their retainers, guardians and machines are active.],
    [#strong[Dusk]], [One scene. The GM gains #strong[+2 Woe] as the sun sets. Vampires come out.],
    [#strong[Night]], [Vampires and dhampirs see in the dark and ignore darkness Truths. Scenes at night with a vampire present add #strong[+1 Woe] at the start of the scene (dangerous Truth). The GM may use vampire Woe spends (§14).],
    [#strong[Dawn]], [One scene. A vampire in the open must reach shelter or face the sun. At the end of the scene, any vampire still in direct light gains #emph[Sun-Sick] at tier 2 at once, then normally.],
  )]
  , kind: table
  )

#strong[Cloud and glass:] heavy cloud lessens the harm (§7.1). Experience says sunlight through a window does vampires little harm; no one agrees why.

=== 4.1 The Dawn Clock
When the party must survive until morning, the GM sets a #strong[Dawn clock] (usually 6 or 8 segments).

- It ticks #strong[1 per scene] or #strong[1 per conflict exchange].
- Players may tick it with the #strong[Advance] effect only by actions that waste time for the enemy (stalling, hiding, leading a chase in circles).
- When it fills, the scene becomes #strong[Dawn].

Use the Dawn clock as a #strong[racing clock] against the vampire's own clock (#emph[Breach the Village 8], #emph[Take the Girl 6]). Dawn doesn't destroy a vampire; it forces a choice: withdraw, or fight on while the sun takes its toll.
#pagebreak()
== 5. Vampires
=== 5.1 Threat Ranks
Rank measures how dangerous a vampire is #strong[now] --- its resources, supply, allies and access to old works --- not its age. A vampire who remembers the world before the fall can be any rank; one made last decade can be Paramount.


#figure(
  [#table(
    columns: (9.9%, 41.58%, 21.78%, 26.73%),
    align: (auto,auto,auto,auto,),
    table.header([Rank], [Examples], [Conflict Disposition bonus], [Starting Woe when introduced],),
    table.hline(),
    [#strong[Minor]], [A starving fugitive, a household's newest vampire, a vampire kept as a prisoner], [+0], [1],
    [#strong[Established]], [Head of a small household, a physician with a private clinic], [+2], [3],
    [#strong[Great]], [Head of a great house, a vampire whose bloodline opens a town's treatment works], [+4], [5],
    [#strong[Paramount]], [A founder whose bloodline controls a region], [+6], [8 (and a danger clock that can end the campaign)],
  )]
  , kind: table
  )

=== 5.2 Hard to Kill
Vampires survive wounds that would kill anyone else.

- A vampire's physical statuses #strong[can't go above tier 5] unless the Attack uses a #strong[killing method] (§8.1). At tier 5 the vampire is #emph[broken]: it can still act, at −2 on physical rolls.
- #strong[Recovery needs blood.] A wounded or broken vampire that rests a full day #strong[and] takes at least half a litre of blood recovers all physical statuses. Without blood, it recovers only 1 tier per day.
- #strong[Wounds make it hungry.] Each time a vampire is #emph[broken], tick its #strong[Blood Debt clock] (§5.4) by 1.

==== Killing Strikes
In a scripted conflict, reducing a vampire side's shared Disposition to 0 wins the declared conflict; it does not by itself destroy each vampire on that side. If destroying a particular vampire is within the established lethal stakes, name that vampire and use an eligible killing method against it.

Make one killing-strike roll against the named vampire using a fitting skill and method. Set the base Difficulty by the vampire's Rank:

#figure(table(columns: (55%, 45%),
  table.header([Vampire Rank], [Base Difficulty]),
  [Minor], [Hard 18],
  [Established], [Formidable 21],
  [Great], [Epic 27],
  [Paramount], [Divine 30],
))

Reduce the Difficulty by one step --- 3 points --- for each tier of the target's highest negative status. Use only the highest tier; do not add different statuses together. There is no minimum Difficulty.

A success destroys the vampire. On a failure, it is not destroyed: the GM states a significant complication that fits the stakes, such as escape, a rescue attempt or a dangerous reversal. The players may #strong[give the GM 2 Woe] to buy off that complication. Buying off the complication does not turn the failed strike into a success.

Resolve the established conflict outcome and compromise separately. A failed killing strike does not automatically impose a Significant compromise.

Beheading follows this procedure. There is no separate beheading difficulty table or tier-4+ status prerequisite. Staking remains a separate special case (§8.1).

=== 5.3 Vampire Traits
Each vampire has #strong[3--5 power tags] and #strong[at least 1 weakness tag], for example: #emph[the old hospital opens for me], #emph[a hundred donors], #emph[remembers the founding], #emph[faster than you can see], #emph[sees perfectly in the dark];; and #emph[starving], #emph[the doors don't know me], #emph[obsessed with the past], #emph[proud beyond reason], #emph[my supply runs through one man], #emph[believes the old stories] (§8.1). Players can learn them with #strong[Discover].

#strong[Pride:] the long-lived are proud. Once per scene, a PC may compel a vampire's pride (spend 1 Tychē Point or 1 Momentum): it accepts a duel, gives a warning before striking, or lets an insult distract it. The GM gains 1 Woe.

=== 5.4 Blood Debt
Every vampire needs blood regularly. The GM tracks each vampire NPC's hunger on a #strong[Blood Debt clock] of 6 segments, one segment per week since its last full feeding.


#figure(
  [#table(
    columns: (14%, 86%),
    align: (auto,auto,),
    table.header([Segments], [What the players can see],),
    table.hline(),
    [0--1], [Nothing.],
    [2--3], [Pallor, irritability, an unusual interest in blood (Notice, Empathy).],
    [4], [Pain, slowness, gifts failing: −1 on all its rolls. It takes risks to feed.],
    [5], [Desperate: −2 on all its rolls. Survival comes first; it may break its own rules.],
    [6], [#strong[Husk]: the vampire dries out and goes dormant (§5.5).],
  )]
  , kind: table
  )

- Being #emph[broken] ticks the clock (§5.2). A full feeding clears it. A partial feeding stops it ticking that week but doesn't clear it.
- #strong[Animal blood] counts for half: a vampire needs twice as much of it.

=== 5.5 Husks
Sometimes a starved vampire is found dried, light and rigid, like a corpse a century dead. Stories say such bodies can wake. Stories also say they burn like kindling.

- A husk is #strong[unconscious and helpless]. Any killing strike against it succeeds automatically, and #strong[fire destroys it at once].
- Waking one takes about three people's worth of blood, absorbed over hours or days. It wakes at Blood Debt 5.

=== 5.6 The Returned
Not everyone the Kept try to make becomes one of them. The making is dangerous and often fails, and most who fail die. A few survive as something else: the #strong[returned].

- #strong[What people see:] the returned are strong and grow fast, and most die young, rarely past thirty. Many are slow, literal or strange in their thinking; how much varies. They don't need blood.
- #strong[Not dhampirs:] folk often call them dhampirs, or cursed. They are neither. Dhampirs are born to vampire mothers (#emph[Carries Her Mother's Blood]); the returned were made, and the making failed.
- #strong[Evidence:] old-world doors and instruments sometimes react to one of the returned oddly, as if it half-belonged to a bloodline. No one agrees why. Households that make them would rather no one asked.
- #strong[Levies:] some towns owe children under old charters. Rumour says the few who come back are the ones who failed.
- #strong[NPCs only:] the returned are not a player option. A PC who survives a failed making leaves player control (§6).

== 6. The Bled
When a vampire feeds on someone --- or anyone loses a great deal of blood --- the victim gains the harmful status #strong[#emph[Bled]].


#figure(
  [#table(
    columns: (10%, 90%),
    align: (auto,auto,),
    table.header([Bled tier], [Effect],),
    table.hline(),
    [#strong[1]], [A donation's worth. Pale and tired. No roll penalty; clears after a night's rest with food and water.],
    [#strong[2]], [Light-headed: −1 on Sōma and Mētis rolls.],
    [#strong[3]], [Weak: −2 on Sōma and Mētis rolls, and gain #emph[Weary].],
    [#strong[4]], [Critical: the next harm of any kind Takes you Out. Needs a Medicine roll to stabilise.],
    [#strong[5]], [Dying: Taken Out. Dies at the end of the scene unless stabilised (Medicine vs. Hard 18) or given a transfusion.],
    [#strong[6]], [#strong[Drained]. Dead --- unless someone has both the reason and the means to make you one of them.],
  )]
  , kind: table
  )

- #strong[Gaining tiers:] a measured feeding inflicts Bled-1. A hard feeding is an Attack (+2 or more). Stacking rules apply.
- #strong[Resisting:] Resist with #strong[Sōma] when the blood is taken.
- #strong[Recovery:] 1 tier per full day of rest with food and water.
- #strong[Transfusion:] with a willing donor and a transfusion kit, a Medicine roll vs. Standard 15 lowers Bled by 1 tier per Power. The donor gains Bled-1.
- #strong[Frontier law:] where optional Truth 8 is in play, anyone known to be bled is examined, confined or exiled. Hiding the marks is a common compel.
- A PC who is Drained and made a vampire, or who survives a failed making as one of the returned (§5.6), leaves player control.

== 7. Afflicted Blood: Sunlight Syndrome and the Thirst
These rules apply to vampires and dhampirs (#emph[Carries Her Mother's Blood]).

=== 7.1 Sunlight Syndrome
Under the #strong[Day] Truth, in direct sunlight, the afflicted gain #strong[#emph[Sun-Sick]]:


#figure(
  [#table(
    columns: (50%, 25%, 25%),
    align: (auto,auto,auto,),
    table.header([Condition], [Dhampirs], [Vampires],),
    table.hline(),
    [Direct sun, at the start of each scene], [+1], [+2],
    [#emph[Merciless Sun] (deserts, harsh sun)], [+2], [+3],
    [Heavy overcast, per scene], [+0], [+1],
    [#emph[Sunlit] room or #emph[False Dawn] (§13), per exchange], [+1], [+1],
  )]
  , kind: table
  )

- Sun-Sick is a harmful status: it applies its tier as a penalty to physical rolls (Sōma and Mētis skills).
- Resist with #strong[Sōma] as normal. A wide hat, a dark cloak or partial shade counts as #strong[+1 Sōma Edge] for that Resist.
- While Sun-Sick is at tier 1+, abilities and rules that heal the afflicted (vampire recovery, #emph[Mother's Blood], #emph[Dhampir Regeneration]) don't work.
- A vampire at Sun-Sick 4+ also gains #emph[burning-1] each scene in the sun.
- #strong[Recovery:] a full scene in shade or darkness lowers Sun-Sick by 2 tiers. At night it clears completely.
- #strong[Tier 6:] collapse. Taken Out until carried into shade. A dhampir left for a whole day gains a Sōma Scar. A vampire left in direct sun for a full day is destroyed.

=== 7.2 The Thirst
Dhampirs have a #strong[Thirst] status, tier 0--6. It doesn't penalise rolls until tier 3. A dhampir has no weekly need for blood; the Thirst rises only from what happens to them.


#figure(
  [#table(
    columns: (80%, 20%),
    align: (auto,auto,),
    table.header([Trigger], [Thirst],),
    table.hline(),
    [A scene with fresh blood spilled nearby (yours or someone else's)], [+1],
    [You're Taken Out, or a pool drops to 2 or less], [+1],
    [You use an ability marked #emph[Thirst] in its entry], [+1 (or as listed)],
    [The GM compels the Thirst and you accept (gain a Tychē Point)], [+1],
    [A full night of rest], [−1],
    [Animal blood (a scene, no roll)], [−1],
    [A cup or so of human blood --- drunk, through broken skin or by transfusion (a scene, no roll)], [−2],
    [Half a litre or more of human blood at once], [Clear completely. If taken by force, gain a Pneuma Scar the first time (#emph[I've tasted it])],
  )]
  , kind: table
  )

#figure(
  [#table(
    columns: (14%, 86%),
    align: (auto,auto,),
    table.header([Thirst tier], [Effect],),
    table.hline(),
    [#strong[0--2]], [No effect.],
    [#strong[3--4]], [−1 on Pneuma rolls when blood is visible. Others notice you're hungry (Empathy, Notice).],
    [#strong[5]], [In every scene with a bleeding human, Resist with Pneuma or move towards them.],
    [#strong[6]], [#strong[Blood Crisis]: you choose --- feed from the nearest source this scene, #strong[or] refuse, collapse (Taken Out) and gain a Pneuma Scar. Either way, Thirst drops to 3 afterwards.],
  )]
  , kind: table
  )

#strong[Never feeding] is a Belief, not a rule. Blood Crisis keeps the choice, and the cost of refusing, with the player.

#include "tod-setting-rules-8.typ"
#pagebreak()
#include "tod-setting-rules-15-design-notes.typ"
