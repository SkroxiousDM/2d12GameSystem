# Exploration And Travel

The system already has the raw ingredients of wilderness play — Survival, Navigation, Woodcraft, Tracking, Foraging, carrying rules, Stamina, Fatigue, and rest cycles. This chapter assembles them into a single procedure for journeys.

A **Journey** is any meaningful overland or seaborne travel where time, supply, and hazard matter. Short city-to-city carriage rides and well-secured commercial routes are handled by narration. Anything wilder than that uses this chapter.

## Anatomy Of A Journey

A journey is broken into **Legs**. A Leg is a stretch of travel between two waypoints during which the conditions (terrain, weather, threat) are roughly constant. Each Leg resolves in four steps:

1. **Plan.** The party chooses a Pace, Route, and Watch order.
2. **Travel.** Make Navigation and any Pace checks. Advance distance.
3. **Event.** Roll or choose one Travel Event for the Leg.
4. **Camp Or Push On.** Decide whether to rest at the end of the Leg.

A typical Leg covers a half-day to a full day of travel; a wilderness crossing might be a single Leg, while crossing a continent may be twenty.

## Pace

At the start of each Leg, the party chooses a single Pace. All members travel at the same Pace.

| Pace | Distance per Day | Navigation | Stealth | Notes |
|---|---|---|---|---|
| Cautious | 12 miles | +2 (Routine) | +1d | Watch alertness +1d; foraging permitted. |
| Standard | 20 miles | +0 (Challenging) | +0 | The default. |
| Forced | 30 miles | −2 (Difficult) | −1d | Each traveler suffers 1 Fatigue at end of Leg; no foraging. |

Mounts, vehicles, magical aid, and exceptional terrain may modify these distances. Mountains, deep forest, marsh, and similar terrain halve the distance covered; well-kept roads add 50%.

## Route

The party chooses one Route trait per Leg, set by the GM based on the map:

- **Road or Trail.** Bonus distance, but encounters with travelers and patrols.
- **Wilds.** Standard distance, requires Navigation checks each Leg.
- **Trackless.** Halved distance, Navigation at +1 step of difficulty.
- **Hostile.** Add one extra Travel Event per Leg.
- **Sacred Or Sealed.** Add Sanity, magical, or supernatural pressure as appropriate to the setting.

## Watch

During each Camp, the party assigns members to one of up to three Watches (Evening, Mid, Dawn). A character on Watch does not benefit from the Stamina recovery of a Long Rest unless another character explicitly covers their shift.

- A character on Watch may make one Insight + Survival or Insight + Observation check when a Camp Event triggers.
- A character not on Watch sleeps through anything that does not specifically target them.
- The party may set No Watch, taking the full Long Rest benefit, at the cost of automatic surprise if any hostile event triggers during Camp.

## Travel Tests

Each Leg requires up to three tests, divided among the party. A character should not take more than one of the three roles per Leg.

### Navigator

One character makes a **Reason + Survival (Navigation)** test at the difficulty set by Route and Pace.

- **Critical Success:** The party gains an extra hour, which the Navigator's player may spend at the next Camp (extra foraging, scouting, or one bonus Watch reroll).
- **Success:** The Leg proceeds normally.
- **Success With Complication:** The party arrives, but a small delay or detour costs 1 Stamina to each traveler.
- **Failure:** The Leg covers half its distance; the party is now Lost. Reroute at the start of the next Leg with Difficulty raised one step.
- **Critical Failure:** Lost as above, and the GM places the party at a destination of their choosing (often a hazard).

### Quartermaster

One character tracks supplies. Each traveler consumes 1 ration and 1 unit of water per day. A character without rations gains 1 Fatigue at the end of the day; a character without water gains 1 Fatigue and cannot recover Stamina until they drink.

Once per Leg, the Quartermaster may make a **Reason + Survival (Foraging)** test at a difficulty set by the terrain (Routine in lush wilderness, Hard in desert or alpine, Very Hard in trackless waste). Each SL produces 1 ration or 1 unit of water (player's choice).

Foraging is forbidden at Forced Pace.

### Scout

One character may go ahead or to the flanks. Make a **Agility + Stealth (Sneaking)** or **Insight + Survival (Tracking)** test, depending on goal.

- A successful Scout reveals the next Travel Event before it resolves, allowing the party to react.
- A failed Scout becomes the target of any ambush rather than the whole party.
- A Critical Failure means the Scout is briefly separated, may not be assisted by the rest of the party for the first round of any encounter that follows.

## Travel Events

At the end of the Travel step, roll 1d12 on the table below, or pick deliberately. The GM should reskin the entry to the region.

| 1d12 | Event |
|---|---|
| 1 | Hazard (see below) |
| 2 | Hostile encounter appropriate to the region |
| 3 | Wary encounter (animals, refugees, scouts) |
| 4 | Friendly encounter (pilgrims, peddlers, rangers) |
| 5 | Weather shift (apply Weather effects below) |
| 6 | Discovery (ruins, shrine, cache, body, tracks) |
| 7 | Resource (a foraged ration, fresh water, a useful herb, a lost coin pouch) |
| 8 | Faction sign (banner, patrol, message left for the party or about them) |
| 9 | Lead (a rumor or clue pointing at the next adventure hook) |
| 10 | Calm (no event; the journey breathes) |
| 11 | Player Choice (the Navigator names what they find) |
| 12 | Double Event (roll twice more, ignore further 12s) |

## Hazards

A Hazard is any environmental threat that must be answered with a check or a cost. Resolve a Hazard as a single Common test against the most appropriate skill, with the difficulty set by the Hazard's severity.

| Hazard | Skill | On Failure |
|---|---|---|
| River crossing | Might + Athletics | Lose 1 standard item to the water; 1 Stress. |
| Cliff or scree | Agility + Acrobatics | Falling damage per Chapter 9. |
| Bog or quagmire | Constitution + Resilience | 1 Fatigue; halve next Leg distance. |
| Storm | Will + Resilience | 1 Fatigue; lose Watch sleep for the night. |
| Wildfire smoke | Constitution + Resilience | 1 Stress and the Coughing condition (−1d on stealth) until next Camp. |
| Disease vector | Constitution + Resilience | Begin tracking a disease; see Recovery. |
| Curse or haunting | Will + Resilience or Insight + Lore | 1 Stress to Resolve; possible Madness check. |

Each unsoaked Stress from a Hazard is applied to Vitality (physical hazard) or Resolve (mental hazard) per the normal damage rules.

## Weather

When a Weather shift event occurs, the GM picks a category appropriate to the region and applies it until the next Camp:

- **Fair.** No effect.
- **Inclement.** −1d to Ranged attacks and Stealth-by-sound; Pace remains.
- **Severe.** Forced Pace forbidden; all Stamina recovery halved.
- **Deadly.** All travelers must pass a Hard Constitution + Resilience check or gain 1 Fatigue per Leg until conditions ease; Pace cannot exceed Cautious.

## Camp

Camping initiates a Long Rest by default. The Quartermaster confirms supplies. Watches are set. Each character may take one **Camp Action** in the hour before sleep:

- **Repair.** Maintain one piece of equipment, restoring it from "damaged" to functional.
- **Tend.** Provide First Aid as per Chapter 8.
- **Plan.** Discuss the next Leg; once per Camp, one character may grant +1d to a single travel test of the following Leg.
- **Study.** Read, scribe, or meditate; advance a personal Downtime project by a small amount at the GM's discretion.
- **Listen.** Make an Insight + Observation test against a hidden Camp Event before it triggers.

A Camp interrupted by an attack or event during Watch resets to a Short Rest unless the party can return to sleep for a full additional 4 hours.

## Lost And Found

While Lost, the party cannot make progress toward its goal until it relocates itself. A Lost party may:

- Spend an Activity at the start of the next Leg making a **Reason + Survival (Navigation)** test at one step harder than current Route difficulty.
- Backtrack a Leg to a known waypoint, automatically.
- Seek high ground or a guide via a Scout test.

Each Leg spent Lost consumes rations and water normally and is eligible for Travel Events.

## Maps And Cartography

A character with Reason + Craft (Cartography) may, at the cost of one Camp Action, attempt to chart a Leg. On a success, future journeys through that Leg gain +1d to Navigation; on a Critical Success, the chart can be sold or traded as a Major project deliverable per Chapter 18.
