#import "tod-common.typ" : *
== 8. Cyborg Hunter
#playbook-art-side("08-cyborg-hunter.jpg", "Cyborg Hunter playbook character art", dir: "art/playbooks/")[
#quote(block: true)[
Torn apart by a vampire or a monster, and put back together with steel, wire, and salvaged old-world parts. You\'re stronger than you were, and less human every year.
]

#figure(
  [#table(
    columns: (24%, 76%),
    align: (auto,auto,),
    [#strong[Base pools (Sōm / Mēt / Psy / Pne)];], [12 / 9 / 9 / 6],
    [#strong[Edge];], [Sōma 1, Psychē 1, plus 1 in Sōma or Mētis],
    [#strong[Anchor skill];], [Shoot or Fight],
    [#strong[Suggested skills];], [+4 Shoot · +3 Fight, Science · +2 Endure, Notice, Intimidate · +1 Athletics, Ride, Investigate, Medicine],
    [#strong[XP trigger];], [Address a challenge with your implants or overwhelming firepower],
  )]
  , kind: table
  )

#strong[Playbook tags (choose 2):] #emph[steel where bone used to be] · #emph[doesn\'t feel pain] · #emph[ex-militia soldier] · #emph[targeting never misses] · #emph[knows old-world machines] · #emph[built to hunt]
]

=== 8.1 Core Feature --- Implants (free)
Choose #strong[2 Implants];. Each is a power tag that ignores load, plus a rule.

#figure(
  [#table(
    columns: (14%, 15%, 71%),
    align: (auto,auto,auto,),
    table.header([Implant], [Tag], [Rule],),
    table.hline(),
    [#strong[Arm cannon];], [#emph[built-in gun];], [#emph[+1 Attack] (range); can\'t be disarmed],
    [#strong[Blade arm];], [#emph[built-in blade];], [#emph[+1 Attack];; counts as beheading (a killing method) against a vampire with a tier-4+ physical status],
    [#strong[Armour plating];], [#emph[plated];], [#emph[Armour 1];; stacks with worn light armour],
    [#strong[Targeting eye];], [#emph[locks on];], [Once per scene, free bonus die on a Shoot roll],
    [#strong[Booster legs];], [#emph[jumps and sprints];], [#emph[+1 Maneuver] in Fights and Chases on foot],
    [#strong[Sensor array];], [#emph[hears heartbeats];], [Notice heat and heartbeats through walls; a starving vampire\'s heart beats slow and strange],
    [#strong[Grapple arm];], [#emph[reaches and grabs];], [Pull, climb, or seize at 10 m],
    [#strong[Synthetic lungs];], [#emph[breathes anything];], [Immune to gas, smoke, and drowning for a scene],
    [#strong[Pain dampener];], [#emph[numb to it];], [Ignore penalties from tier-1 and tier-2 physical statuses],
    [#strong[Cortex chip];], [#emph[data in my head];], [Once per scene, free Discover with Old Lore or Science],
  )]
  , kind: table
  )

#strong[Glitches:] doubles on a failure or a Success at a Cost on an implant roll cause #emph[glitched-2] (−2 on rolls with your implants) as well as the normal complication. Science (Restore) or a short rest with tools clears it. old-world works that disrupts machines (an EMP, an estate\'s defences) can inflict #emph[glitched] as an Attack.
=== 8.2 Special Abilities
#figure(
  [#table(
    columns: (5%, 20%, 75%),
    align: (auto,auto,auto,),
    table.header([\#], [Ability], [Effect],),
    table.hline(),
    [1], [#strong[Extra Implant];], [Gain one more Implant. You can take this ability up to twice.],
    [2], [#strong[Self-Repair];], [You can use Science on yourself to Restore physical statuses and #emph[glitched];. Once per scene, a short rest also restores 2 Sōma.],
    [3], [#strong[Overclock];], [When you use Effort for Power on a roll with an implant, gain #strong[+2 Power] instead of +1, but take #emph[glitched-1];.],
    [4], [#strong[Little Blood Left];], [#emph[Bled] gains #strong[1 fewer tier] on you. You ignore the #emph[Hungry & Thirsty] Grind condition.],
    [5], [#strong[Heavy Ordnance];], [When you Shoot at a group or minions, gain #strong[one free Extra Feat] per roll.],
    [6], [#strong[Machine Tongue];], [You can talk to old-world machines. Science rolls to command, disable, or read guardian machines and estate systems are one step easier, and you get a free Discover in any vampire estate.],
    [7], [#strong[★ Combat Mode];], [Once per scene, switch to combat mode: free #strong[+1 bonus die] on Shoot, Fight, and Athletics for the rest of the scene. While it lasts, Pneuma Effort costs +1 and you can\'t use Empathy.],
    [8], [#strong[★ Rebuilt Again];], [Once per session, when you\'re Taken Out by physical harm, you get back up at the end of the scene with that status at tier 3 and #emph[glitched-3];.],
    [◆], [#strong[More Machine Than Man];], [Like a vampire, you\'re #strong[Hard to Kill];: your physical statuses #strong[can\'t go above tier 5] unless the Attack uses Science, an EMP, or an equivalent killing method the GM names. Gain a Pneuma Scar (#emph[more machine than man];) when you take this capstone.],
  )]
  , kind: table
  )
=== 8.3 Starting Equipment
#strong[Signature item (choose 1)]

#figure(
  [#table(
    columns: (11%, 89%),
    align: (auto,auto,),
    table.header([Option], [Item],),
    table.hline(),
    [#strong[A];], [#strong[Stake launcher] (2) --- #emph[+1 Attack] (range), #emph[fires stakes];: inflicts #emph[staked] at range at Standard 15 against a #emph[broken] vampire],
    [#strong[B];], [#strong[Old-world laser rifle] (2) --- #emph[+1 Attack] (range), #emph[burns through armour];, depletion 1 in d12 (power cell)],
  )]
  , kind: table
  )

#strong[Playbook kit (declare during play)]

#figure(
  [#table(
    columns: (8%, 92%),
    align: (auto,auto,),
    table.header([Load], [Item],),
    table.hline(),
    [1], [Ballistic coat (light armour)],
    [1], [Spare power cells --- recharge one depleted weapon or implant],
    [1], [Tool roll and implant spares --- #emph[+1] on Self-Repair and Science on yourself],
    [1], [Flash grenades ×2 --- #emph[+1 Maneuver];; Create #emph[False Dawn] for one exchange (2 Power)],
    [1], [Combat knife --- #emph[+1 Attack];],
    [1], [Oil, solder, and painkillers],
  )]
  , kind: table
  )

#strong[Always carried (0):] steel neck guard (built in), a photo of who you were.

=== 8.4 BIG Examples
- #strong[Belief:] \"Whatever\'s left of me is still human.\" / \"The vampire who did this will die by what it made me.\"
- #strong[Goal:] \"Find a power cell before the arm runs dry.\" / \"Get inside the estate\'s machine room.\"
- #strong[Instinct:] \"Always scan the room for heartbeats.\" / \"Never let anyone see the wiring.\"

#strong[Relationships:] Ally --- the doctor who rebuilt you, a scavenger who finds you parts, a Hunter who knew you before. Rival --- another cyborg with better parts, the vampire who tore you apart, a city agent who wants their property back.

