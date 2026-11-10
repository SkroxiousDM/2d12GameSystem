# Shared Conflict Rules

Status: approved design standard for the Chapter 2.10 rewrite and subsequent ability amendments. The shared rules have been incorporated into active Typst sources on the review branch; this is source integration, not a verified compilation or PDF rebuild. Check `../chapter-2.10-conflict-system.typ` and `../chapter-2.10-area-and-interpose.typ` for current conflict implementation. Individual ability and setting amendments require entry-by-entry verification; this document does not certify that all are complete.

## Approved decisions

1. Existing combat abilities granting an additional harmful-status tier should also receive an explicit conflict benefit of additional Disposition loss. Never apply both benefits from the same bonus application.
2. Automatic success replaces the roll for a normally scheduled action; it does not bypass the action-interaction table.
3. Sun-Sick and Thirst use their explicitly listed Scar consequences instead of also triggering an unstated generic tier-6 Scar.

## 1. Disposition bonuses and status-tier bonuses

Disposition loss and harmful statuses are separate effects. Additional Disposition loss does not create or increase a status. Additional status tiers do not increase Disposition loss. Additional Power is a separate benefit and may be spent only on effects the action permits.

An ordinary conflict Attack or Feint inflicts no status unless an explicit ability, item, hazard or creature rule permits it.

### Standard offensive bonus wording

When an ability improves attacks inside and outside conflicts, specify both benefits:

> When your successful conflict Attack applies its ordinary Disposition-loss effect, it removes 1 additional Disposition. When an Attack instead inflicts a harmful status, increase that status by 1 tier.

Apply the appropriate benefit once. An effect that explicitly inflicts both Disposition loss and a status must state which component receives the bonus; it does not receive both automatically. Bonuses to Attack do not apply to Feint unless stated.

An additional status tier or Disposition-loss bonus does not improve staking, a killing strike or another finishing procedure unless expressly stated.

## 2. Impede and ongoing conditions

Impede is a temporary conflict effect, not a tiered status.

> The affected side's next scripted action roll takes -3. The effect expires after that action, including when the action is trumped or makes no roll.

Impede can carry across an exchange boundary. It does not penalize Resistance or incidental rolls. Multiple pending Impedes do not stack, increase the penalty or extend its duration. Restore does not remove Impede merely because it removes statuses. Impede does not itself restrain, immobilize or render someone helpless.

An ongoing impediment must have a name, tier, scope and removal condition. For example, entangled-2 hinders movement and actions requiring free limbs, and ends when the net is cut or the target escapes. Apply ordinary status rules.

State fictional restrictions directly. A helpless body, inaccessible weapon or sealed exit may restrict what is possible without being Impede. Do not use Impeded as shorthand for unrelated conditions.

## 3. Free, immediate and automatic actions

### Free benefits

Free removes only the stated resource cost. It does not grant another turn, bypass rotation or permit action while Taken Out. A passive benefit or an ability explicitly requiring no action can apply without consuming a scripted action; its entry must say so.

### Immediate effects

An immediate effect resolves at its stated trigger. It interrupts another action only if it explicitly permits an interrupt. It cannot retroactively cancel costs or effects already resolved.

An immediate additional action must state its trigger, whether it replaces a scripted action, whether it counts for rotation, whether it is usable while Taken Out, and how it interacts with independently resolving actions.

### Automatic success

Automatic success replaces the roll for an otherwise permitted action. It does not supply an extra action, change a script, rescue a trumped action, expand the stakes or make an unsuitable approach permissible.

On an independent test, apply the listed Power without rolling. On a versus test, treat the action as the winner and use its listed Power unless the opposing action also succeeds automatically. If both succeed automatically, resolve the versus interaction as a tie unless a specific rule says otherwise.

An automatic success generates no dice-based critical or complication because no dice were rolled.

## 4. Protected Disposition and accepted payments

Generic wording such as ignore harm, cancel a consequence, take the hit or protect an ally does not affect shared Disposition. A rule must explicitly mention Disposition to reduce, redirect, restore or prevent its loss.

Generic prevention, redirection, immunity, Resistance and incidental status-clearing benefits cannot prevent or remove:

- An accepted injury trade.
- A running-dry status generated by paying a cost.
- An agreed concession cost.
- Another consequence explicitly accepted as payment for a benefit.

An exception must expressly identify the protected payment it affects.

Once recorded, a status may be treated or healed through the applicable recovery procedure. Later healing does not refund the benefit, restore Disposition, refresh an injury trade or erase a Scar.

## 5. Companions and groups

At setup, distinguish a participant from an asset. A participant takes assigned scripted actions and is bound by the side's stakes. An asset supplies tags, information or an explicitly permitted helping benefit without taking independent turns. Do not count the same companion twice merely because it can perform both functions.

An independently acting companion occupies a place in continuous rotation, uses its stated skills or ratings, and may be prevented from acting or Taken Out. It receives no separate Disposition track. It receives no injury trade unless explicitly granted one.

A group represented by one rules entry counts as one participant for rotation and area-effect Disposition bonuses. Its number of bodies does not multiply benefits or penalties. Apply a separate Bodies or mass-combat rule only when expressly provided.

A companion or group grants setup Help only if capable of contributing to the objective. Free Help waives the ordinary resource cost, not relevance, bonus-dice limits or participation risks.

Removing a companion or group does not directly subtract Disposition. Its removal may defeat the side if no remaining participant can pursue the objective.

## 6. Creature finishing procedures and Scar exceptions

Zero shared Disposition defeats a side in the declared contest. It does not automatically inflict bodily injury, destroy every creature present or satisfy a creature-specific killing requirement.

Where a creature requires a finishing procedure, victory secures the opportunity to attempt that procedure within the established stakes.

### Resolution order

1. Complete the deciding volley and all independent actions.
2. Determine victory or mutual defeat.
3. Resolve any finishing procedure the outcome permits.
4. Settle compromise.
5. Apply recovery and aftermath.

Do not apply a proposed compromise status early solely to reduce a finishing roll's Difficulty. A failed finishing attempt does not automatically reopen the original conflict or impose an additional compromise grade unless a specific rule says so.

A special procedure must explain how it replaces the normal interaction and what happens to the opposing action. Replacing a roll's Difficulty alone does not settle that question.

### Scars

Generic harmful statuses reaching tier 6 follow the normal Scar procedure. A named creature track or special condition with its own explicit breaking-point outcome uses that outcome instead of adding an unstated generic Scar.

- Sun-Sick uses its listed collapse and prolonged-exposure consequences.
- Thirst uses its Blood Crisis choice and listed Scar consequences.
- Bled retains its explicit reference to the core tier-6 and Scar rules.
- A special tier-5 ceiling grants no immunity to payments, sunlight or removal outside its stated scope.

Do not award a second Scar for the same event merely because both a general rule and its specific replacement describe it.

## Integration boundaries

Apply this standard when amending abilities. Do not silently redesign numerical benefits beyond the approved offensive-bonus translation. The earlier review list identified Deadly Precision, Awaken the Blood, The Reveal and staking interactions as requiring explicit replacement text and review; verify their current entries before treating any of those amendments as complete or still pending.

The standard does not by itself convert a status-tier discount into a Disposition multiplier, remove a named ability's compromise exception, define a resource-damage conversion, or settle every special-action interaction. Record such decisions explicitly in the affected entry.
