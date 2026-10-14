import EFMWLagrangian.Core
import Mathlib.Analysis.Calculus.Deriv.Mul
import Mathlib.Analysis.Calculus.Deriv.Add
import Mathlib.Algebra.BigOperators.Group.List.Basic
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Convert

/-! Real semantics for the unchanged finite C1 polynomial syntax. -/
noncomputable section

namespace EFMWContinuum
open EFMWLagrangian

def monomial (values : Nat → ℝ) (m : List Nat) : ℝ := (m.map values).prod
def termValue (values : Nat → ℝ) (t : Term) : ℝ := (t.1 : ℝ) * monomial values t.2
def realValue (values : Nat → ℝ) (p : Poly) : ℝ := (p.map (termValue values)).sum

@[simp] theorem monomial_nil (values : Nat → ℝ) : monomial values [] = 1 := rfl
@[simp] theorem monomial_cons (values : Nat → ℝ) (a : Nat) (m : List Nat) :
    monomial values (a :: m) = values a * monomial values m := rfl
@[simp] theorem realValue_nil (values : Nat → ℝ) : realValue values [] = 0 := rfl
@[simp] theorem realValue_cons (values : Nat → ℝ) (t : Term) (p : Poly) :
    realValue values (t :: p) = termValue values t + realValue values p := rfl

theorem monomial_insertNat (values : Nat → ℝ) (a : Nat) (m : List Nat) :
    monomial values (insertNat a m) = values a * monomial values m := by
  induction m with
  | nil => simp [insertNat]
  | cons b m ih =>
    simp only [insertNat]
    split
    · simp
    · simp [ih, mul_left_comm]

theorem monomial_sortNat (values : Nat → ℝ) (m : List Nat) :
    monomial values (sortNat m) = monomial values m := by
  induction m with
  | nil => rfl
  | cons a m ih => simpa [sortNat, monomial_insertNat] using congrArg (values a * ·) ih

theorem realValue_insertSortedTerm (values : Nat → ℝ) (t : Term) (p : Poly) :
    realValue values (insertSortedTerm t p) = termValue values t + realValue values p := by
  induction p with
  | nil => simp [insertSortedTerm]
  | cons u p ih =>
    simp only [insertSortedTerm]
    split
    · simp
    · simp [ih, add_left_comm]

theorem realValue_sortTerms (values : Nat → ℝ) (p : Poly) :
    realValue values (sortTerms p) = realValue values p := by
  induction p with
  | nil => rfl
  | cons t p ih => simp [sortTerms, realValue_insertSortedTerm, ih]

theorem realValue_addTerm (values : Nat → ℝ) (t : Term) (p : Poly) :
    realValue values (addTerm t p) = termValue values t + realValue values p := by
  induction p with
  | nil => simp [addTerm]
  | cons u p ih =>
    simp only [addTerm]
    split
    · rename_i h
      have hm : t.2 = u.2 := by simpa using h
      simp [termValue, hm, Int.cast_add, add_mul, add_assoc]
    · simp [ih, add_left_comm]

theorem realValue_fold_addTerm (values : Nat → ℝ) (p acc : Poly) :
    realValue values (p.foldl (fun q t => addTerm t q) acc) =
      realValue values p + realValue values acc := by
  induction p generalizing acc with
  | nil => simp
  | cons t p ih => simp [List.foldl, ih, realValue_addTerm, add_assoc, add_left_comm]

theorem realValue_filter_nonzero (values : Nat → ℝ) (p : Poly) :
    realValue values (p.filter fun t => t.1 != 0) = realValue values p := by
  induction p with
  | nil => rfl
  | cons t p ih =>
    by_cases h : t.1 = 0
    · simp [h, termValue, ih]
    · simp [h, ih]

theorem realValue_sort_monomials (values : Nat → ℝ) (p : Poly) :
    realValue values (p.map fun (c, m) => (c, sortNat m)) = realValue values p := by
  induction p with
  | nil => rfl
  | cons t p ih => simp [termValue, monomial_sortNat, ih]

/-- The original normalizer preserves real-valued meaning for EVERY polynomial and valuation. -/
theorem normalize_sound (values : Nat → ℝ) (p : Poly) :
    realValue values (normalize p) = realValue values p := by
  simp [normalize, realValue_sortTerms, realValue_filter_nonzero,
    realValue_fold_addTerm, realValue_sort_monomials]

/-- This transports the finite certificate to the original, unnormalized real functions. -/
theorem certificate_real_equality (p q : Poly) (h : normalize p = normalize q)
    (values : Nat → ℝ) : realValue values p = realValue values q := by
  rw [← normalize_sound values p, h, normalize_sound]

theorem count_mul_monomial (values : Nat → ℝ) (v : Nat) (m : List Nat) :
    (m.count v : ℝ) * monomial values m =
      values v * ((m.count v : ℝ) * monomial values (m.erase v)) := by
  by_cases h : v ∈ m
  · have hp := List.prod_map_erase values h
    change values v * monomial values (m.erase v) = monomial values m at hp
    rw [← hp]
    ring
  · simp [List.count_eq_zero.mpr h]

/-- Ordinary real derivative of a monomial when one atom varies and all others stay fixed. -/
theorem monomial_hasDerivAt (values : Nat → ℝ) (v : Nat) (m : List Nat) :
    HasDerivAt (fun x : ℝ => monomial (Function.update values v x) m)
      ((m.count v : ℝ) * monomial values (m.erase v)) (values v) := by
  induction m with
  | nil => simpa using hasDerivAt_const (values v) (1 : ℝ)
  | cons a m ih =>
    by_cases h : a = v
    · subst a
      have hd := (hasDerivAt_id (values v)).mul ih
      have hc := count_mul_monomial values v m
      convert hd using 1
      · ext x; simp
      · simp only [List.count_cons_self, Nat.cast_add, Nat.cast_one, List.erase_cons_head,
          Function.update_eq_self, one_mul, id_eq]
        nlinarith [hc]
    · have hd := (hasDerivAt_const (values v) (values a)).mul ih
      convert hd using 1
      · ext x; simp [Function.update_of_ne h]
      · simp [h, List.erase_cons_tail, Function.update_eq_self, mul_left_comm]

/-- Formal differentiation agrees with ordinary real differentiation, without a bridge axiom. -/
theorem realValue_hasDerivAt (values : Nat → ℝ) (v : Nat) (p : Poly) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values v x) p)
      (realValue values (EFMWLagrangian.deriv v p)) (values v) := by
  induction p with
  | nil => simpa [EFMWLagrangian.deriv] using hasDerivAt_const (values v) (0 : ℝ)
  | cons t p ih =>
    have ht := (monomial_hasDerivAt values v t.2).const_mul (t.1 : ℝ)
    simpa [realValue, termValue, EFMWLagrangian.deriv, derivTerm, Int.cast_mul, mul_assoc] using ht.add ih

/-- A certified doubled C1 potential has the advertised derivative after undoing doubling. -/
theorem certified_potential_hasDerivAt (p q : Poly) (v : Nat)
    (h : normalize (EFMWLagrangian.deriv v p) = normalize q) (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values v x) p / 2)
      (realValue values q / 2) (values v) := by
  have hd := (realValue_hasDerivAt values v p).div_const 2
  rwa [certificate_real_equality (EFMWLagrangian.deriv v p) q h values] at hd

end EFMWContinuum
