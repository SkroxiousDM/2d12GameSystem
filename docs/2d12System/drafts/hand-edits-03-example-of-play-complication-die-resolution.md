# Pending hand edits, batch 3: Example of Play

Branch: `feat/complication-die-resolution`. Continues `hand-edits-02-glossary-complication-die-resolution.md`.

These edits are **not applied**. Check the blob SHA before editing; if it has changed, re-read the file. Terminology follows Core Rules 2.5 (`chapter-2.2-core-resolution.typ`).

No Typst build or rendered-page check has been done for any of these.

## 1. Example of Play

File: `docs/2d12System/chapter-2.13-example-of-play.typ` (blob `f86918f`). All numbers in the example were rechecked against the branch core and are correct. One phrase is stale (1a). Additions 1b and 1c are approved, because the example does not yet show a Success with Complication or the accepted-compel ruling.

1a. Setup paragraph (13.1, Setup). Settles the Edge wording: the core says highest Edge in that skill's pool. Find:

```
Mira leads with Fight +3 and the highest Edge in its pool, 1.
```

Replace with:

```
Mira leads with Fight +3 and Edge 1, the highest in that skill's pool.
```

1b. Compel bullet (first scene, last bullet). Accepted compel complications have no severity. Find:

```
Kade accepts and gains +1 Tychē Point.
```

Replace with:

```
Kade accepts and gains +1 Tychē Point. The complication has no severity: it can't be bought off, mitigated or Resisted, and the GM gains no Woe for it.
```

1c. New bullet showing a Success with Complication. Insert it after the `#strong[On failure:]` bullet and before the `#strong[Later:]` bullet. Check: 11 + 7 + 5 = 23, the same total as the main example; Power is 1 base + 1 margin + 2 Tag Power = 4; the clock needs 4, so spending 1 on mitigation leaves it one segment short.

```
- #strong[If the Complication die had been higher:] with 11 and an ordinary 7, the total is still 23 and the Power is 4 (no match, so no critical). That is a Success with Complication. The GM names a concrete consequence from the named danger, with its severity, before Kade responds: say a minor one, a guard turns toward the sound. Kade can give the GM 1 Woe to cancel it, spend 1 surplus Power to reduce it to nothing (leaving the clock one segment short), Resist it, or accept it.
```

## Not yet checked

- Furcifer (Opportunist), Interlocutor (Smooth Recovery) and `chapter-2.6.5-recovery.typ`.
- Modules C, D and F, the character sheet, `chapter-2.3-character-creation.typ`, the design pillars and the epigraph.
- Branch-wide search for: miss by, Tag Power + 0, ordinary-failure Woe, doubles, Threat.
- Out of scope unless ruled otherwise: Testament of Dust setting files, `drafts/module-stakes-and-checks.typ`, `docs/playtest/engine_v2/resolution.py`, design and audit notes, CHANGELOG.
