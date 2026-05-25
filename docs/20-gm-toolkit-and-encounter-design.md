# GM Toolkit And Encounter Design

The system gives the GM a deep menu of resolution rules, but those rules are not the same as procedures for *building* the scenes those rules adjudicate. This chapter is the operating manual: how to calibrate difficulty, build encounters, populate them with NPCs and adversaries, and pace pressure across an adventure.

## The GM's Three Levers

Almost every scene-building decision in 2d12 boils down to three numbers:

1. **Challenge Threshold (CT).** Set by Difficulty modifier per Chapter 1.
2. **Success Levels Required (SL Required).** How many SL above the bar are needed to fully resolve the scene's central problem.
3. **Resource Pressure.** How much Stamina, Vitality, Resolve, Sanity, Power, or Doom is spent and gained over the scene.

Decide all three before the players touch dice. If two of them feel high, lower the third. If two feel low, raise the third or skip the roll.

## Calibrating Difficulty

Use the table below as a sanity check for one-roll Common Tests. The headline question is *how many of my players will succeed on a fresh roll with no help?*

| Target | Approximate CT | Use For |
|---|---|---|
| Almost everyone passes (>80%) | Very Easy / Easy | Color, flavor, narrative beat. Often skip the roll entirely. |
| Most pass with stress (~65%) | Routine | Trained characters demonstrating competence. |
| Coin flip (~50%) | Challenging | The default for meaningful scenes. |
| Most fail (~35%) | Difficult | Stretch goals; pushing past comfort. |
| A few pass (~20%) | Hard | Heroic moments. |
| Almost no one passes (<10%) | Very Hard | Legendary moments; should usually be Extended Tests with help. |

If an outcome must succeed for the adventure to continue, **do not gate it behind a roll.** Use the roll to determine the cost, not the access.

## Encounter Templates

An encounter is a scene with a defined opposition. Pick a template, then populate it with adversary roles.

### Template: Combat Encounter

Estimated complexity is based on the **Threat Budget** below.

- **Easy:** Threat Budget = (party size × 2). The party should win without spending Fortune. Useful for opening scenes, calibration, and tempo.
- **Standard:** Threat Budget = (party size × 4). The party should win, but will spend Stamina and probably Vitality. The default.
- **Hard:** Threat Budget = (party size × 6). The party should win only if it plays well, and will leave the scene wounded.
- **Deadly:** Threat Budget = (party size × 8) or more. The party may have to flee, parlay, or burn Fate to live. Use sparingly and signpost in advance.

Spend the budget on **Adversary Roles** below. A standalone hostile NPC is built as one role; a unit of weaker creatures (a pack, a mob) may share a single role at higher count.

### Template: Social Encounter

Pick a goal verb: **Persuade, Bargain, Deceive, Intimidate, Inspire, Court**, or **Investigate (talk-side).** Set:

- **SL Required:** 3 for a single NPC of weak Resolve; 6 for an audience or a strong-willed target; 10+ for a faction-level outcome handled in one scene.
- **Round Limit:** A clock of 3, 5, or 7 rounds before the scene closes whether or not the goal is reached.
- **Stakes:** What is gained on success and lost on failure. Always tell the players the stakes before round 1.

Use Social Superiority and the Social Conflict chapter to track pressure.

### Template: Pursuit Encounter

Stack the Pursuit chapter on top of a clear win condition: a fixed number of Lead segments to reach, or a fixed number of rounds before quarry escapes. Add 1–2 Hazards that activate at specific segments.

### Template: Exploration Encounter

A "site" rather than a fight. Build it as a small map of 3–7 zones; each zone offers one or more of: **a clue, a hazard, a resource, an obstacle, an inhabitant.** The encounter ends when the party leaves with a defined number of clues, or when a "site clock" advances to its final segment.

### Template: Investigation Scene

See Chapter 22 (*Investigation*) for the dedicated procedure. From the GM's side, prebuild 3 **leads**, each pointing somewhere; 1 **red herring**; and 1 **complication** ready to spend when the players bog down.

### Template: Mass Engagement

A battle or riot too large to play out unit by unit. Treat it as an Extended Test with multiple skills permitted, an SL Required of 8 to 16, and a clock equal to the number of rounds before defeat. Each player describes a *role* their character plays in the wider fight; the rolls represent the local effect of that role on the broader outcome.

## Adversary Roles

Roles are archetypes, not statblocks. They tell you what an opponent *does* in a scene. Mix and match.

| Role | Threat Cost | Behavior |
|---|---|---|
| **Mook** | 1 | Low Vitality, low damage. Falls to a single solid hit. Operates in groups of 3+. |
| **Skirmisher** | 2 | Mobile, ranged or hit-and-run. Forces the party to chase or split. |
| **Brute** | 3 | High damage, slow. Punishes characters who stand still. |
| **Sniper** | 3 | Ranged, hidden. Pressures the back line until found. |
| **Caster** | 4 | Spends Power on debuffs and battlefield control. Disrupts party formation. |
| **Captain** | 4 | Buffs allies, grants reactions, generates Doom for the GM. |
| **Lieutenant** | 5 | Personal threat with one signature ability and 2–3 Talents. |
| **Boss** | 8+ | Multi-phase opponent; should have a unique resource pool. See *Boss Construction*. |
| **Hazard Engine** | 2 | Not an NPC; an environmental ticking threat (collapsing roof, rising tide, magical pulse). |

An encounter should usually have **at least two role types**. A scene of nine Mooks is dull; three Mooks plus a Captain plus a Hazard Engine produces decisions.

## Quick NPC Generation

For most adversaries, do not build a character. Use the line below and adjust.

> **(Name), (role).** Attribute pool: choose a primary at 4–6, a secondary at 3, others 1–2. Skill pool: two skills at 2 ranks, one at 3. Vitality and Resolve: 3 + primary attribute + Tier. Defense: 2 + Tier. Damage: 1d4 + primary attribute. Special: one signature ability described in plain text.

**Tier** is a single number representing the adversary's general lethality.

| Tier | Use Against | Threshold |
|---|---|---|
| 0 | A starting party | Mooks and street thugs |
| 1 | A seasoned party | Veteran soldiers, guild enforcers |
| 2 | A high-level party | Champions, named knights |
| 3 | An end-of-arc party | Warlords, archmages |
| 4 | A campaign finale | Demons, dragons, gods |

## Boss Construction

A Boss is a scene-sized adversary. Build it in four parts:

1. **Phases (2–3).** Each phase has its own pool of Vitality (or equivalent). The boss only takes Critical Wounds at the transition between phases.
2. **Signature Move.** One action that is dangerous but predictable. Tell the players what it is and how to interrupt it.
3. **Pressure Pool.** A custom resource the boss spends — Dread, Corruption, Wrath, Lies. The boss accrues it as Doom does and spends it on big effects.
4. **Exit Condition.** What victory looks like: defeat, surrender, the breaking of an oath, the destruction of a phylactery. State this to the players at first contact even if obliquely.

A Boss should usually occupy the whole party for 4–7 rounds. Shorter feels like a Lieutenant; longer drags.

## Hazard Design

A Hazard is any threat that does not roll dice for itself. Define:

- **Trigger.** What activates it (enters zone, end of round, on Doom spend).
- **Test.** Skill + Difficulty for those affected.
- **Effect.** Damage, condition, terrain change.
- **Removal.** What ends or disarms it.

Hazards are cheap pressure. Two well-placed Hazards can elevate an Easy combat to a Standard one without adding adversaries.

## Doom And The GM's Economy

Doom is the GM's metacurrency, gained from player Success-with-Complication, Failures, and Fumbles, and from voluntarily letting a player swap a Failure for a worse-but-narratively-richer outcome. Spend Doom to:

- Add a die to an adversary's roll (1 Doom per +1d).
- Activate an adversary's signature ability out of turn (2 Doom).
- Introduce a complication into the current scene (1–3 Doom by severity).
- Trigger a Hazard early or twice (variable).
- Advance a faction clock during play (3 Doom for 1 segment).

**Cap:** Doom equal to 1 + the number of player characters. Anything beyond cap is spent or burned at the end of the scene.

The aim is not to maximize Doom but to use it as a heartbeat that tells players when the GM is about to push.

## Pacing An Adventure

A standard adventure is 3–5 encounters arranged in a tension curve. A useful default:

1. **Tone-setting scene** (Easy or social). Establishes stakes.
2. **Investigation or Exploration scene.** Players gather information.
3. **Twist or pressure spike** (Standard combat, Hazard, faction reveal).
4. **Climactic encounter** (Hard or Deadly).
5. **Denouement / Recovery.** Often handled by narration leading into Downtime.

Players should be invited to spend Fortune in scenes 3 and 4 and to accept losses they can carry into Recovery. If they end every adventure at full resources, the pressure dials are set too low.

## Calibration Checklist

Before running a built scene, check:

- [ ] Can the players see the threat or are they being ambushed? Both are fine; you should know which.
- [ ] What does success look like? What does failure look like? Both must be narratively interesting.
- [ ] How many SL is "enough"? Are you running an Extended Test under the hood?
- [ ] What Doom do you start with? When will you spend it?
- [ ] What resource leaves the scene depleted? (Stamina? Resolve? A favor? A connection?)
- [ ] What does the world learn from this encounter? Add it to a faction clock or rumor pool.

If you can answer all six in one sentence each, the scene is ready.
