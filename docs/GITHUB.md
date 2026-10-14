# GitHub verification and publication

The repository is [enuminous/EFMW-Lagrangian](https://github.com/enuminous/EFMW-Lagrangian).

1. Push a revision, open a pull request, or choose **Run workflow** under [Verify candidate and Lean certificates](https://github.com/enuminous/EFMW-Lagrangian/actions/workflows/verify.yml).
2. Inspect that workflow's result for the exact commit. A local build record or successful Pages deployment is not a substitute for the remote verification run.
3. Open the run summary and download `verification-<commit>-<attempt>` for fresh stage logs, `build_status.json`, and `ci_environment.json`. Artifacts are retained for 90 days.
4. Require all verifier stages and the deterministic-regeneration check to pass. A failed stage must be diagnosed; do not change the frozen candidate to remove failures. A revised model needs a new version, source comparison, and build record.
5. Pages can independently serve the dashboard from **Settings → Pages → Deploy from a branch → main → /(root)**. The dashboard and relative links also work offline.

For a new source ZIP, rerun verification and the packaging commands in [REPRODUCIBILITY.md](REPRODUCIBILITY.md). The historical authoring logs disclose their explicit-path launcher; GitHub CI uses ordinary upstream elan, Lake, and Lean. No GitHub token is needed to reproduce the mathematical audit locally.

Keep [FORMAL_SCOPE.md](FORMAL_SCOPE.md) and [PHYSICAL_OBLIGATIONS.md](PHYSICAL_OBLIGATIONS.md) visible. Successful finite polynomial verification does not establish full continuum variation, PDE existence, or physical validity.
