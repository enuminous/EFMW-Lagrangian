import Std

set_option maxRecDepth 20000
set_option maxHeartbeats 0

/-!
Finite formal polynomial certificate layer for EFMW-LAGRANGIAN-C1.
Coefficients are integers because generated potentials are doubled.
This module does NOT formalize smooth manifolds, functional variation,
integration by parts, PDE solutions, or the physical interpretation of fields.
-/
namespace EFMWLagrangian

abbrev Term := Int × List Nat
abbrev Poly := List Term

def insertNat (n : Nat) : List Nat → List Nat
  | [] => [n]
  | a :: as => if n ≤ a then n :: a :: as else a :: insertNat n as
def sortNat : List Nat → List Nat
  | [] => []
  | a :: as => insertNat a (sortNat as)
def lexLE : List Nat → List Nat → Bool
  | [], _ => true
  | _ :: _, [] => false
  | a :: as, b :: bs => if a == b then lexLE as bs else a < b
def insertSortedTerm (t : Term) : Poly → Poly
  | [] => [t]
  | a :: as => if lexLE t.2 a.2 then t :: a :: as else a :: insertSortedTerm t as
def sortTerms : Poly → Poly
  | [] => []
  | a :: as => insertSortedTerm a (sortTerms as)

def addTerm (t : Term) : Poly → Poly
  | [] => [t]
  | u :: us => if t.2 == u.2 then (t.1 + u.1, t.2) :: us else u :: addTerm t us

def normalize (p : Poly) : Poly :=
  let p := p.map fun (c, m) => (c, sortNat m)
  let combined := p.foldl (fun acc t => addTerm t acc) []
  sortTerms (combined.filter fun t => t.1 != 0)

def derivTerm (v : Nat) (t : Term) : Term :=
  (t.1 * Int.ofNat (t.2.count v), t.2.erase v)

def deriv (v : Nat) (p : Poly) : Poly := p.map (derivTerm v)
def negate (p : Poly) : Poly := p.map fun (c, m) => (-c, m)

def evalTerm (values : Nat → Int) (t : Term) : Int :=
  t.1 * (t.2.map values).foldl (· * ·) 1
def eval (values : Nat → Int) (p : Poly) : Int := (p.map (evalTerm values)).sum

/-- Equality of canonical forms implies equality of evaluations of those forms.
No claim about continuous differentiation is hidden in this bridge. -/
theorem canonical_evaluations_equal (p q : Poly) (h : normalize p = normalize q)
    (values : Nat → Int) : eval values (normalize p) = eval values (normalize q) := by
  rw [h]

theorem square_derivative : normalize (deriv 0 [(1, [0,0])]) = [(2,[0])] := by decide +kernel
theorem cube_derivative : normalize (deriv 0 [(1, [0,0,0])]) = [(3,[0,0])] := by decide +kernel
theorem independent_atom_derivative : normalize (deriv 0 [(7, [1,2])]) = [] := by decide +kernel
theorem pair_reciprocity :
    normalize (deriv 1 (deriv 0 [(2, [0,1,4])])) =
    normalize (deriv 0 (deriv 1 [(2, [0,1,4])])) := by decide +kernel
theorem triple_reciprocity :
    normalize (deriv 2 (deriv 0 [(2, [0,1,2,4])])) =
    normalize (deriv 0 (deriv 2 [(2, [0,1,2,4])])) := by decide +kernel

/-- Source sign is a real algebraic obligation, not a change of notation. -/
theorem potential_sign_incompatible (box source : Int) (hs : source ≠ 0)
    (h : box - source = 0) : box + source ≠ 0 := by omega

theorem root_equation_iff (lap time source : Int) :
    lap - time - source = 0 ↔ lap - time = source := by omega

/-- Twice the nonminimal stress (xi*phi^2*R) regrouping, represented formally.
Atoms: coefficient a=0, Ricci component=1, metric=2, R=3,
and derivative contribution D=4. This is an algebraic regrouping only. -/
theorem nonminimal_stress_regrouping :
    normalize [(2,[0,1]),(-1,[0,2,3]),(2,[4])] =
    normalize [(2,[4]),(-1,[3,2,0]),(2,[1,0])] := by decide +kernel

def triplets : List (Nat × Nat × Nat) :=
  (List.range 11).flatMap fun i =>
    (List.range 11).flatMap fun j =>
      ((List.range 11).filter fun k => i < j && j < k).map fun k => (i,j,k)

theorem triplet_count : triplets.length = 165 := by decide +kernel
theorem scalar_equation_count : 8 * 45 = 360 := by decide +kernel
theorem total_equation_count : 45 + 90 + 90 + 360 = 585 := by decide +kernel
theorem scalar_triplet_count : 8 * 7 * 6 / 6 = 56 := by decide +kernel
theorem every_sector_incidence :
    ((List.range 11).map fun a =>
      (triplets.filter fun (i,j,k) => a == i || a == j || a == k).length) =
    List.replicate 11 45 := by decide +kernel

end EFMWLagrangian
