#!/usr/bin/env python3
"""Replay every bridge module with declarations, sequentially to bound memory use."""
import os
from pathlib import Path
import subprocess

ROOT = Path(__file__).resolve().parent
LAKE = os.environ.get('EFMW_LAKE', 'lake')


def main():
    # leanchecker on a namespace launches every matching module concurrently.
    # Each imports Mathlib; separate processes avoid multiplying that memory.
    paths = sorted((ROOT / 'EFMWContinuum').rglob('*.lean'))
    modules = [str(p.relative_to(ROOT).with_suffix('')).replace('/', '.') for p in paths]
    root_lines = [line.strip() for line in (ROOT / 'EFMWContinuum.lean').read_text().splitlines()
                  if line.strip()]
    if not modules or not root_lines or any(not line.startswith('import ')
                          or line.removeprefix('import ') not in modules for line in root_lines):
        raise RuntimeError('The root must contain only imports of checked bridge modules')
    for module in modules:
        print('Checking ' + module, flush=True)
        subprocess.run([LAKE, 'env', 'leanchecker', '-v', module], cwd=ROOT,
                       check=True, timeout=180)
    print(f'PASS: replayed all {len(modules)} bridge modules; root contains imports only.', flush=True)


if __name__ == '__main__':
    main()
