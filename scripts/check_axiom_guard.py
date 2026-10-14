#!/usr/bin/env python3
"""Regression checks for the actual Lean axiom guard and scalar certificates."""
from pathlib import Path
import os
import subprocess
import tempfile

ROOT=Path(__file__).resolve().parents[1]
LAKE=os.environ.get('EFMW_LAKE','lake')

def run():
    source=(ROOT/'Audit.lean').read_text()
    marker='open Lean in\nrun_cmd do'
    assert source.count(marker)==1
    cases=[
      ('public axiom','axiom EFMWLagrangian.auditProbe : False','auditProbe'),
      ('private axiom','namespace EFMWLagrangian\nprivate axiom auditProbe : False\nend EFMWLagrangian','auditProbe'),
      ('placeholder','theorem EFMWLagrangian.auditProbe : False := by sorry','sorryAx'),
      ('native proof','theorem EFMWLagrangian.auditProbe : (1 : Nat) = 1 := by native_decide','Lean.ofReduceBool'),
    ]
    messages=[]
    with tempfile.TemporaryDirectory(prefix='AuditProbe_',dir=ROOT) as tmp:
        probe=Path(tmp)/'Probe.lean'
        for label,decl,expected in cases:
            probe.write_text(source.replace(marker,decl+'\n\n'+marker))
            r=subprocess.run([LAKE,'env','lean',str(probe)],cwd=ROOT,text=True,capture_output=True,timeout=90)
            out=r.stdout+r.stderr
            if r.returncode==0 or 'Unapproved axiom' not in out or expected not in out:
                raise RuntimeError(f'Guard did not reject {label} for the expected reason:\n{out}')
            messages.append(f'PASS: guard rejected {label}; expected dependency {expected}.')
        probe.write_text('import EFMWLagrangian.Core\nopen EFMWLagrangian\nexample : normalize (deriv 0 [(1,[0,0])]) = [(1,[0])] := by decide +kernel\n')
        r=subprocess.run([LAKE,'env','lean',str(probe)],cwd=ROOT,text=True,capture_output=True,timeout=90)
        if r.returncode==0 or 'decide' not in (r.stdout+r.stderr) or 'false' not in (r.stdout+r.stderr).lower():
            raise RuntimeError('Kernel accepted a wrong derivative or failed for an unrelated reason:\n'+r.stdout+r.stderr)
        messages.append('PASS: kernel rejected deliberately incorrect square derivative.')
    text='\n'.join(messages)+'\n'
    (ROOT/'verification').mkdir(exist_ok=True)
    (ROOT/'verification/negative_checks.log').write_text(text)
    print(text,end='')

if __name__=='__main__':run()
