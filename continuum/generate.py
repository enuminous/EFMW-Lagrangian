#!/usr/bin/env python3
"""Instantiate the semantic and variational bridge using existing C1 certificates."""
import json
from collections import defaultdict
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent


def main():
    records = json.loads((ROOT / 'audit/lean_certificate_index.json').read_text())
    atoms = json.loads((ROOT / 'audit/lean_atom_map.json').read_text())
    if len(records) != 360 or len({r['equation_id'] for r in records}) != 360:
        raise ValueError('Expected exactly 360 distinct scalar certificates')
    chunks = defaultdict(list)
    index = []
    for row in records:
        stem = row['match_theorem'].removeprefix('EFMWLagrangian.derivative_')
        triplet, scalar = stem.rsplit('_', 1)
        v = atoms['phi_' + scalar]
        p, q = 'U2_' + triplet, 'C2_' + stem
        proof = row['match_theorem']
        chunk = row['module'].rsplit('.', 1)[1]
        chunks[chunk].append(f'''/-- Real partial derivative for {row['equation_id']}, source line {row['source_line']}. -/
theorem real_derivative_{stem} (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values {v} x) {p} / 2)
      (realValue values {q} / 2) (values {v}) :=
  certified_potential_hasDerivAt {p} {q} {v} {proof} values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_{stem} (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation {p} {q} {v} values eta)
    (hi : IBPConditions (fun x => values x {v}) eta (fun x => realValue (values x) {q} / 2)) :
    HasDerivAt (actionAlong {p} {v} values eta)
      (∫ x, (dalembertian (fun y => values y {v}) x - realValue (values x) {q} / 2) * eta x) 0 :=
  actionAlong_hasDerivAt {p} {q} {v} {proof} values eta hd hi
''')
        index.append({**row, 'atom': v,
                      'real_derivative': 'EFMWContinuum.real_derivative_' + stem,
                      'action_derivative': 'EFMWContinuum.action_derivative_' + stem,
                      'bridge_module': 'EFMWContinuum.Generated.' + chunk})
    output = HERE / 'EFMWContinuum/Generated'
    output.mkdir(parents=True, exist_ok=True)
    for chunk, bodies in sorted(chunks.items()):
        text = (f'import EFMWContinuum.ScalarVariation\n'
                f'import EFMWLagrangian.Generated.{chunk}\n\n'
                'namespace EFMWContinuum\nopen EFMWLagrangian MeasureTheory\n\n'
                + '\n'.join(bodies) + '\nend EFMWContinuum\n')
        (output / (chunk + '.lean')).write_text(text)
    (HERE / 'EFMWContinuum.lean').write_text(
        'import EFMWContinuum.ScalarVariation\n' + ''.join(
            f'import EFMWContinuum.Generated.{c}\n' for c in sorted(chunks)))
    (HERE / 'certificate_index.json').write_text(json.dumps(index, indent=2) + '\n')
    print('Generated 360 real derivative and 360 scalar action derivative theorems.')


if __name__ == '__main__':
    main()
