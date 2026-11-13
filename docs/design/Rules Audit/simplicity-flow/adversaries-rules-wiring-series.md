# Adversaries rules and wiring — archival patch series

Integration baseline: 17ad6a1f535d08f8366b41d2bb80b391e106e04d.
Original approved five-file baseline: e70688f1a10bb8142345cb2ad5611e22ced35f2f.
Original uploaded patch SHA-256: 5a62fe3b38789f23b0bf0207f9996b06a681d5a7a2bdfe746a935ccdea00f15a.

The rebased integration is archived as two zero-context unified patches:

1. adversaries-rules-wiring-01.patch — main chapter, boss phases, quick reference, shared renderer and core consistency.
2. adversaries-rules-wiring-02.patch — full Part 2 procedures, reserves, cards and include wiring.

Both files are required for the complete six-source-file integration. File 02 is pending at the initial creation of this manifest. The final squash must not occur before both are present and the resulting file list is checked.

From a clean checkout of the integration baseline, use:

    git apply --check --unidiff-zero "docs/design/Rules Audit/simplicity-flow/adversaries-rules-wiring-01.patch" "docs/design/Rules Audit/simplicity-flow/adversaries-rules-wiring-02.patch"

To apply, repeat without --check. These are source-change archives, not patches to reapply to the already updated staging branch. Review notes and this manifest are stored separately and are not recursively included in the patches.

Verification: regenerated main chapter, Part 2, boss phases, quick reference and renderer blob hashes match the staged GitHub files at a0bc035f4a1d371e78384b4d70269d4b1daf4aab. Their zero-context patches passed git-apply checks and byte-for-byte result checks in a temporary local repository. The core commit's three hunks were checked against the approved patch through GitHub's commit diff. A full six-file local replay has not been claimed.

Typst compilation, rendered layout inspection and new balance simulations have not been performed. The playtest branch and PDFs remain untouched. Final merge is a separately confirmed squash into review/simplicity-flow, not main.
