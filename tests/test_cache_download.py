"""Exercise recovery, persistent failures and actual process-group timeouts offline."""
import os
from pathlib import Path
import shutil
import subprocess
import tempfile
import unittest


SCRIPT = Path(__file__).resolve().parents[1] / "scripts/fetch_continuum_cache.sh"


class CacheDownloadTests(unittest.TestCase):
    def run_case(self, mode):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            # Shorten the production deadlines while exercising real GNU timeout.
            timeout = shutil.which("timeout")
            self.assertIsNotNone(timeout)
            (root / "timeout").write_text(
                '#!/usr/bin/env python3\n'
                'import os, sys\n'
                'assert sys.argv[1:3] == ["--kill-after=15s", "8m"]\n'
                f'os.execv({timeout!r}, [{timeout!r}, "--kill-after=0.1s", "0.3s"] + sys.argv[3:])\n'
            )
            (root / "lake").write_text(
                '#!/usr/bin/env python3\n'
                'import os, pathlib, subprocess, sys\n'
                'assert sys.argv[1:] == ["exe", "cache", "get", "Mathlib.Tactic.Ring"]\n'
                'p = pathlib.Path("attempts")\n'
                'n = int(p.read_text()) + 1 if p.exists() else 1\n'
                'p.write_text(str(n))\n'
                'mode = os.environ["TEST_MODE"]\n'
                'if mode == "stall" or (mode == "recover" and n == 1):\n'
                '    subprocess.run([sys.executable, "-c", "import time; time.sleep(1); open(\\\"escaped-child\\\", \\\"w\\\").close()"], check=True)\n'
                'sys.exit(7 if mode == "fail" else 0)\n'
            )
            for name in ("timeout", "lake"):
                (root / name).chmod(0o755)
            env = {**os.environ, "PATH": str(root) + os.pathsep + os.environ["PATH"], "TEST_MODE": mode}
            result = subprocess.run(
                ["bash", "-o", "pipefail", "-c", 'bash "$1" Mathlib.Tactic.Ring 2>&1 | tee download.log', "test", str(SCRIPT)],
                cwd=root, env=env, text=True, capture_output=True, timeout=5,
            )
            # Give any improperly detached download child time to expose itself.
            subprocess.run(["sleep", "1.1"], check=True)
            self.assertFalse((root / "escaped-child").exists())
            return result, int((root / "attempts").read_text())

    def test_success_needs_one_attempt(self):
        result, attempts = self.run_case("success")
        self.assertEqual((result.returncode, attempts), (0, 1))

    def test_stall_recovers_on_fresh_attempt(self):
        result, attempts = self.run_case("recover")
        self.assertEqual((result.returncode, attempts), (0, 2))
        self.assertIn("exit 124", result.stdout)

    def test_persistent_stall_fails_through_tee(self):
        result, attempts = self.run_case("stall")
        self.assertEqual((result.returncode, attempts), (124, 2))

    def test_persistent_error_is_not_hidden(self):
        result, attempts = self.run_case("fail")
        self.assertEqual((result.returncode, attempts), (7, 2))


if __name__ == "__main__":
    unittest.main()
