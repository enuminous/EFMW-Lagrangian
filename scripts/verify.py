#!/usr/bin/env python3
"""One reproducible verification entry point; failure never becomes a pass."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys
from datetime import datetime, timezone

ROOT=Path(__file__).resolve().parents[1]

def main():
    parser=argparse.ArgumentParser()
    parser.add_argument('--clean',action='store_true')
    parser.add_argument('--launcher-note',default='Standard Lean/Lake installation')
    args=parser.parse_args()
    out=ROOT/'verification';out.mkdir(exist_ok=True)
    if args.clean and (ROOT/'.lake/build').exists():shutil.rmtree(ROOT/'.lake/build')
    lake=os.environ.get('EFMW_LAKE','lake')
    stages=[('candidate_lock',[sys.executable,'scripts/freeze.py']),
            ('audit',[sys.executable,'scripts/audit.py']),
            ('python_tests',[sys.executable,'-m','unittest','discover','-s','tests','-v']),
            ('lean_version',[lake,'env','lean','--version']),
            ('lean_build',[lake,'build']),
            ('axiom_audit',[lake,'env','lean','Audit.lean']),
            ('leanchecker',[lake,'env','leanchecker','-v','EFMWLagrangian']),
            ('negative_checks',[sys.executable,'scripts/check_axiom_guard.py'])]
    status={'candidate':'EFMW-LAGRANGIAN-C1','started_utc':datetime.now(timezone.utc).isoformat(),
            'launcher':args.launcher_note,'stages':[],'overall':'IN_PROGRESS',
            'formal_scope':'Finite integer-polynomial derivative and mismatch certificates; not continuum physics or a PDE existence proof.'}
    for name,cmd in stages:
        print('Running '+name,flush=True)
        try:
            r=subprocess.run(cmd,cwd=ROOT,text=True,capture_output=True,timeout=300)
            log=r.stdout+r.stderr;code=r.returncode
        except (OSError,subprocess.TimeoutExpired) as e:
            log=str(e);code=-1
        (out/(name+'.log')).write_text(log)
        status['stages'].append({'name':name,'exit_code':code,'status':'PASS' if code==0 else 'FAIL','log':name+'.log'})
        if name=='axiom_audit' and code==0:
            m=re.search(r'(\d+) safe declarations; (\d+) theorem declarations',log)
            if m:status['safe_declarations'],status['theorem_declarations']=map(int,m.groups())
        if code:
            status['overall']='FAIL'
            (out/'build_status.json').write_text(json.dumps(status,indent=2)+'\n')
            print(log);return 1
        print(name+': PASS',flush=True)
    status['overall']='PASS'
    status['completed_utc']=datetime.now(timezone.utc).isoformat()
    proof_sources=[ROOT/'Audit.lean',ROOT/'EFMWLagrangian.lean',
                   *sorted((ROOT/'EFMWLagrangian').rglob('*.lean'))]
    status['source_hashes']={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest()
                             for p in proof_sources}
    (out/'build_status.json').write_text(json.dumps(status,indent=2)+'\n')
    print('Verification PASS; '+str(status.get('theorem_declarations','?'))+' theorem declarations inspected.')
    return 0

if __name__=='__main__':raise SystemExit(main())
