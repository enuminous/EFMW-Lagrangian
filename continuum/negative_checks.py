#!/usr/bin/env python3
"""The bridge must reject wrong real derivatives and forbidden proof dependencies."""
import os
from pathlib import Path
import subprocess
import tempfile

ROOT = Path(__file__).resolve().parent
LAKE = os.environ.get('EFMW_LAKE', 'lake')


def main():
    audit = (ROOT / 'Audit.lean').read_text()
    marker = 'open Lean in\nrun_cmd do'
    assert audit.count(marker) == 1
    cases = [
        ('custom axiom', 'axiom EFMWContinuum.auditProbe : False', 'auditProbe'),
        ('private axiom', 'namespace EFMWContinuum\nprivate axiom auditProbe : False\nend EFMWContinuum', 'auditProbe'),
        ('placeholder', 'theorem EFMWContinuum.auditProbe : False := by sorry', 'sorryAx'),
        ('native oracle', 'theorem EFMWContinuum.auditProbe : (1 : Nat) = 1 := by native_decide', 'Lean.ofReduceBool'),
    ]
    with tempfile.TemporaryDirectory(prefix='AuditProbe_', dir=ROOT) as tmp:
        probe = Path(tmp) / 'Probe.lean'
        for label, decl, expected in cases:
            probe.write_text(audit.replace(marker, decl + '\n\n' + marker))
            r = subprocess.run([LAKE, 'env', 'lean', str(probe)], cwd=ROOT,
                               text=True, capture_output=True, timeout=180)
            log = r.stdout + r.stderr
            if r.returncode == 0 or 'Unapproved axiom' not in log or expected not in log:
                raise RuntimeError(f'Wrong rejection for {label}:\n{log}')
            print('PASS: rejected ' + label)
        probe.write_text('''import EFMWContinuum.Realization
open EFMWLagrangian EFMWContinuum
example : HasDerivAt (fun x : ℝ => realValue (Function.update (fun _ => (1 : ℝ)) 0 x) [(1,[0,0])]) 1 1 := by
  exact realValue_hasDerivAt (fun _ => (1 : ℝ)) 0 [(1,[0,0])]
''')
        r = subprocess.run([LAKE, 'env', 'lean', str(probe)], cwd=ROOT,
                           text=True, capture_output=True, timeout=180)
        log = r.stdout + r.stderr
        if r.returncode == 0 or 'type mismatch' not in log.lower():
            raise RuntimeError('Wrong derivative was accepted or failed for an unrelated reason:\n' + log)
        print('PASS: rejected false real derivative (square at 1 cannot have derivative 1)')


if __name__ == '__main__':
    main()
