#import "common.typ": *

== 13. Example of Play <core-example-play>
#columns(2, gutter: 5mm)[
#strong[Kade];, a #emph[Reckless Furcifer who Never Leaves Anyone Behind] (Mētis Edge 1), is creeping through a warehouse to free a captured friend. He has bought Effort Level 2 with an Advance; new characters start at Level 1 (@core-bonus-dice-effort, @core-spending-xp). The scene has #emph[dim lighting] --- Situational Condition 2 --- helps hiding in the shadows, hinders reading and aiming --- ends when the lamps are lit or the scene ends, and the Truth #emph[Patrolling Guards].

- #strong[Roll:] Stealth +3, power tag #emph[quiet boots] +1, power tag #emph[knows this district] +1 (tags capped at +2), #emph[dim lighting] +2. The GM sets Hard 18, so Kade needs 11+ on the dice.
- #strong[Effort, part 1:] Kade spends 3 − 1 Edge = 2 Mētis for a bonus die → 3d12 keep 2.
- #strong[Result:] dice show 9, 9, 4 → keep 9 + 9 = 18, +7 = 25. That\'s 7 over → #strong[3 Power];, plus #strong[doubles on a success → +1 = 4 Power];.
- #strong[Effort, part 2:] Kade spends another 2 Mētis for #strong[+1 Power → 5 Power];.
- #strong[Spend:] Advance the #emph[Reach the Cell] clock by 3 (3 Power), Discover (1 Power): \"Where is the key?\" --- \"On the sergeant\'s belt.\" 1 Power left → #strong[+1 Weal];.
- #strong[Later:] the sergeant\'s dread patron, a bound spirit, lashes out with #emph[terror-3];. Kade Resists with #strong[Pneuma] (Edge 0), so 2d12: highest die 7 → cost 2 Pneuma. The status drops to #emph[terror-1];.
- #strong[Compel:] the GM compels #emph[Reckless];: \"You can\'t wait for backup; you go in now.\" Kade accepts and gains +1 Tychē Point.

=== 13.1 A Scripted Conflict <core-scripted-conflict>

Later, at the warehouse gate, Kade, Mira and Tarin confront two guards. This is a new scene: the earlier Truth and Condition don't apply, and Kade's terror was treated once the spirit's influence ended (@core-treatment-healing). His spent Mētis and Pneuma stay spent. The PCs want to get their friend through the gate; the guards want to hold them until reinforcements arrive. The stakes are capture and nonlethal injury, not death.

#strong[Setup.] Mira leads with Fight +3 and the highest Edge in its pool, 1. Her setup dice are 7 and 8: 7 + 8 + 3 + 1 = 19. Divide by 3 and round down to 6, then add +1 for each of her two eligible backers: #strong[starting Disposition 8]. There are no other flat modifiers or Superiority. Backing supplies these points free, not extra Help dice (@core-setup).

The guards' Grit 5 and 3 give their side #strong[8 Disposition] without a setup roll. Record both starting totals: they cap Defend and set the compromise grade (@core-setup).

#strong[Commit the exchange.] Before the first reveal, the PCs script Kade on Maneuver, Mira on Attack and Tarin on Defend. The guards script the first guard on Maneuver, the second on Defend and the first again on Feint. That's legal: both guards act in the first round, and the second guard acts between the first guard's turns (@core-scripting-volleys).

#strong[Volley 1 --- Maneuver versus Maneuver.] Both actions resolve independently. Kade uses Stealth +3 and one relevant tag for +1 to slip around the first guard and open a path. His dice are 7 and 6, for a total of 17. The guard has Guard +1, so Kade's target is Standard 15 + 1 = 16; no Situational Condition applies here. He succeeds with #strong[1 Power] and buys Gain Position.

The guard's independent Maneuver totals 15 against Standard 15: a success with 1 Power, which the GM spends on Impede.

Neither Maneuver changes Disposition. Gain Position and Impede both wait for the PCs' next scripted action; neither applies to a Resistance roll in between.

#strong[Volley 2 --- Attack versus Defend.] Mira receives Gain Position's bonus die. She rolls 9, 6 and 2, keeps 9 + 6, adds Fight +3 and her weapon's +1 Attack tag, then subtracts 3 for Impede: #strong[total 16]. The guard's Defend totals 13.

Mira wins by 3: 1 Power plus 1 for the full 3-point margin, #strong[2 Power]. She commits both to Attack, removing #strong[3 shared Disposition] (2 Power + 1), and the guards fall from 8 to 5. Their losing Defend restores nothing, and no individual guard is hurt or removed by the loss. Both pending Maneuver benefits are now spent (@core-actions-effects).

#strong[Volley 3 --- Defend versus Feint.] Tarin's Defend is trumped: no roll, and no Disposition restored. The first guard's Feint rolls independently and succeeds with 2 Power, committed to remove 3 PC Disposition.

Before applying that loss, Tarin accepts a new lasting #emph[sprained shoulder-3], describing how he holds the gate open while the others push through. The injury follows from the action and preserves the side's position. A tier-3 injury cancels 2 incoming loss, so the PCs lose only 1 Disposition, falling from 8 to #strong[7]. Tarin marks his once-per-conflict injury trade used; at most one participant could trade against this Feint (@core-accepting-injury).

The injury is a protected payment: armour, Resistance, redirection and incidental clearing can't touch it, and later healing doesn't refund the trade (@core-costs-failures-complications). Below tier 6, it doesn't take him out.

#strong[Continue or settle.] After the exchange, the PCs have 7 Disposition and the guards 5, so neither side has won. Rotation carries on into the next exchange: Tarin acted last, so he can't take its first volley. A brief pause doesn't refresh Disposition or Tarin's injury trade.

Suppose the PCs later win with #strong[4 of their starting 8 Disposition] left. They lost exactly half, so the compromise is #strong[Significant]. That calls for one outcome-first package, not an automatic tier-3 injury, and Tarin's existing injury can be credited once against it. The PCs achieve their stated intent, not permission to seize unrelated property or kill the guards (@core-defeat-mutual-defeat-concession[§]--@core-compromise[]).

#strong[Afterward.] Fresh Disposition in a new conflict won't refill pools or heal Tarin's shoulder. Treatment removes at most one tier of a lasting injury before a healing interval removes another (@core-treatment-healing). A Taken Out character who is healed still needs explicit permission to rejoin an ongoing conflict (@core-being-taken-out).
// ART: Players around a kitchen table mid-game: dice, tokens and a half-filled clock between them.
#art-fill(min: 6cm)[Players around a kitchen table mid-game: dice, tokens and a half-filled clock between them.]
]
