## 13. Compromise bands and Momentum summary reconciliation (2026-11-01)

Scope: designer-selected DC-01 and subsequent quarter-based compromise bands, plus CS-02 summary reconciliation, implemented through `13eb87ac2308233143c0b3e23aed464f0e674e97`. These identifiers belong to the residual passes, not the original audit's ID series.

- Preserve the existing full-or-nearly-full none/trivial compromise row.
- Outside that row, Minor applies when the winner retains half or more of starting Disposition.
- Significant applies when the winner retains one quarter or more, but less than half.
- Major applies when the winner retains less than one quarter. This supersedes the fixed 1–2-points threshold.
- Compare remaining Disposition directly with starting Disposition; no rounding rule is introduced. Exactly half is Minor; exactly one quarter is Significant.
- `3d9d570` implements the original exactly-half Minor boundary. `13eb87a` implements the subsequent Significant/Major bands while preserving that Minor row. Compromise consequences, injury credit, Resistance and Last Stand timing remain unchanged.
- CS-02 clarifies the design-pillars Momentum description to include unspent roll Power and permitted unspent cypher Power (`13eb87a`). It records an existing selected procedure, not a new Momentum-generation rule. Named restrictions and full-output exceptions, permitted upgrades, Momentum's cap and decay, and Site/Region-clock requirements remain unchanged.
- Source implementation and inspected commit diffs do not establish exhaustive reference clearance, compilation, rendered-layout verification or playtest validation. Earlier deferrals and broader remaining work are preserved. Phase 1 remains open.

## Follow-on edits

- Phase 4 item 2: do not fold R2 into core.
- Phase 4 item 5: remove Legacy from the document pass.
- Phase 4 item 1: set P, Grit and Encounter Budget to the 8-11 band.
- Changelog (P7): supersede the 2026-10-18 Disposition entry; log the Legacy removal and these rulings.
