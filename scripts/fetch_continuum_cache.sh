#!/usr/bin/env bash
# Run from continuum/. Keep successful downloads when retrying a stalled transfer.
# The pinned Mathlib client predates upstream #45096's transfer timeouts.
set -euo pipefail

for attempt in 1 2; do
  echo "Mathlib cache download attempt ${attempt}/2 (8 minute limit)"
  # GNU timeout terminates the process group, including curl; force termination
  # if a child ignores TERM. A retry starts new Lake/curl processes.
  if timeout --kill-after=15s 8m lake exe cache get "$@"; then
    exit 0
  else
    status=$?
  fi
  echo "Mathlib cache download attempt ${attempt} failed (exit ${status})" >&2
done

echo "Mathlib cache acquisition failed; compilation has not started." >&2
exit "$status"
