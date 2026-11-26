# Pending hand edits, batch 2: Glossary

Branch: `feat/complication-die-resolution`. Continues `hand-edits-complication-die-resolution.md`, whose section 7 (Glossary) is superseded by this file.

These edits are **not applied**. Check the blob SHA before editing; if it has changed, re-read the file. Terminology follows Core Rules 2.5 (`chapter-2.2-core-resolution.typ`).

No Typst build or rendered-page check has been done for any of these.

## 1. Glossary

File: `docs/2d12System/chapter-8-appendix-b-glossary.typ` (blob `f3971e1`). The whole file has been read. All four edits below are approved. No other entries are stale: Success with Complication, Success, Woe, Resistance, Power mitigation, Trumped action and Versus test all match the core.

1a. Invoke entry. Invoke rerolls the Risk die. Find:

```
unless explicitly permitted. The +2 affects only the total
```

Replace with:

```
unless explicitly permitted; Invoke is permitted and rerolls it, and the new result replaces the old. The +2 affects only the total
```

1b. Complication entry. Find:

```
before choosing a response. Original-severity Woe buyoff
```

Replace with:

```
before choosing a response. The GM may add one Woe-bought complication per roll after it resolves and before the player responds, paying 1/2/3 Woe for minor/moderate/major. Original-severity Woe buyoff
```

1c. Compel entry. Find:

```
It changes the situation, not an automatic numerical penalty or a resolved success.
```

Replace with:

```
It changes the situation, not an automatic numerical penalty or a resolved success. An accepted compel's complication has no severity and can't be bought off, mitigated or Resisted; the GM gains no Woe for it.
```

1d. Risky roll entry. Same Risk-die sentence as 1a. Find:

```
Generic action rerolls and face changes leave it unchanged unless explicitly permitted.
```

Replace with:

```
Generic action rerolls and face changes leave it unchanged unless explicitly permitted; Invoke rerolls it, and the new result replaces the old.
```

## Not yet checked

- Branch version of the Example of Play.
- Furcifer (Opportunist), Interlocutor (Smooth Recovery) and `chapter-2.6.5-recovery.typ`.
- Modules C, D and F, the character sheet, `chapter-2.3-character-creation.typ`, the design pillars and the epigraph.
- Branch-wide search for: miss by, Tag Power + 0, ordinary-failure Woe, doubles, Threat.
- Out of scope unless ruled otherwise: Testament of Dust setting files, `drafts/module-stakes-and-checks.typ`, `docs/playtest/engine_v2/resolution.py`, design and audit notes, CHANGELOG.
