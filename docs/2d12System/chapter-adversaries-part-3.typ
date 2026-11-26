#import "common.typ": *
#import "adversaries-common.typ": statblock

#columns(2, gutter: 6mm)[
=== 7.6 Guardian Protocol <adv-guardian-protocol>
A successful Protocol Discover reveals only the actions assigned to the targeted guardian in the next exchange, including their positions in that exchange. Record those assignments as committed when the information is supplied; other participants' assignments remain unrevealed.

This guarantees disclosure of that next exchange, not automatic confirmation of all future exchanges. Characters retain what they have learned and may use observations and an understood operating pattern to predict later actions without paying merely to remember them.

The disclosure must be true when given; the GM can't freely rewrite it. The GM may still change a disclosed action with a normal paid script change (Core Rules @core-scripting-volleys), which doesn't notify the hunters. Tells, observations and information effects still apply.

Protocol grants no extra action, free script change, reassignment or rotation bypass. If the guardian later can't act, its assignment fails normally with no free replacement.

=== 7.7 Shared Special Timing <adv-shared-special-timing>
// PLAYTEST: Close declarations before reactions; Self-Repair before Bolt; phases before arrivals.
After a successful action, determine Power, allocate it, declare supplementary Specials and pay their costs. Check existing effects and effects already declared for this action. Close purchases and supplementary declarations, resolve expressly permitted reactions including Scan, then resolve uncancelled effects. Reactions don't reopen declarations. Cancelled purchases remain spent; no reallocation, substitution or late supplementary activation unless expressly permitted. This grants no additional action, reaction or activation permission. Self-Repair retains its expressly listed volley-end activation and payment window (@adv-guardian-self-repair).

Complete both independent actions, their immediate consequences and permitted reactions. Then:
+ Resolve eligible Self-Repair. Disposition recovery requires the side to remain above 0; status repair can't cancel pending defeat.
+ Resolve declared Bolt departures, including its same-volley Lockdown exception.
+ Determine removal, defeat and mutual defeat; check eligible Last Stand before final settlement. If the conflict ends, perform no further phase checks or arrivals.
+ If the conflict continues and an ordinary phase check is permitted, check phases before reinforcement Grit. Preserve pending-defeat restrictions.
+ At an eligible exchange end, process committed arrivals under their listed procedures and explicit recovery prohibitions, including Last Stand.
+ Update participation and continuous rotation, then proceed to the next permitted declaration and scripting window.

Arrival creates no additional phase check and doesn't reverse a phase activated before it. It changes no original start, recovery cap, compromise reference or fixed phase threshold. Newly activated phase benefits still begin next volley. This sequence creates no extra action, exchange boundary, arrival check, phase check or activation opportunity.

=== 7.8 Dirty Trick <adv-dirty-trick>
// PLAYTEST: Once per bearer per exchange; successful assigned action; later-volley Impede.
After succeeding on its assigned scripted action, including Success with Complication, the bearer may spend 1 Woe to Impede the opposing side's next scripted action in a later volley, including across an exchange boundary. Declare and pay during the supplementary declaration step (@adv-shared-special-timing).

Never affect the opposing action in the current volley, even if its roll has not been made. Impede is −3 on the affected action roll, not a status or Resistance penalty. A no-roll action consumes it unused. Pending Impedes don't stack, increase the penalty or extend duration. Failed, tied, trumped and unperformed actions don't qualify. No additional action or Power, extra turn or reassignment.

=== 7.9 Covering Move <adv-covering-move>
// PLAYTEST: Replaces Hostage; once per bearer per exchange; one pending Gain Position per side.
After succeeding on its assigned Maneuver, including Success with Complication, spend 1 Woe to grant Gain Position to the side's next scripted action in a later volley, including across an exchange boundary. Never affect the current volley. Its bonus die counts toward the normal cap; a no-roll action consumes it unused.

Before activation check both pending effects and effects already declared for this Maneuver. Don't activate or spend Woe if Gain Position is pending or the Maneuver has purchased or otherwise declared a grant of it. Declare and pay during @adv-shared-special-timing's supplementary declaration step. Later cancellation doesn't reopen this window. Additional grants never stack, refresh or extend pending Gain Position. No additional action or Power, extra turn or reassignment. None of Hostage's former Truth or Attack-penalty effects remain.

=== 7.10 Scan <adv-scan>
// PLAYTEST: Both options share one use per bearer per exchange.
An able Guardian with functioning sensors may spend 1 Woe for one option:
- #strong[Counter-Maneuver.] After an opposing Stealth-based Maneuver succeeds and its purchases and supplementary declarations close, but before effects resolve, cancel one Impede or Gain Position purchased by it. The approach must be detectable within established sensor coverage. Identify the purchase before paying. Cancel only that effect, not success, Power or other effects; its purchase remains spent. No reallocation or late supplementary declarations. Without either purchase this option can't activate. Special-granted effects are ineligible merely because they accompanied the Maneuver.
- #strong[Reveal.] After its own successful assigned Maneuver, including Success with Complication, reveal one hidden opponent's current location within established sensor coverage. Declare during @adv-shared-special-timing. This removes no cover or concealment automatically, establishes no line of fire, grants no Attack and doesn't prevent hiding again.

Sensors don't defeat barriers or countermeasures without recorded capability. Pay fully while able to participate. No additional action or Power, extra turn, reassignment, protected-payment cancellation or reopening resolved effects.

=== 7.11 Lockdown <adv-lockdown>
// PLAYTEST: Successful assigned Maneuver; once per Guardian per scene; unrated scene Truth.
After its successful assigned Maneuver, including Success with Complication, an able Guardian may spend 2 Woe to create the scene Truth Sealed Doors. Declare during @adv-shared-special-timing. It must control functioning barriers already established in the scene. Name the connected set, passages closed and release/override conditions. Create no barriers and gain no control of unrelated systems.

Apply its physical restrictions only where materially relevant; it carries no rating or Difficulty shift; no blanket opposing-action penalty or indestructibility. Affect allies, enemies and bystanders according to position. No automatic capture, harm, Disposition loss, Taking Out or victory.

Barriers closed by Lockdown don't prevent completion of the opposing action in the same volley, including Bolt through a route usable when Bolt activated. They constrain subsequent actions and reinforcement arrivals normally.

The Truth lasts until scene end or barriers are opened, breached or overridden. Opening one passage removes its restriction only; end the Truth when none remains sealed. Disabling the Guardian doesn't automatically unlock barriers. Power loss releases only mechanisms established to work that way. No additional action or Power, extra turn, reassignment, protected-payment cancellation or reopening settled outcomes.

=== 7.12 Bolt <adv-bolt>
// PLAYTEST: Successful assigned Maneuver; volley-end departure; no bypass of contested escape.
After its successful assigned Maneuver, including Success with Complication, spend 2 Woe to withdraw through an established usable route. Identify the route and pay during @adv-shared-special-timing. Resolve departure at volley end after eligible Self-Repair but before defeat, provided the bearer remains able to participate and physically capable of using the route.

An opposing Lockdown in the same volley doesn't by itself invalidate the declared route or prevent departure. All other requirements remain. Bolt otherwise can't cancel, interrupt or protect against the opposing action.

Remove the bearer from participation without subtracting Grit or Disposition. Update rotation normally; no replacement actor, reassignment or extra action. Continue if allies can pursue the objective; otherwise resolve defeat. Departure doesn't cancel defeat at 0.

Bolt can't activate or spend Woe to bypass an unresolved objective specifically contesting the bearer's escape, pursuit or capture; use outcome or accepted concession. No teleportation, passage through effective restraint or blocked routes, ally movement, automatic safety from later pursuit, protected-payment cancellation or reopening settlement. No separate use limit; departure grants no permission to return.

=== 7.13 Howl <adv-howl>
// PLAYTEST: One shared named Hound Pack; action-free; commitment survives caller loss and blocked routes.
While able to participate, spend 2 Woe during the action-free call window (@adv-reinforcements) and give an audible howl to call the side's single reserve Hound Pack. It must be within plausible calling distance, hear the call and have a usable route. Check before paying; mark committed immediately. This creates or summons no beasts. Committed or previously arrived copies can't be called again by any caller.

Arrive at current exchange end if the conflict continues and a usable route exists. If blocked after payment, remain committed and check at each later exchange end; arrive when the conflict continues and a route opens, without further payment. Caller removal doesn't cancel or delay otherwise eligible arrival. No arrival into an ended conflict. Apply @adv-reinforcements[§§] and @adv-shared-special-timing[], including fixed references, rotation and recovery prohibitions. The pack is one participant, not one per Body. No action or Power; no separate use limit beyond finite shared availability.

=== 7.14 Calls the Works <adv-calls-works>
// PLAYTEST: One shared named Gate Warden; action-free; accepted command survives later caller/link loss.
While able to participate, spend 2 Woe during @adv-reinforcements's call window to transmit a command to the side's single reserve Gate Warden. A functioning link must reach it; it must be able to respond and have a usable route. Check before paying; mark committed immediately. No creation or unlisted substitution; committed or previously arrived copies can't be called again.

Arrive at current exchange end if the conflict continues and a usable route exists. A route blocked after payment delays arrival to a later eligible exchange end without further cost; the copy remains committed and unavailable. After command receipt and commitment, caller removal or link loss doesn't cancel or delay otherwise eligible arrival. No arrival into an ended conflict. Apply @adv-reinforcements[§§] and @adv-shared-special-timing[].

The reserve uses Variant C Self-Repair (@adv-guardian-self-repair), doesn't gain Calls the Works and can't use this entry to call further Guardians. No additional action or Power; no separate use limit beyond reserve availability.

=== 7.15 Caller-Specific Reserve Packages <adv-caller-specific-reserve-packages>
// PLAYTEST: Named side-wide copies, not fictional bodies or duplicated caller allowances.
#strong[Bounty Veteran — Call for Help.] While able to participate, spend 2 Woe per activation during @adv-reinforcements's call window to commit one of the side's two Hired Guns. No action or Power. Multiple activations in one exchange are allowed with full payment and a separate available copy each; both cost 4 Woe. Arrive at current exchange end if the conflict continues, even if the Veteran has since become unable to participate. Apply @adv-reinforcements[§§] and @adv-shared-special-timing[]. Add no unlisted communication or route requirement to this package.

#strong[Iron Marshal — Call for Help.] While able to participate and the Special is unlocked and usable, spend 2 Woe per activation during @adv-reinforcements's call window to issue an audible order or transmit a command to one of the side's two House Guard Bands. Each is a Raider Band reskin with unchanged statistics and abilities. It must receive the order, be able to respond and have a usable route. Check before payment; commit immediately. Multiple activations in one exchange require separate available copies and full payment; both cost 4 Woe. No action or Power.

Arrive at current exchange end if the conflict continues and a usable route exists. Route blockage after payment retains commitment and delays arrival to a later eligible exchange end without further cost. Once the order is received, later caller or link loss doesn't cancel or delay otherwise eligible arrival. No arrival into an ended conflict. Apply @adv-reinforcements[§§] and @adv-shared-special-timing[]. Each band is one participant, not one per Body.

Command applies only while the Marshal remains able to participate; removal ends Command, not accepted commitments or the bands' participation. Phase availability grants no free call, extra reserve or duplicate Command. All callers share recorded copies; no call replenishes them. Retain the Raider Band's tags, weakness, Tell and Wants unless separately revised cosmetically; the reskin adds no mechanical benefits.
// ART: A war-band leader signalling from a ridge as raiders pour into the valley below.
#art-fill(min: 6cm)[A war-band leader signalling from a ridge as raiders pour into the valley below.]
#colbreak()
// ART: Raiders on horseback charging through smoke toward a palisade.
#art-fill(min: 6cm)[Raiders on horseback charging through smoke toward a palisade.]
]
#pagebreak() 
== 8. Templates <adv-templates>
#columns(2, gutter: 2mm)[
Eight generic cards, including the named Hired Gun reserve card. Reskin freely. Ratings follow the Rank table.

#statblock("RAIDER BAND", "Human · Minion group (4 Bodies) · Shooter", "3")[
Grit 3 · Guard +0 · Bodies 4 · Armour 0 \
Attack +2 · Defend +0 · Feint −2 · Maneuver +0 · Other +0 \
Harm: wounded (carbines) \
Power: plenty of bullets, know the ground · Weakness: break and run \
Kind: Morale. Role: Dead Aim. \
Group trait: Volley (2): area Attack. \
Tell: hats come off as rifles shoulder. \
Wants: the strongbox, no heroics.
]

#statblock("HOUND PACK", "Beast · Minion group (5 Bodies) · Skirmisher", "3")[
Grit 3 · Guard +0 · Bodies 5 · Armour 0 \
Attack +0 · Defend +0 · Feint — · Maneuver +2 · Other +0 (Notice +2) \
Harm: wounded (bites) \
Power: noses for blood, run as a pack · Weakness: fears fire \
Kind: no Feint, Morale (scatter if the handler falls). Role: Hit and Run. \
Group trait: Pack Tactics (0). \
Tell: the circling tightens. \
Wants: drive the prey toward the den.
]

#statblock("KNIFE IN THE DARK", "Human · Minor · Trickster", "3")[
Grit 3 · Guard +0 · Shrugs 0 · Armour 0 \
Attack +1 · Defend −1 · Feint +3 · Maneuver +1 · Other +1 (Stealth +3) \
Harm: wounded (paired knives) \
Power: one with the shadows, a knife for every hand · Weakness: the oath before my life \
Kind: Morale. Role: Ambush. \
Specials: Dirty Trick (1). \
Tell: the nearest lamp gutters. \
Wants: no witnesses.
]

#statblock("BOUNTY VETERAN", "Human · Established · Brute", "5")[
Grit 5 · Guard +1 · Shrugs 1 · Armour 1 (oilskin and mail) \
Attack +4 · Defend +2 · Feint +0 · Maneuver +2 · Other +2 \
Harm: wounded (silver-and-wood shotgun), +1 tier from Heavy Hitter outside conflicts \
Power: silver-and-wood shot, twenty years of hunts, a veteran hunter's reputation · Weakness: greedy for the bounty \
Kind: Morale; can be bargained with. Role: Heavy Hitter. \
Specials: Last Stand (2), Call for Help (2 per Hired Gun; two named reserve copies; @adv-caller-specific-reserve-packages). \
Tell: he thumbs back both hammers. \
Wants: the bounty, and the credit.
]

#statblock("HIRED GUN", "Human · Minor · Shooter", "3")[
Grit 3 · Guard +0 · Shrugs 0 · Armour 0 \
Attack +3 · Defend +1 · Feint −1 · Maneuver +1 · Other +1 \
Harm: wounded (carbine) \
Power: steady aim, reliable carbine · Weakness: not paid to die \
Kind: Morale; can be bargained with. Role: Dead Aim. \
Specials: Volley (2): before rolling its assigned Attack, make it an area Attack under the common area rule. \
Tell: they plant their feet and bring the carbine to their shoulder. \
Wants: collect their pay and leave alive.
]
// PLAYTEST: Veteran reserve has two identical copies; track uses separately.
// Dead Aim grants one free die on each copy's first Attack each scene, within the cap.
// Volley grants no extra action or automatic status and no automatic ally exclusion.
// Resolve ordinary area loss once, +1 per additional opposing participant affected;
// apply common group counting and injury-trade limits.

#statblock("HEDGE ADEPT", "Human · Established · Controller", "5")[
Grit 5 · Guard +1 · Shrugs 1 · Armour 0 \
Attack +0 · Defend +2 · Feint +2 · Maneuver +4 · Other +2 (Lore +4) \
Harm: wounded or shaken (rite) \
Power: binding rites, a ledger of debts, hands that never shake · Weakness: proud beyond reason \
Kind: Morale. Role: Shape the Ground. \
Specials: Dirty Trick (1), Covering Move (1). \
Tell: he straightens his cuffs. \
Wants: finish the rite before dawn.
]

#statblock("GATE WARDEN", "Guardian · Established · Bulwark", "5")[
Grit 5 · Guard +1 · Shrugs 1 · Armour 1 \
Attack +2 · Defend +4 · Feint +0 · Maneuver +2 · Other +2 (Tech +4) \
Harm: wounded (shock-baton) \
Power: old-world steel, knows every corridor, obeys the bloodline · Weakness: answers to the old codes \
Kind: Unfeeling, Protocol, Machine. Role: Interpose. \
Specials: Self-Repair (1), Lockdown (2). \
Tell: "Please remain where you are." \
Wants: guests kept safe, intruders out.
]
  
#statblock("THE IRON MARSHAL", "Human · Great · Leader · Boss", "8")[
Grit 8 · Guard +2 · Shrugs 2 · Armour 1 (house mail) \
Attack +3 · Defend +6 · Feint +1 · Maneuver +3 · Other +3 \
Harm: wounded (old-world sabre) \
Power: remembers the founding, a hundred sworn swords, the house is armed, never loses a flank · Weakness: proud beyond reason, believes the old stories \
Kind: Morale. Role: Command. \
Specials: Call for Help (2 per House Guard Band; two named reserve copies; @adv-caller-specific-reserve-packages), Covering Move (1), Last Stand (2). \
Tell: she sets down her glass. \
Wants: the intruders alive, kneeling and useful.
]
]
  
#pagebreak()

#include "chapter-adversaries-part-4.typ"


