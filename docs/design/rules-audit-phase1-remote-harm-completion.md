# Phase 1: Feedback and Take the Hand completion record

Date: 2026-10-31.
Branch: `boss-phases-fixed-thresholds`.

This document supplements `rules-audit-phase1-implementation.md`
and the root `CHANGELOG.md`. It records two scoped source fixes,
not Phase 1 closure or a built release.

## Source implementation

Commit: `745a88467e94746f400f89d439ba85b01cbead99`
Message: Clarify Feedback attacks and Take the Hand harm conversion

File: `docs/TestamentOfDust/tod-focuses-occult.typ`

### Feedback

- Through a speaker, lamp or screen in the target's scene, Attack
  with Occult, including against vampires.
- During conflicts, resolve normal Attack Disposition loss against
  the opposing side. Feedback does not itself inflict an individual
  status.
- Outside conflicts, spend Attack Power to inflict a fitting mental
  status, such as terrified or dazed, using the normal Attack effect.
- Existing access, device and range requirements remain unchanged.
  No bonus Power, area effect or new targeting permission was added.

### Take the Hand

- Retains once-per-scene control of one moving old-world machine
  in reach, Fighting with the user's skills.
- Ordinary shared Disposition loss does not drain Pneuma.
- When an explicit effect imposes physical harm on the machine,
  establish the incoming status and tier, then apply eligible
  Resistance and harm reduction normally.
- Instead of recording the remaining physical status on the machine,
  lose 1 Pneuma per remaining tier.
- Harm reduced to tier 0 causes no converted loss.
- Converted loss is an imposed cost and follows normal running-dry
  rules.

## Changelog addendum — Unreleased

### Clarified — Remote attacks and machine harm (2026-10-31)

- Feedback now distinguishes normal conflict Attack Disposition
  loss from mental-status Attacks outside conflicts.
- Take the Hand now applies eligible Resistance and harm reduction
  before converting remaining physical harm to Pneuma loss at
  1 point per remaining tier.
- Ordinary shared Disposition loss does not automatically inflict
  an individual status or drain Pneuma through either ability.
- Implemented in `745a884`.

## Review status and limitations

- The two remote-harm findings are resolved in source by the
  designer-selected procedures above.
- The source commit changed only `tod-focuses-occult.typ`.
- The broader Frontier option sweep and Phase 1 remain open.
- No Typst compilation, PDF rebuild, layout verification, numerical
  recalibration or playtest validation is claimed.
- This supplemental record does not claim that the root changelog
  or implementation tracker has been reconciled in place.
- Historical playtest records and main were not changed by this
  source commit.
