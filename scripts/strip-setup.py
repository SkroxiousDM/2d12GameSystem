#!/usr/bin/env python3
"""Remove the duplicated setup block from chapter .typ files.

Each chapter file starts with a copy of the palette / helpers / style block.
This replaces that block with:   #import "common.typ": *

Usage (from the repository root):
    python scripts/strip-setup.py            # dry run, changes nothing
    python scripts/strip-setup.py --write    # rewrite the files in place
    python scripts/strip-setup.py --write docs/2d12System

Safety checks: a file is only changed if the block starts at the palette
marker, ends at the closing brace of #let chapter(...), looks the expected
size, and contains the expected helpers. Anything else is reported and skipped.
Commit first so `git diff` can show exactly what changed.
"""
import pathlib
import sys

START = "// ---------------------------------------------------------------- palette"
IMPORT = '#import "common.typ": *\n'
SKIP = {"common.typ", "the-2d12-system-v2-core-rulebook.typ"}
MIN_BLOCK, MAX_BLOCK = 5000, 16000


def strip(text):
    """Return (new_text, removed_chars) or (None, reason)."""
    if text.lstrip().startswith(IMPORT.strip()):
        return None, "already uses common.typ"
    lines = text.splitlines(keepends=True)
    start = next((i for i, l in enumerate(lines) if l.startswith(START)), None)
    chap = next((i for i, l in enumerate(lines) if l.startswith("#let chapter(")), None)
    if start is None or chap is None or start > chap:
        return None, "setup block not found"
    end = next((i for i in range(chap, len(lines)) if lines[i].rstrip() == "}"), None)
    if end is None:
        return None, "end of #let chapter(...) not found"
    block = "".join(lines[start:end + 1])
    if not (MIN_BLOCK <= len(block) <= MAX_BLOCK):
        return None, f"block size {len(block)} outside expected range"
    if "d12-face" not in block or "#let sidebar(" not in block:
        return None, "block does not look like the standard setup"
    new = "".join(lines[:start]) + IMPORT + "".join(lines[end + 1:])
    if not new.strip().replace(IMPORT.strip(), "").strip():
        return None, "nothing would remain"
    return new, len(block)


def main(argv):
    write = "--write" in argv
    args = [a for a in argv if not a.startswith("--")]
    root = pathlib.Path(args[0]) if args else pathlib.Path("docs/2d12System")
    changed = 0
    for path in sorted(root.glob("*.typ")):
        if path.name in SKIP:
            continue
        text = path.read_text(encoding="utf-8")
        new, info = strip(text)
        if new is None:
            print(f"skip    {path.name}: {info}")
            continue
        changed += 1
        print(f"{'strip' if write else 'would strip':11} {path.name}: -{info} chars")
        if write:
            path.write_text(new, encoding="utf-8")
    print(f"{changed} file(s) {'changed' if write else 'would change'}.")
    if not write:
        print("Dry run only. Re-run with --write to apply.")


if __name__ == "__main__":
    main(sys.argv[1:])
