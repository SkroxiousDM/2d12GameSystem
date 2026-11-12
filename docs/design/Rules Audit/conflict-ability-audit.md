# Individual conflict-ability audit

Inspected: 2026-11-07 on `draft/conflict-system-rewrite`, after compatibility
batch 36. Batch 37 records these findings only; no ability is amended or
new ruling adopted by this document.

This is a limited source inspection, not a complete ability audit, rules
erratum, compiled-book check or playtest. The active source and the
approved shared standard must be read together; unresolved mappings need
explicit decisions before replacement text is committed.

## Follow-up status: 2026-11-07

The inspection below is preserved as a historical snapshot. Its quotations,
blob SHAs, findings and requested decisions describe the inspected version,
not a claim that every question remains unresolved in the current source.
This addendum records subsequent source integrations, not a fresh complete
ability audit or new designer ruling.

| Historical finding | Subsequent integration | Remaining boundary |
|---|---|---|
| Opportunist's Impeded-status trigger and timing | Batch 52, `ca671c6a1e27c4a433cd9209e13a69658ec527c8`, replaces it with the individual-opponent shared opening, materially relevant unawareness or pending Impede, and pre-resolution timing including automatic resolution. | No blanket status-based eligibility or script inspection; broader setting/reference checks and playtesting remain pending. |
| Deadly Precision's trigger, conflict benefit and component choice | The same Batch 52 commit supplies +1 ordinary Attack Disposition loss with at least 1 committed Power, or one qualifying single-target status purchase at half purchased tier rounded up; it records stacking, area and finishing limits. | No doubled Power/loss, new harmful-status permission or discount to a shared area-status purchase. The intentional combined offensive increase remains unplaytested. |
| Second Wind's immediate-response ambiguity | `50b06b39b200c16856299d659c0d4baeb8a6a770` commits the scoped Second Wind rescue replacement, alongside Command's rotation replacement. | Read the replacement entry for its permissions; neither this record nor the earlier bonus-die reminder certifies unrelated rescue/return abilities. |
| No One Left's explicit retreat/escape benefit | `b0c2c252c5770e1deff6f47f44ee865001f9ff77` commits the scoped withdrawal, evasion and escape replacements. | Preserve the actual entry's explicit exception and payment boundaries; source integration is not validation of every pursuit or setting interaction. |
| Perfect Strike's exceptional-doubles dependency | Batch 51 implements the opposing-total procedure in §10 through `b5b1827d42f6fad7b008d2ef7c222b0c46edf8f1` and reconciles §2 through `f9c2ca265b6231843854ca1ef6c95d46c6bb6c4f`. Ability-created doubles use the same procedure. | The shared ruling is settled; this is not a claim that every affected entry or summary has been inspected. |
| Escape Artist's highest-die threshold under negative Edge | No resolution is claimed by these integrations. | Keep the recorded question open; do not silently replace highest with kept/read. |
| The Reveal follow-up | `76e59ce5762752b515640d2aabbbbbed7dc3cd26` commits its scoped case-related setup/compromise replacement, together with Borrowed Might, Ward the Threshold and Immunity. | The Reveal is not automatic success; broader interactions, setting references and playtesting are not certified. |

Related source work includes Smooth Recovery's independent-failure
conversion in `8583a3131ea8aaac96a3421c1631cc406ddff5d0` and entry,
identity-protection and Taken Out interventions in
`91464fd6d937fb59bf0b69a789bf3556f3807bc7`. These scoped replacements do
not settle unrelated thresholds, Awaken the Blood, staking interactions
or uninspected generic/setting entries.

The compatibility ledger was extended in
`ceea15187019ba2d9ed34f9d5effd49e27945b0f`. The core Quick Reference was
reconciled with Batches 51–52 in
`ec778fc22c48789df1245cf828352835c2ec4a37`; this is summary source work,
not a compiled-layout check. See `batch-52-implementation-status.md` for
Batch 52's scoped record. Remaining documentation, root changelog and
Phase 1 tracker reconciliation, active-source sweeps, compilation, PDF
rebuilding and playtesting remain separate tasks.

## Historical inspection record

The sections below retain the original inspection findings. References
to a current entry, an open ruling or a needed decision are relative to
that snapshot; consult the follow-up above and active source for status.

## Inspected source snapshots

| Source | Git blob SHA at inspection |
|---|---|
| `../chapter-5.4-furcifer.typ` | `a330b156046a352b3484633c923fe4d81de78b88` |
| `../chapter-6.3-combat-focuses.typ` | `a1bca945f99dfe49d18125f3f09ef627d5981863` |

Use `conflict-shared-rules.md` for the design standard and active Core
Rules §10.5–10.7 for action timing, Impede, offensive components and
protected payments. These snapshot findings do not establish the state
of uninspected setting entries.

## 1. Furcifer: Opportunist

Current entry, §4.1:

> When you act against a target that's unaware of you or has an Impeded
> status, gain +1 Power on a success.

Finding: the reference to an Impeded status does not match core Impede,
which is a temporary effect on a side's next scripted action, not a tiered
status on an individual target. The unaware-target trigger remains stated
separately.

Decision needed: whether eligibility follows a side with pending Impede,
the specific participant whose next roll will suffer it, an ongoing
condition, or another explicitly chosen trigger. Also state when the
condition is checked. Do not choose one by merely replacing the word
status. Preserve +1 Power unless a separate numerical change is approved.

## 2. Furcifer: Deadly Precision

Current entry, §4.1:

> Against an unaware or Impeded target, Attack effects cost half Power
> (round up): 2 Power buys a tier-3 or tier-4 status.

Finding: the entry retains harmful-status pricing and the same Impede
eligibility ambiguity. Ordinary conflict Attacks instead remove committed
Power + 1 shared Disposition. The approved shared standard expressly
does not convert a status-tier discount into a Disposition multiplier.

Decisions needed:

- Resolve the eligible-target trigger consistently with Opportunist.
- Specify the conflict Disposition benefit, if any, separately from the
  harmful-status discount; do not infer doubled loss or doubled Power.
- State which component receives a benefit if an explicit effect permits
  both Disposition loss and a status.
- Preserve separate treatment of staking, killing strikes and other
  finishing procedures unless expressly included.

No numeric translation is proposed or implemented by this audit.

## 3. Never Leaves Anyone Behind: Second Wind

Current entry, Tier 2a:

> Once per scene, when an ally is Taken Out, you may act immediately to
> reach them. Your next roll to help or rescue them gets a free bonus die.

Finding: the entry expressly grants an immediate response, but the short
text does not specify all additional-action details required by the
shared standard. A generic reminder that free grants no extra action
does not answer an entry that explicitly says act immediately.

Decisions needed: whether reaching the ally replaces a scripted action
or is additional; its rotation treatment; whether it interrupts or waits
for the triggering action; interaction with independently resolving
actions; and whether the user can act while Taken Out. Reaching an ally
and granting a bonus die do not themselves satisfy the core permission
required to return that ally to an ongoing conflict. Preserve the
once-per-scene frequency and bonus die unless separately revised.

## 4. Other scoped review notes

- **Escape Artist (Furcifer):** its zero-cost threshold says highest die
  of 5+. Core negative Edge can require reading the lowest die. Review
  how the threshold should work in that case; do not silently replace
  highest with kept/read and thereby decide the interaction here.
- **Perfect Strike (Masters a Weapon):** changing a kept die to 12 can
  create doubles. Its timing restriction is present, but it does not
  settle the core's open exceptional-doubles-versus-opposed-total ruling.
- **No One Left (Never Leaves Anyone Behind):** it has an explicit retreat/
  escape guarantee and status-clearing benefit. Review the guarantee's
  relationship to declared stakes and any proposed limits explicitly;
  do not remove a named exception through generic summary wording.
  General protected-payment rules still require an express exception
  before incidental clearing can erase an accepted payment.

## Boundaries and follow-up

1. Obtain explicit decisions on the unresolved trigger and timing choices.
2. Draft complete replacement entries with component, frequency, cost,
   actor, rotation, Taken Out and independent-action treatment as relevant.
3. Review and approve the exact source edits before committing them.
4. Extend the audit to the remaining generic and setting abilities,
   including Awaken the Blood, The Reveal and staking interactions.
5. Compile, inspect layout and playtest only after the relevant source
   decisions are implemented; none of that verification is claimed here.

The compatibility batch ledger remains in `conflict-compatibility-status.md`.
This audit advances its individual-entry inspection task but does not
mark that task, the full rewrite or any unresolved ability amendment complete.
