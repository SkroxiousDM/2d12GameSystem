#import "tod-common.typ" : *

== 8. How the Afflicted Die, and Hunter's Gear
=== 8.1 Killing Methods and Folklore
A #strong[killing method] is a tag that lets an Attack take a vampire to #strong[tier 6: destroyed] (§5.2).


#figure(
  [#table(
    columns: (22%, 30%, 48%),
    align: (auto,auto,auto,),
    table.header([Method], [Effect], [Notes],),
    table.hline(),
    [#strong[Beheading]], [Killing method], [The one sure way. The blade must be able to cut through (#emph[heavy], #emph[fine], or a dhampir's strength).],
    [#strong[Fire] (sustained)], [Killing method against a vampire with a tier-4+ physical status; destroys a husk at once], [A burning house, a funeral pyre.],
    [#strong[Sunlight]], [No killing strike, but stops recovery and burns over time (§7.1)], [A collapsed vampire left in direct sun for a full day is destroyed.],
    [#strong[Stake through the heart]], [Not a killing method. Inflicts the special condition #emph[staked]: the vampire can't act or recover while the stake stays in], [Use the Staking procedure below. Finish it with beheading or fire --- or bargain with it while it's helpless.],
    [#strong[Silver]], [Not a killing method. Wounds from #emph[silvered] weapons can't be recovered until the next full day], [An old custom. No one remembers why it works.],
    [#strong[Crosses, garlic, running water, invitations]], [No physical effect], [Folk practice. Some vampires believe in them anyway (below).],
  )]
  , kind: table
  )

#strong[Believers:] a vampire may carry the weakness tag #emph[believes the old stories], or a specific one (#emph[won't cross running water], #emph[can't bear the cross]). Against that vampire, the folk remedy works as a #strong[compel], not a law of nature: the vampire accepts it (the GM gains 1 Woe) or the GM spends 1 Woe to defy it.

Any personal weakness tag of a vampire can be #strong[upgraded to a killing method] with 3 Power from Discover and Create effects, or a downtime clock (8 segments).

==== Staking
A stake through the heart does not destroy a vampire. It pins the vampire in a helpless state until someone removes it.

#strong[Making the attempt.] You need a wooden stake or a weapon explicitly capable of driving one through the heart, and a clear opportunity to reach it. A weapon's ordinary Attack bonus does not, by itself, grant permission to stake at range.

Declare the attempt before rolling. Use Fight or Brawl in reach, or Shoot with a weapon explicitly capable of delivering a stake at range.

Set the base Difficulty by the vampire's Rank:

#figure(table(columns: (55%, 45%),
  table.header([Vampire Rank], [Base Difficulty]),
  [Minor], [Hard 18],
  [Established], [Formidable 21],
  [Great], [Epic 27],
  [Paramount], [Divine 30],
))

Reduce the Difficulty by one step --- 3 points --- for each tier of the vampire's highest negative status. Use only the highest tier; do not add statuses together. There is no minimum Difficulty.

#strong[Result.] On a Success or Success at a Cost, the vampire gains #emph[staked]. This is a special condition, not a tiered status: do not buy its tiers with Power or stack it with other statuses.

While staked, the vampire cannot act or recover. It remains alive. Staking does not itself inflict tier-6 harm, trigger a killing strike, or destroy the vampire.

On a Success at a Cost, apply the normal cost as well as the successful staking. On a failure, the stake does not take hold; resolve failure normally.

#strong[Staking during a conflict.] A staking attempt uses your scripted Attack action. Resolve its roll against the staking Difficulty instead of the usual independent or versus roll. It inflicts #emph[staked] instead of ordinary Attack Disposition loss.

Staking one vampire does not directly reduce its side's shared Disposition. If other participants can continue pursuing that side's intent, the conflict continues. If none can, resolve that side's defeat normally.

#strong[Removing the stake.] Another character within reach can remove the stake if they have the means to do so. With no meaningful opposition or uncertainty, no roll is needed. Under pressure, removing it takes an action and any roll the circumstances require.

Once the stake is removed, #emph[staked] ends. The vampire retains its other statuses, Blood Debt and other recorded conditions. Removing a stake does not refill pools, restore Disposition or undo a settled conflict outcome.

=== 8.2 Currency and Wealth
The setting's currency is the #strong[mark]. The 2d12 System doesn't track coins; use these story tags instead:


#figure(
  [#table(
    columns: (24%, 76%),
    align: (auto,auto,),
    table.header([Wealth tag], [Means],),
    table.hline(),
    [#emph[broke]], [Can't buy anything without a favour or a trade],
    [#emph[a few marks]], [A meal, a night at the inn, a box of bolts],
    [#emph[a fat purse]], [A horse, a gun, a doctor's fee],
    [#emph[a lord's bounty]], [A cyborg horse, an old-world weapon, a farm],
  )]
  , kind: table
  )

=== 8.3 Setting Gear
Weapons and gear use the equipment rules in #emph[Generic Playbooks] §2 (load, gear as tags, armour). These are common across playbooks:


#figure(
  [#table(
    columns: (8%, 32%, 60%),
    align: (auto,auto,auto,),
    table.header([Load], [Item], [Tags],),
    table.hline(),
    [0], [Wooden stake, belt knife, flint striker, water skin], [#emph[stake] (use the Staking procedure, §8.1)],
    [1], [Silver-edged knife or blade], [#emph[silvered]],
    [1], [Charms: garlic bundle, cross, saint's medal], [#emph[steadies the nerves] (+1 Pneuma Edge against fear); works on #emph[believers] only (§8.1)],
    [1], [Steel neck guard], [#emph[Armour 1] against bites only; Bled from bites gains 1 fewer tier],
    [1], [Crossbow and wooden bolts], [#emph[+1 Attack] (range), #emph[bolts are stakes] (may stake at range using Shoot; use §8.1 instead of a fixed Hard 18)],
    [1], [Revolver or rifle], [#emph[+1 Attack] (range)],
    [2], [Laser rifle (rare, old-world)], [#emph[+1 Attack] (range), #emph[burns through armour], #emph[Escalation];; depletion 1 in d12 (power cell)],
    [1], [Long cloak and wide hat], [+1 Sōma Edge when Resisting Sun-Sick; #emph[+1 Feint] in the dark],
    [1], [Signal mirrors], [By day, create #emph[Sunlit] in a room with a window or opening for one scene (2 Power)],
    [1], [True-light lamp (rare relic)], [Create #emph[False Dawn] for one exchange (2 Power); depletion 1 in d12],
    [1], [Flares], [Light only; ends darkness Truths for one exchange],
    [1], [Transfusion kit], [Needed for transfusion (§6); #emph[+1] on Medicine against Bled],
    [0], [Cyborg horse (vehicle)], [#emph[tireless], #emph[fast as the wind];; not on foot missions. Treat as a story tag when absent],
    [0], [Normal horse or mule (vehicle)], [#emph[sure-footed];; ticks the Grind clock 1 less per leg],
  )]
  , kind: table
  )

#strong[Escalation (Core Rules §9.3).] Each of these gives the GM #strong[+1 Woe], once per scene:

- #strong[Old-world weapons carried openly:] the laser rifle, the #emph[Order Sidearm] (§9.2), any artifact weapon.
- #strong[Hunter's tools carried openly where a vampire rules] (#emph[Their Own House], §13, or a town that serves a household): stakes, silver, crossbows.
- #strong[Actions:] waking an old-world work you don't understand; breaking into a sealed estate room; feeding, or showing afflicted blood, before witnesses.

== 9. Old-World Works
Old-world machines and relics use #strong[Module A --- Cyphers & Artifacts].

=== 9.1 Old-World Cyphers (d12)

#figure(
  [#table(
    columns: (6.06%, 17.17%, 8.08%, 68.69%),
    align: (auto,auto,auto,auto,),
    table.header([d12], [Cypher], [Tier], [Effect],),
    table.hline(),
    [1], [True-light capsule], [4], [Attack (#emph[Sun-Sick] +2) against one vampire; a killing method only against a husk],
    [2], [Blood ampoule], [3], [Restore 3 Sōma; a dhampir also loses 2 Thirst],
    [3], [Mist grenade], [3], [Create #emph[Thick Mist] for a scene],
    [4], [Gravity disc], [4], [Create #emph[Weightless] in a small area, or carry a heavy load as light],
    [5], [Mind-seal patch], [3], [Restore (fear); +1 to Resist intimidation and #emph[Presence] (§14)],
    [6], [Bloodline vial], [2], [A vial of a vampire's blood: opens one door of its bloodline, or quiets one of its guardians for a scene],
    [7], [Holo-ghost], [3], [Create #emph[Decoy] (a false image of yourself) for a scene],
    [8], [Electro-whip charge], [4], [Attack (#emph[stunned]), or +1 Attack in a conflict for one exchange],
    [9], [Healing gel], [3], [Restore (wounds) 3 tiers, divided as you like],
    [10], [Weather pill], [4], [Create a weather Truth (#emph[Sudden Storm], #emph[Clear Skies]) for one scene],
    [11], [Sound blaster], [3], [Attack (#emph[deafened]), Disrupt one Occult effect],
    [12], [Unknown relic], [d6], [The player names a reasonable Effect; the GM sets the form and adds a quirk],
  )]
  , kind: table
  )

=== 9.2 Old-World Artifacts
#strong[The Order of the Last Guns] (working name) was an order of armed charter-enforcers in a neighbouring province, destroyed there in a succession war. The Frontier sees only what it left behind: refugees, claimants and a few of its sidearms, which no one can make any more. Whoever carries one claims to speak for the old enforcing authority.

Old-world artifacts carry the standard quirk #strong[#emph[its owners will want it back]]: it can be compelled for Tychē Points, and the GM may spend 1 Woe to make its old owners, or their heirs, notice it.

#quote(block: true)[
#strong[★ Old-World Longsword] --- #emph[Tags:] old-world steel, +1 Attack (conflict gear). #emph[Ability:] counts as a killing method for beheading; ignores #emph[Armour] on vampires. #emph[Depletion:] none. #emph[Quirk:] its owners will want it back.

#strong[★ Dimension Pocket] --- #emph[Tags:] holds more than it should. #emph[Ability:] carry up to 3 extra load. Once per session, draw out an item you could plausibly have stored (no Momentum cost). #emph[Depletion:] 1 in d12 (it opens somewhere else for a scene). #emph[Quirk:] things inside come out wrong.

#strong[★ Cybernetic Eye] --- #emph[Tags:] sees in the dark, sees heat. #emph[Ability:] once per scene, free Discover about anything in your line of sight. #emph[Depletion:] 1 in d12 (blind in that eye for a scene). #emph[Quirk:] its owners will want it back.

#strong[★ Order Sidearm] --- #emph[Tags:] old-world revolver, +1 Attack (range), recognised on sight, Escalation. #emph[Ability:] ignores #emph[Armour] on vampires. Worn openly, it is a claim to speak for the Order of the Last Guns: a free bonus die on Persuade and Intimidate with people who remember the Order. #emph[Locked:] many fire only for someone registered in the Order's armoury log; for anyone else such a gun is a heavy club. #emph[Depletion:] 1 in d12 (the last proper cartridges are spent until more are found). #emph[Quirk:] its owners will want it back --- and so will every claimant.

#strong[Blood Locket] --- #emph[Tags:] holds a vampire's blood. #emph[Ability:] that bloodline's doors and guardians half-recognise you (+1 die). #emph[Depletion:] 1 in d12 (the blood spoils). #emph[Quirk:] the bloodline's records note every door you open.
]

=== 9.3 The Moving Lights
On a clear night, a few lights cross the sky faster than any star and never twinkle. They are old-world works, left overhead when the old world fell. Most are dead. A few still answer.

- #strong[Under open sky only:] roofs, earth, deep canyons, thick forest and storms (#emph[Sudden Storm]) cut them off.
- #strong[Uses:] the Passenger can reach its bearer through them (#emph[Carries a Passenger]), and a mind sent abroad can ride them (#emph[Sends the Mind Abroad]). Some households keep old instruments that listen to them.
- #strong[Overheard:] anything sent through the moving lights may be heard by whoever is listening.
- #strong[Optional Truth 11] (§2.2, #emph[The lights in the sky still move]): if it is in play, something up there is also watching.

== 10. Bounties, Commissions and Contracts
Most sessions start with a contract. The contract is the party's shared #strong[Goal]. A contract is a #strong[Bounty] (a quarry), a #strong[Commission] (an investigation), an #strong[Escort] or a #strong[Recovery].

=== 10.1 Contract Sheet

#figure(
  [#table(
    columns: (16%, 84%),
    align: (auto,auto,),
    table.header([Element], [Example],),
    table.hline(),
    [#strong[Type]], [Bounty],
    [#strong[Client]], [The town council, on behalf of a farmer whose daughter was fed on],
    [#strong[Quarry]], [Lord Varn, a vampire (rank: Established)],
    [#strong[Proof required]], [His head, his blood ledger, or his signet ring],
    [#strong[Bounty]], [#emph[a lord's bounty] (a Great vampire: two)],
    [#strong[Deadline]], [Before the levy is collected (danger clock, 6 segments)],
    [#strong[Complication]], [Lord Varn insists he hasn't fed in five weeks --- and a rival Hunter crew has the same contract],
  )]
  , kind: table
  )

=== 10.2 Negotiating the Fee
Haggling with a client is a #strong[Negotiation] conflict if it meets the conflict test (Core Rules §10.1); otherwise one Persuade roll vs. Standard 15.

- Each Power above 1 raises the fee by one step (#emph[a fat purse] → #emph[a lord's bounty]), or adds a perk (an advance, a horse, room and board, a share of the estate's salvage).
- A dhampir negotiating with humans faces the Truth #emph[Feared and Despised] (+1 step Difficulty), unless they're already known and trusted. With a vampire household, they may face #emph[Coveted] instead (§13).

=== 10.3 Reputation
A Hunter's reputation is a #strong[power tag] gained at milestones (#emph[the Hunter who burned the Roth estate]). It counts as a tag on Persuade and Intimidate with Frontier folk. A #strong[bad reputation] (#emph[took the money and ran]) is a weakness tag that clients and rivals compel.

=== 10.4 Rival Hunters
Rival crews use the #strong[World Turn] rules (Module E.10 when Module E is in use; otherwise Module C.5) with a project clock on the same quarry. With Modules D and E, resolve one World Turn per stay. If their clock fills first, they claim the bounty, and the party's contract becomes a Disposition conflict with the rivals (often a Negotiation or a Chase rather than a Fight).

=== 10.5 Charter-Speech and Binding Instruments
Charters, testaments, compacts and levy agreements bind only if they are written or sworn in #strong[charter-speech]: an archaic legal and liturgical form of the language. Notaries, clergy and record clerks can compose it, and so can some of the Kept. Most people can only recognise it.

- #strong[Reading] an instrument in charter-speech is an Old Lore roll vs. Standard 15. #strong[Composing] one correctly is Old Lore vs. Hard 18, or Standard 15 with a tag such as #emph[fluent in the old pacts].
- #strong[Finding a flaw:] a Discover effect on an instrument (Old Lore or Investigate) can reveal an error in its charter-speech. The flaw becomes a tag, for example #emph[the oath was sworn in the wrong form].
- #strong[Grounds, not a verdict:] a flaw is grounds to challenge the instrument. It does not void it. The challenge is settled by a Negotiation, a Duel of Wills or the politics around it, and the flaw is a tag the challenger can use there. Whoever benefits from the instrument will argue that the error doesn't matter.

=== 10.6 Ill Omens
A crow on the steeple, a stopped clock, a dog that won't cross the threshold. #strong[Once per contract], one player may declare an #strong[Ill Omen] and describe it. The GM gains #strong[2 Woe + 1 per PC] at once; at the end of the scene, #strong[every PC gains 1 Tychē Point] (within the cap, Core Rules §4.1). Reading an omen is an Occult roll, with Power buying Discover as normal. An omen is a warning, not a prophecy.

== 11. Setting Conflict Types
These add to the conflict types in Core Rules §10.4. All use the standard scripting, Disposition and compromise rules.


#figure(
  [#table(
    columns: (31.31%, 18.18%, 14.14%, 12.12%, 10.1%, 14.14%),
    align: (auto,auto,auto,auto,auto,auto,),
    table.header([Type], [Disposition], [Attack], [Defend], [Feint], [Maneuver],),
    table.hline(),
    [#strong[Hunt] (track a vampire or monster to its lair)], [Frontier or Investigate], [Investigate / Frontier], [Will / Endure], [Deceive], [Notice / Stealth],
    [#strong[Siege Until Dawn] (hold a town or camp until morning)], [Old Lore (tactics) or Craft], [Shoot / Fight], [Craft / Endure], [Deceive], [Notice],
    [#strong[Duel of Wills] (an interrogation, an audience, a stare-down with something old and patient)], [Will], [Intimidate / Persuade], [Will], [Deceive], [Empathy],
    [#strong[Estate Assault] (break into a household or old-world facility)], [Science or Stealth], [Science / Fight], [Endure / Athletics], [Stealth], [Old Lore],
    [#strong[Chase] (setting note)], [Ride or Athletics], [Ride / Shoot], [Ride], [Stealth], [Frontier],
  )]
  , kind: table
  )

=== 11.1 Special Rules
- #strong[Hunt:] the winner gets their intent #emph[and] chooses the time of the confrontation (day or night). If the party wins with the quarry's lair found by day, the next scene starts with #strong[Day], and the quarry is shut in, away from the sun.
- #strong[Siege Until Dawn:] run alongside the #strong[Dawn clock] (§4.1). Each exchange ticks it by 1. If the Dawn clock fills before either side hits 0 Disposition, the vampire side must withdraw or face the sun: the defenders win with a compromise based on their remaining Disposition.
- #strong[Duel of Wills:] there is no hypnosis; this is pressure, fear and bargaining. A PC who loses is #strong[Taken Out] of the contest and must follow the vampire's intent for one scene, out of obligation, fear or a bargain struck. A vampire who loses withdraws or reveals something (lose 1 power tag for the session).
- #strong[Estate Assault:] each exchange, the GM may spend 1 Woe to wake a guardian (reinforcement) instead of buying a bonus die. If an estate is taken by day, its vampire's Disposition in the next Fight starts −2.

== 12. The Frontier: Travel and Region Truths
Use #strong[Module B --- The Grind & Travel]. The Frontier is harsh: most Grind clocks are #strong[6];; deserts and old-poisoned lands are #strong[4].

=== 12.1 Frontier Travel Notes
- The Guide rolls #strong[Ride] or #strong[Frontier].
- #strong[Cyborg horses] don't eat or tire: a party with them ignores the first Grind tick each leg. Normal horses need water: Supplies drop by 2 per leg in deserts.
- #strong[Night travel] halves Grind clock size, but every encounter is at Night.

=== 12.2 Frontier Truth Generator (d12)
Use with Module C.3. Roll once per column or pick.


#figure(
  [#table(
    columns: (6.06%, 21.21%, 22.22%, 21.21%, 29.29%),
    align: (auto,auto,auto,auto,auto,),
    table.header([d12], [Terrain / Feature], [Atmosphere], [Hazard], [Secret],),
    table.hline(),
    [1], [Fortified farming town], [Sullen, watching faces], [Townsfolk with torches], [Someone in town is secretly feeding a vampire],
    [2], [Vampire estate on a crag], [Silent music at midnight], [Guardian machines], [The vampire wants to die],
    [3], [Endless desert], [Merciless sun], [Sand creatures under the dunes], [A buried old-world city],
    [4], [Ruined old-world city], [Wind through dead towers], [Radiation pockets], [An old-world weapon],
    [5], [Haunted forest], [Mist that never lifts], [Mutant beasts], [A retainer-clan camp],
    [6], [Trading post and saloon], [Whiskey and fear], [Rival Hunters], [A household's spy runs the bar],
    [7], [Swamp of failed experiments], [Wet, rotting heat], [Bioweapon remnants], [A creature that can speak],
    [8], [Abandoned treatment works], [Lights still on], [Automated defences], [Records of the original treatment, maybe],
    [9], [Dry riverbed and canyon], [Dust storms], [Bandits on cyborg horses], [A water source someone poisoned],
    [10], [Mountain pass], [Biting cold], [Avalanche], [A monk who remembers the founding],
    [11], [Weather-control tower], [Storms that come out of nowhere], [Lightning], [The tower still answers orders],
    [12], [Graveyard of Hunters], [Unnatural stillness], [A husk among the graves], [A famous Hunter didn't die here],
  )]
  , kind: table
  )

== 13. Scene Truths
Pick 1--3 for each scene, in addition to the #strong[time Truth] (§4).


#figure(
  [#table(
    columns: (20%, 80%),
    align: (auto,auto,),
    table.header([Truth], [Typical effect],),
    table.hline(),
    [#emph[Moonlit]], [Stealth is harder for everyone; vampires and dhampirs see clearly],
    [#emph[Moonless]], [+1 step Difficulty to Notice; vampires and dhampirs ignore it],
    [#emph[Merciless Sun]], [Sun-Sick +2 per scene for dhampirs, +3 for vampires (§7.1)],
    [#emph[Overcast]], [Sun-Sick +1 per scene for vampires; none for dhampirs],
    [#emph[Sunlit]], [Direct sun indoors (mirrors, a broken roof): Sun-Sick +1 per exchange],
    [#emph[Warded Village]], [The townsfolk believe they're safe. Believers (§8.1) won't cross without defying a compel; everyone else finds the townsfolk armed and watching (+1 step Difficulty to Stealth)],
    [#emph[Custom of Invitation]], [Entering a home uninvited breaks local custom: if seen, the scene gains #emph[Hostile Crowd]. Believers must defy a compel],
    [#emph[Their Own House]], [Inside a place that answers to the vampire's bloodline: its Woe spends cost 1 less (minimum 1)],
    [#emph[Frightened Villagers]], [+1 step Difficulty to Persuade; failures may start a mob],
    [#emph[Feared and Despised]], [Dhampirs and mutants: +1 step Difficulty to all social rolls with humans],
    [#emph[Coveted]], [A dhampir among a vampire household: social rolls are one step easier, but every success puts them further in the household's debt],
    [#emph[Thick Mist]], [+1 step Difficulty to Shoot and Notice],
    [#emph[Guardian Machines]], [A danger clock of 4: when it fills, the guardians attack],
    [#emph[Blood on the Air]], [Thirst +1 for dhampirs; a vampire at Blood Debt 3+ must act on it or take −1],
    [#emph[False Dawn]], [True-light lamps: vampires gain Sun-Sick +1 per exchange, can't recover, and take −1 on all rolls (lasts one exchange or scene)],
    [#emph[Dust Storm]], [+1 step Difficulty to Ride, Shoot and Notice],
    [#emph[Hostile Crowd]], [Standard Truth: social rolls harder, violence draws a mob],
  )]
  , kind: table
  )

Any of these can be #strong[rank 2] when the fiction is severe (#emph[Dust Storm 2] in a full blow, #emph[Thick Mist 2] in the river bottoms; Core Rules §8).

== 14. Woe Spends: Vampires
Use with Core Rules §9.2.


#figure(
  [#table(
    columns: (15%, 8%, 77%),
    align: (auto,auto,auto,),
    table.header([GM spend], [Cost], [Effect],),
    table.hline(),
    [#strong[Presence]], [1], [A PC facing the vampire takes #emph[shaken-2] (Resist with Pneuma). Start a Duel of Wills if it matters],
    [#strong[Summon the Household]], [1], [A retainer, donor or dependant arrives and obeys --- out of loyalty, debt, love or fear],
    [#strong[The Old Door]], [2], [The vampire leaves through a way only its bloodline can open, or a passage nobody knew was there],
    [#strong[Kennel and Guardians]], [2], [Trained animals, mutant creatures or old-world guardians that answer to it arrive as a minion group],
    [#strong[Uncanny Speed]], [1], [The vampire acts first or changes its scripted action for 1 Woe (instead of 3). Not at Blood Debt 4+],
    [#strong[The House Answers]], [3], [Requires #emph[Their Own House]. Create a facility Truth (#emph[Shifting Halls], #emph[Sealed Doors], #emph[Lights Fail], #emph[Gravity Fails])],
    [#strong[Blood Reserve]], [3], [Once per session, if blood is at hand (stored, a donor, a victim), a #emph[broken] vampire feeds and recovers 2 tiers of physical status. It leaves evidence],
    [#strong[Weather Turns]], [2], [Create a weather Truth for the scene; requires old weather works nearby],
    [#strong[Retainer]], [3], [A significant retainer or ally arrives],
  )]
  , kind: table
  )

