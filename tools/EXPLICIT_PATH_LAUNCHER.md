# Optional authoring-environment launcher

Normal users and GitHub CI should use the standard Lean 4.28.0 toolchain. This optional Linux C frontend is included only to make the recorded authoring build reproducible in environments where numbered `/proc/<pid>/exe` lookup is unavailable.

It calls the installed Lean initialization, explicit search-path, option-processing and frontend APIs. It does not modify the kernel, proof rules, standard library, compiler libraries or filesystem access controls. It implements the subset of launcher options required by this project's build. It is not a complete replacement for the upstream CLI and is not a separately verified program.

Set `EFMW_LEAN_LIBRARY_ROOT` to an existing, trusted Lean **4.28.0** installation, and `EFMW_EXPLICIT_TOOLCHAIN` to an empty scratch directory. Example setup, executed from the project root:

```sh
export EFMW_LEAN_LIBRARY_ROOT="/path/to/lean-4.28.0"
export EFMW_EXPLICIT_TOOLCHAIN="/path/to/empty/scratch/toolchain"
mkdir -p "$EFMW_EXPLICIT_TOOLCHAIN/bin"
cc tools/lean_explicit_path.c -o "$EFMW_EXPLICIT_TOOLCHAIN/bin/lean" \
  -I"$EFMW_LEAN_LIBRARY_ROOT/include" -L"$EFMW_LEAN_LIBRARY_ROOT/lib/lean" \
  -Wl,-rpath,"$EFMW_LEAN_LIBRARY_ROOT/lib/lean" -lleanshared
for item in lib include src share; do
  ln -s "$EFMW_LEAN_LIBRARY_ROOT/$item" "$EFMW_EXPLICIT_TOOLCHAIN/$item"
done
for executable in "$EFMW_LEAN_LIBRARY_ROOT"/bin/*; do
  name="${executable##*/}"
  if [ "$name" != lean ]; then
    ln -s "$executable" "$EFMW_EXPLICIT_TOOLCHAIN/bin/$name"
  fi
done
export LEAN_SYSROOT="$EFMW_EXPLICIT_TOOLCHAIN"
export LAKE_HOME="$EFMW_LEAN_LIBRARY_ROOT/src/lean/lake"
export EFMW_LAKE="$EFMW_LEAN_LIBRARY_ROOT/bin/lake"
python3 scripts/verify.py --clean \
  --launcher-note "Lean 4.28.0 upstream frontend and kernel libraries; optional explicit-path C launcher."
```

The build logs and `verification/build_status.json` disclose which route was used. Successful verification in this environment is not a claim that the GitHub workflow has already run. The normal upstream launcher remains the remote CI portability check.
