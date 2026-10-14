#!/usr/bin/env python3
"""Create a deterministic GitHub-ready source ZIP and verify its manifest."""
import argparse
import hashlib
from pathlib import Path
import zipfile

ROOT=Path(__file__).resolve().parents[1]
EXCLUDED={'.git','.lake','__pycache__','dist','.DS_Store'}

def included(path):
    rel=path.relative_to(ROOT)
    return not any(p in EXCLUDED or p.startswith('AuditProbe_') for p in rel.parts) and path.suffix not in {'.pyc','.olean','.ilean','.o'}

def main():
    parser=argparse.ArgumentParser()
    parser.add_argument('--output',type=Path,default=ROOT.parent/(ROOT.name+'.zip'))
    args=parser.parse_args()
    output=args.output.resolve()
    if output.is_relative_to(ROOT):raise SystemExit('Put the ZIP outside the project directory.')
    files=sorted(p for p in ROOT.rglob('*') if p.is_file() and included(p) and p.name!='MANIFEST.sha256')
    if any(p.is_symlink() for p in files):raise SystemExit('Refusing to archive symlinks.')
    manifest=''.join(f'{hashlib.sha256(p.read_bytes()).hexdigest()}  {p.relative_to(ROOT).as_posix()}\n' for p in files)
    manifest_path=ROOT/'MANIFEST.sha256';manifest_path.write_text(manifest)
    files.append(manifest_path)
    output.parent.mkdir(parents=True,exist_ok=True)
    with zipfile.ZipFile(output,'w',compression=zipfile.ZIP_DEFLATED,compresslevel=9) as z:
        for p in sorted(files):
            info=zipfile.ZipInfo(ROOT.name+'/'+p.relative_to(ROOT).as_posix(),date_time=(2026,10,14,0,0,0))
            info.compress_type=zipfile.ZIP_DEFLATED;info.create_system=3;info.external_attr=0o100644<<16
            z.writestr(info,p.read_bytes())
    with zipfile.ZipFile(output) as z:
        assert z.testzip() is None
        for line in manifest.splitlines():
            digest,name=line.split('  ',1)
            assert hashlib.sha256(z.read(ROOT.name+'/'+name)).hexdigest()==digest,name
        assert len(z.namelist())==len(files)
    print(f'{output}\n{len(files)} files, {output.stat().st_size} bytes; all archived SHA-256 hashes verified.')
    print('ZIP SHA-256: '+hashlib.sha256(output.read_bytes()).hexdigest())

if __name__=='__main__':main()
