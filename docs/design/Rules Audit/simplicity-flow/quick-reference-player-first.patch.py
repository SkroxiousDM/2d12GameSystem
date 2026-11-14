#!/usr/bin/env python3
"""Reproduce the reviewed appendix diff from immutable Git blobs; never apply it."""
import argparse
import difflib
import hashlib
import subprocess
from pathlib import Path

BEFORE = "343f041c9df8a6e01d8a6ad12e74b705331a19a4"
AFTER = "3a40b622c9716ffafaf10c2361e00f0d2a079784"
RULE_PATH = "docs/2d12System/chapter-7-appendix-a-quick-reference.typ"
PATCH_SHA256 = "5cf66fc3b6e3db10027c7c00ca36722a8d072eaa4e01db50c326757df07434c7"

def read_blob(repo, oid):
    data = subprocess.run(["git", "-C", str(repo), "cat-file", "blob", oid],
                          check=True, stdout=subprocess.PIPE).stdout
    actual = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
    if actual != oid:
        raise ValueError("Git blob verification failed: " + oid)
    return data.decode("utf-8")

def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repo", type=Path, default=Path("."))
    parser.add_argument("--output", type=Path, default=Path("quick-reference-player-first.patch"))
    args = parser.parse_args()
    before = read_blob(args.repo, BEFORE)
    after = read_blob(args.repo, AFTER)
    diff = "".join(difflib.unified_diff(before.splitlines(True), after.splitlines(True),
                   fromfile="a/" + RULE_PATH, tofile="b/" + RULE_PATH, n=3)).encode("utf-8")
    if hashlib.sha256(diff).hexdigest() != PATCH_SHA256:
        raise ValueError("Generated diff does not match the approved patch")
    args.output.write_bytes(diff)

if __name__ == "__main__":
    main()
