# Reproducibility

The canonical command is `python3 scripts/verify.py --clean`, with Lean 4.28.0 installed through elan and Python >=3.10. No Mathlib download or cache is needed. The lake manifest contains no external packages.

The source snapshot is checked against Git blob SHA-1 and recorded with SHA-256. Five definition/normalization files are frozen by candidate/FREEZE.json. `scripts/freeze.py` verifies this lock and refuses to replace it. A changed mathematical candidate needs a new version.

`scripts/audit.py` is deterministic: it parses the preserved catalogue, independently generates the C1 action per triplet, differentiates the polynomial potential and emits line-level audit records and Lean inputs. It does not inspect a test dataset or select successful examples. It fails on unknown syntax, missing or duplicate triplets, or unexpected scalar magnitude mismatches.

The proof of a normalized scalar magnitude equality is conditional on the explicitly recorded source coefficient map. The same parsed content is not used to construct the action. Lean repeats monomial differentiation independently over doubled integer polynomials.

The complete verifier produces individual logs and a build_status.json that records exit codes, the launcher route, theorem counts, and hashes of Lean source files. A failed stage yields overall FAIL. It never reports a generated-but-uncompiled proof as verified.

## GitHub Actions portability gate

[Verify candidate and Lean certificates](https://github.com/enuminous/EFMW-Lagrangian/actions/workflows/verify.yml) runs the canonical verifier on pushes, pull requests, and manual dispatch. The job uses GitHub-hosted Ubuntu 24.04, Python 3.12, a checksum-pinned elan 4.2.4 installer, and the standard Lean 4.28.0 toolchain named in `lean-toolchain`. Actions are pinned to commit SHAs. No external Lean packages or compiled-proof caches are restored.

Every run checks the candidate lock and historical source blobs, regenerates all audit rows and certificate inputs, runs Python regressions, compiles Lean, audits transitive axioms, invokes `leanchecker`, and runs the deliberate-failure tests. A final comparison rejects drift in the tracked audit data, proof sources, frozen definitions, or toolchain configuration. A failure remains a failed workflow; uploading logs does not turn it into a pass.

The committed `verification/build_status.json` and logs remain the historical authoring record. CI clears those outputs in its disposable checkout before setup, then uploads only its fresh status and logs, plus source manifests, in `verification-<commit>-<attempt>`. `ci_environment.json` identifies the checked-out commit, run URL, attempt, toolchain, and runner. Artifacts are retained for 90 days; the Actions run and its exact commit are the evidence of the remote result. If setup fails before verification, no historical PASS is presented as a new result.

The job has read-only repository permissions and never commits regenerated evidence. Pages deployment is separate from this mathematical verification. A green run establishes reproducibility of the finite certificate layer with the standard launcher, not independent empirical validation or a continuum theorem.

## Authoring-environment compatibility

The ordinary installed Lean executable attempts to read `/proc/<pid>/exe`; that numbered path was unavailable in the authoring environment. Lake itself supported an explicit toolchain location. A separate C launcher used the public Lean initialization/search-path/frontend entry points with a caller-supplied library root. The compiler and kernel shared libraries were not modified.

The launcher is optional, source-only, and is **not** used by the GitHub CI. `tools/lean_explicit_path.c` and `tools/EXPLICIT_PATH_LAUNCHER.md` document its narrow purpose. The normal toolchain remains the portability gate.

## Output portability

- No absolute authoring paths are required by the project source or normal build commands.
- The dashboard embeds its audit data and needs no server or network.
- Generated `.olean`/C caches and toolchain binaries are excluded from the ZIP.
- The original build logs may contain historical absolute paths as evidence; those paths are not configuration.
- All 585 source rows remain inspectable as JSON and CSV, independently of the dashboard.

## Make the source archive

After a successful verification, run `python3 scripts/render_dashboard.py` and `python3 scripts/package.py`. The latter writes `MANIFEST.sha256`, creates the ZIP beside the project directory, excludes build caches and temporary probes, and verifies every archived content hash. ZIP entry order, timestamps and permissions are fixed; unchanged input files produce the same archive bytes. Verification logs themselves include real run timestamps.

## Verification boundary

`leanchecker` rechecks the compiled declarations. The package's transitive axiom guard additionally rejects custom axioms, placeholders and native reduction oracles. The included negative tests ensure that failures are detected for the intended reason.

This verifies the Lean certificate layer. It does not eliminate the unformalized source-parser/meaning bridge, nor certify an empirical model. Those limitations are part of the audit, not build failures.
