#!/usr/bin/env python3
"""Create once, then verify the C1 definition lock. Never updates an existing lock."""
from pathlib import Path
import hashlib
import json
import sys

ROOT=Path(__file__).resolve().parents[1]
PATHS=['candidate/CANDIDATE.md','candidate/conventions.json','src/efmw_audit/model.py',
       'src/efmw_audit/polynomial.py','src/efmw_audit/catalogue.py']

def main():
    payload={'candidate':'EFMW-LAGRANGIAN-C1','version':'1.0.0',
             'rule':'A changed locked file requires a new version; historical source hashes are verified separately.',
             'sha256':{p:hashlib.sha256((ROOT/p).read_bytes()).hexdigest() for p in PATHS}}
    path=ROOT/'candidate/FREEZE.json'
    if '--create' in sys.argv:
        if path.exists():raise SystemExit('Refusing to replace an existing candidate freeze.')
        path.write_text(json.dumps(payload,indent=2)+'\n')
        print('C1 freeze created.')
    else:
        if not path.exists() or json.loads(path.read_text())!=payload:
            raise SystemExit('Candidate definition differs from frozen C1.')
        print('C1 freeze verified.')

if __name__=='__main__':main()
