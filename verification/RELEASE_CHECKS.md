# Release checks

The source archive was extracted into a new empty directory and the entire verifier was run there with `--clean`. All eight stages passed: candidate lock, exhaustive audit, Python regressions, Lean version, Lean build, transitive axiom audit, compiled-environment recheck, and deliberate-failure tests. The same documented explicit-path launcher and unmodified Lean 4.28.0 libraries were used. This is a clean-extraction build, not a claim that remote GitHub CI has run.

The extracted build's 17 Lean source hashes agree with the original successful build. Its status is preserved in `fresh_extraction_build_status.json`; the original detailed stage logs are in this directory. Both runs inspected 2,024 safe declarations and 1,467 theorem declarations, including compiler-generated equation lemmas. The intended scalar certificate count remains 720.

Further checks completed:

- Regenerating all audit data and generated Lean modules was byte-identical.
- All 585 dashboard rows loaded into the inline JavaScript logic; scalar filtering returned 360, incompatible-current filtering 88, and the E-F-M search four.
- Every dashboard document and certificate link resolved to an included local file.
- Dashboard JavaScript was checked with a DOM stub. Browser rendering was not tested because a browser executable was unavailable.
- The package command validated every archived SHA-256 content hash, ZIP integrity and file count. Build caches, toolchain binaries and negative-test probes are excluded.

These checks establish the packaged computational record. They do not extend the formal or physical scope described in `docs/FORMAL_SCOPE.md` and `docs/PHYSICAL_OBLIGATIONS.md`.
