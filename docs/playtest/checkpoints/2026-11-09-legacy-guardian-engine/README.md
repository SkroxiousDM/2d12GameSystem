# Legacy guardian combat engine checkpoint

Date: 2026-11-09.

Rules-source baseline: `5ba56ae337cb8196b877b5ee4576907f32c90f80`.

This executable engine was reconstructed from the Python source in the playtest conversation. It preserves the historical Sealed Gate simulation assumptions, not the subsequently selected B01–B03 clarifications. Formatting, a module header and command-line packaging were added. Byte-for-byte identity with the original generated attachment is not established.

## Reproduction check

The reconstructed engine was rerun for 100 matched seeds per model, 300 combats total. Seed range: 260110800–260110899.

| Model | Hunter wins | Guardian wins | Mutual defeats |
|---|---:|---:|---:|
| Fixed option B | 74 | 22 | 4 |
| One-exchange adaptive | 57 | 35 | 8 |
| Two-exchange adaptive | 63 | 35 | 2 |

All three distributions match the earlier reported outcomes. Fifteen additional rounded aggregate metrics also matched, for 18 aggregate reproduction checks. A separate fresh-process smoke test completed six combats. See `reproduction-summary.json` for the recorded counts and aggregate values.

These checks reproduce reported aggregates. They do not establish full rules compliance, historical per-seed equality, or correctness of every untested interaction. Historical per-seed files were not available for direct comparison. Raw rerun CSVs and volley logs are not included in this checkpoint commit; the engine regenerates them.

## Run

Requires Python, NumPy and pandas. From this directory:

```bash
python combat_engine_legacy.py --count 100 --output reconstruction-results
```

The command writes combat results, a volley log and outcome counts. Importing the module does not run a batch. Integration entry points are `initial(seed)`, `battle_step(...)`, and `run(model, seed, trial)`. Model names are `Fixed`, `One exchange`, and `Two exchanges`.

## Preserve this checkpoint

Do not silently amend this file with the new rules. Apply B01–B03 and regression integration in a separately versioned engine/commit so the historical reproduction remains available.

Known legacy boundaries:

- Self-Repair uses the historical per-successful-action assumption, not the selected once-per-guardian-per-exchange procedure.
- Protocol uses targeted-guardian next-exchange knowledge but has no complete early-commitment and paid-NPC-change information model.
- Backlash, full status/recovery procedures and finishing rules are not comprehensively implemented.
- The engine is scoped to the 13-Grit Sealed Gate and the Mara/Tavi/Ione party. It is not a general implementation of the rulebook or a reconstruction of the separate Collectors and Red-Maw scripts.
- The reference regression suite has not yet been connected to this engine. Standalone verification-adapter passes do not certify it.

This commit adds a simulation checkpoint only. It does not change active game rules, alter the findings report, merge a branch, or update `main`.
