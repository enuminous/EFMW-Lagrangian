#!/usr/bin/env python3
"""Build a dependency-free, offline view of the auditable source records."""
import json
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]
data={name:json.loads((ROOT/path).read_text()) for name,path in {
    'summary':'audit/summary.json', 'rows':'audit/equations.json',
    'build':'verification/build_status.json',
    'certificates':'audit/lean_certificate_index.json'}.items()}
payload=json.dumps(data,ensure_ascii=False,separators=(',',':')).replace('<','\\u003c')
template=(ROOT/'assets/dashboard.template.html').read_text()
assert template.count('__AUDIT_DATA__')==1
(ROOT/'index.html').write_text(template.replace('__AUDIT_DATA__',payload))
print(f'Dashboard: {len(data["rows"])} statements; verification {data["build"]["overall"]}.')
