# Publish the prepared project

1. Create an empty GitHub repository, for example `enuminous/EFMW-Lagrangian-Audit`.
2. Extract the ZIP. Upload the contents of its `EFMW-Lagrangian-Audit` directory, including `.github/workflows/verify.yml`.
3. Wait for the **Verify candidate and Lean certificates** workflow. A local build record is not a substitute for this first remote run.
4. For the dashboard, select **Settings → Pages → Deploy from a branch → main → /(root)**, then save.

The dashboard and relative links are independent of the eventual repository name. Do not change the frozen candidate to remove failures. A revised model must have a new version, source comparison and build record.

This archive was prepared without creating, pushing or publishing a remote repository. No GitHub account token is needed to reproduce the local mathematical audit.
