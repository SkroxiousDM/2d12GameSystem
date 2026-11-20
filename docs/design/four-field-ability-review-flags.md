# Four-Field Ability Pass: Review Flags

These are open questions found while converting the core rulebook to the four-field ability format (Trigger, Cost, Benefit, Limit), adding Descriptor identity lines and standardising temporary-fact records. The conversion kept the existing wording. Nothing below has been changed in the rules. Each item needs a decision.

## Ability wording

| # | Ability | Section | Question |
|---|---|---|---|
| 1 | Briefing | Generic Playbooks §5.1 | An ally who acts on your information already gets +1. What does "once per scene, give the whole party this bonus" add: a bonus without acting on the information, a longer duration, or something else? |
| 2 | Master of the Field ◆ | Generic Playbooks §5.1 | Does the once-per-session "what will happen" Discover question cost Power or need a roll? |
| 3 | Network | Generic Playbooks §6.1 | The contact is a Truth. Truths normally last the scene (Core Rules §8). Does a Network contact last longer? |
| 4 | Pathfinder | Generic Playbooks §7.1 | "Ignore one terrain Truth per leg": what is a leg without Module B? |
| 5 | Ward | Generic Playbooks §8.2 | Is *warded-X* a normal helpful status that also adds its tier to rolls? Does the +1 tier reduction depend on X? |
| 6 | Ritual | Generic Playbooks §8.2 | Clock sizes are given only for Formidable (8) and Heroic (12). Can lower-scope workings be rituals? Does each ritual roll pay the working cost and risk Backlash? |
| 7 | Domain (core feature) | Generic Playbooks §8.1 | Not converted. It is a class feature with its own Cost and Backlash bullets, not a table ability. Should it use the four fields too? |
| 8 | Ascendant ◆ | Generic Playbooks §8.2 | It is "once per session", but a second use before downtime gives a Scar. Confirm that the Scar applies to a use in a later session before you reach downtime. |
| 9 | Unbreakable Line | Generic Focuses §3 | Who names the tier-2 status, and what are its scope and removal condition? |
| 10 | Lead by Example | Generic Focuses §3 | When does the bonus die expire if no ally acts toward the same goal? |
| 11 | Kick Them While They're Down; Called Shot | Generic Focuses §3, §4 | Do these apply only on a success (as most +Power and Weaken effects do), or on any roll? |
| 12 | Weapon Saint | Generic Focuses §3 | Should the GM-designed ability have a power guideline (for example, about one Tier 2 Focus ability)? |
| 13 | Nothing Is Off-Limits | Generic Focuses §3 | A declared hazard is a dangerous Truth and gives the GM +1 Woe per scene (Core Rules §8). Is that intended? |
| 14 | Shadow Escort | Generic Focuses §4 | Must the allies be with you and attempting the same stealth? |
| 15 | Sniper's Patience | Generic Focuses §4 | How does the 4-segment setup clock advance, and does the benefit apply to one shot only? |
| 16 | Master Key | Generic Focuses §4 | What separates "ordinary locks" from "complex security"? |
| 17 | Contingency | Generic Focuses §4 | What are the rank and duration of the fallback Truth? |
| 18 | Masterwork | Generic Focuses §5 | One artifact in total, or one at a time? |
| 19 | Miracle Worker | Generic Focuses §5 | Does it work on a Dying character or after death? Does the Scar from reaching tier 6 stay? |
| 20 | One Step Ahead | Generic Focuses §5 | Is the cancelled Woe spent, refunded to the GM, or lost? |
| 21 | Echoes of the Past | Generic Focuses §5 | It has no frequency limit. Is that intended, or is it once per place? |
| 22 | Disarming | Generic Focuses §6 | It stops a fight "before it starts" but sets new skills "before the next exchange". Can it be used once a Fight conflict has begun? |
| 23 | The Long Con | Generic Focuses §6 | "Each success against them Advances it" capitalises Advance, which is also the XP term. Should it read "advances it 1 segment"? |
| 24 | Favour Bank | Generic Focuses §6 | Is there a limit on banked favours, or on banking more than once per Players' Turn? |
| 25 | Pack Tactics | Generic Focuses §7 | Which animals qualify if you have no Animal Companion or Pack? |
| 26 | Ace | Generic Focuses §7 | Does the reroll replace the result, or keep the better one (as I Planned for This does)? |
| 27 | Bane | Generic Focuses §8 | "Staking" is a Frontier term. CONTRIBUTING keeps setting terms out of the core book. Replace it with "finishing procedures" alone? |
| 28 | Nemesis | Generic Focuses §8 | Can you name a new foe after the first is destroyed? |
| 29 | Ally Beyond | Generic Focuses §8 | The GM's compel is the cost. If you accept it, do you still earn Tychē normally? |
| 30 | Ask the Patron | Generic Focuses §8 | Are the two Discover questions free, or bought with Power? |
| 31 | Regeneration | Generic Focuses §8 | Does "clears one tier-1 physical status" remove a status that is at tier 1, or lower one physical status by 1 tier? |

## Layout

- Four Focus columns are now full, so their art placeholders no longer show (the `art-fill` helper hides itself when space is short): Never Leaves Anyone Behind, Wears a Hundred Masks, Carries the Weight of a Crown, and Hunts the Things in the Dark. Decide whether these Focuses still get art and where it goes.
- The core book grew from 126 to 132 pages. No text is clipped and every Focus still fits its column.

## Scope

- Focuses also have power tags and a weakness tag. Should they get identity lines like Descriptors?
- "Momentum" remains in the 2d20 comparison in the Core Rules design notes (intentional), in older design and playtest documents in `docs/design/` and `docs/playtest/`, and in the playtest engine code (`docs/playtest/engine_v2/`). Leave these as history, or update them?
