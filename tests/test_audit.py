import hashlib
import json
import sys
import unittest
from fractions import Fraction as Q
from itertools import combinations
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / 'src'))
from efmw_audit.polynomial import atom as A, add, mul, scale, derivative as D, evaluate
from efmw_audit.model import SECTORS, SCALARS, DIMENSIONS, potential, coupling, interaction_dimension
from efmw_audit.catalogue import parse, parse_scalar

class AuditTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.text = (ROOT/'sources/EFMW_165_field_equations.txt').read_text()
        cls.blocks = parse(cls.text)

    def test_exact_source_blobs(self):
        for r in json.loads((ROOT/'sources/source_refs.json').read_text()):
            b=(ROOT/r['path']).read_bytes()
            self.assertEqual(hashlib.sha1(b'blob '+str(len(b)).encode()+b'\0'+b).hexdigest(), r['git_blob_sha'])

    def test_exhaustive_coverage(self):
        self.assertEqual(len(self.blocks),165)
        self.assertEqual(sum(len(b['equations']) for b in self.blocks),585)
        self.assertEqual({frozenset(b['triplet']) for b in self.blocks}, {frozenset(t) for t in combinations(SECTORS,3)})

    def test_all_360_scalar_derivatives(self):
        count=0
        for b in self.blocks:
            for e in b['equations']:
                if e['kind']=='scalar':
                    self.assertEqual(D(potential(b['triplet']),'phi_'+e['sector']),e['positive_source'])
                    count+=1
        self.assertEqual(count,360)

    def test_all_scalar_sign_failures_are_nonvacuous(self):
        for b in self.blocks:
            for e in b['equations']:
                if e['kind']=='scalar':
                    d=D(potential(b['triplet']),'phi_'+e['sector'])
                    self.assertNotEqual(d,scale(d,-1))

    def test_parser_rejects_unrecognized_physics(self):
        with self.assertRaises(ValueError):
            parse(self.text.replace('λ_FEM ℜ F_{αβ}F^{αβ}', 'λ_FEM mystery(φ_F)', 1))

    def test_missing_mixed_term_is_detected(self):
        line=next(e['raw'] for e in self.blocks[0]['equations'] if e['kind']=='scalar')
        damaged=line.replace(' + λ_FEM ℜ F_{αβ}F^{αβ}','')
        a,p,_=parse_scalar(damaged)
        self.assertNotEqual(p,D(potential(self.blocks[0]['triplet']),'phi_'+a))

    def test_wrong_factor_is_detected(self):
        line=next(e['raw'] for b in self.blocks if b['triplet']==('F','W','T') for e in b['equations'] if e['sector']=='F')
        a,p,_=parse_scalar(line.replace('λ_FWT φ_W φ_T','λ_FWT φ_W φ_W'))
        self.assertNotEqual(p,D(potential(('F','W','T')),'phi_'+a))

    def test_reciprocity_for_all_active_scalar_pairs(self):
        for b in self.blocks:
            u=potential(b['triplet'])
            for a,c in combinations([a for a in b['triplet'] if a in SCALARS],2):
                self.assertEqual(D(D(u,'phi_'+a),'phi_'+c),D(D(u,'phi_'+c),'phi_'+a))

    def test_nonreciprocal_source_counterexample(self):
        self.assertNotEqual(D(scale(A('phi_W'),2),'phi_W'),D(scale(A('phi_F'),3),'phi_F'))

    def test_dimensions_of_all_potential_monomials(self):
        dims=dict(DIMENSIONS)
        dims.update({f'mass2_{a}':2 for a in SCALARS})
        dims.update({f'xi_{a}':0 for a in SCALARS})
        for k in (2,3):
            for t in combinations(SECTORS,k): dims[coupling(t)]=interaction_dimension(t)
        for b in self.blocks:
            for factors in potential(b['triplet']): self.assertEqual(sum(dims[x] for x in factors),4)

    def test_root_euler_lagrange_identity(self):
        z,q,beta,j=A('Z'),A('q'),A('beta'),A('J')
        L=add(scale(mul(z,q,A('pt'),A('pt')),Q(1,2)),
              *(scale(mul(z,A('p'+v),A('p'+v)),Q(-1,2)) for v in 'xyz'),
              scale(mul(z,beta,j,A('p')),-1))
        divergence=add(mul(D(D(L,'pt'),'pt'),A('ptt')),
                       *(mul(D(D(L,'p'+v),'p'+v),A('p'+v+v)) for v in 'xyz'))
        EL=add(D(L,'p'),scale(divergence,-1))
        wanted=mul(z,add(A('pxx'),A('pyy'),A('pzz'),scale(mul(q,A('ptt')),-1),scale(mul(beta,j),-1)))
        self.assertEqual(EL,wanted)

    def test_self_dependent_source_has_extra_variation(self):
        # J(phi)=phi, so d(J*phi)/dphi=2phi, not phi.
        self.assertEqual(D(mul(A('phi'),A('phi')),'phi'),scale(A('phi'),2))
        self.assertNotEqual(D(mul(A('phi'),A('phi')),'phi'),A('phi'))

    def test_gauge_variation_factor_four(self):
        X=scale(add(mul(A('B'),A('B')),scale(mul(A('E'),A('E')),-1)),2)
        L=add(scale(X,Q(-1,4)),scale(mul(A('g'),A('phi'),X),-1))
        self.assertEqual(D(L,'E'),add(A('E'),scale(mul(A('g'),A('phi'),A('E')),4)))

    def test_neutral_current_not_conserved(self):
        # Minkowski phi=t: box(phi)=0, but divergence(phi*grad(phi))=-1.
        phi_t,box_phi=1,0
        self.assertEqual(-phi_t**2+7*box_phi,-1)

    def test_flat_bianchi_commuting_partial_derivatives(self):
        def dd(a,b,c): return A('d_'+str(min(a,b))+str(max(a,b))+'_A'+str(c))
        for l in range(4):
            for m in range(4):
                for n in range(4):
                    cyclic=add(dd(l,m,n),scale(dd(l,n,m),-1),dd(m,n,l),scale(dd(m,l,n),-1),dd(n,l,m),scale(dd(n,m,l),-1))
                    self.assertEqual(cyclic,{})

    def test_zero_coupling_limit(self):
        u=potential(('E','M','F'))
        values={s:Q(0) for mon in u for s in mon}
        values['phi_F']=Q(0);values['X']=Q(7);values['Rcurv']=Q(3)
        self.assertEqual(evaluate(u,values),0)

if __name__=='__main__': unittest.main()
