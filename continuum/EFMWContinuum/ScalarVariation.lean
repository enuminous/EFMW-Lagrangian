import EFMWContinuum.Realization
import Mathlib.Analysis.Calculus.Deriv.Comp
import Mathlib.Analysis.Calculus.LineDeriv.IntegrationByParts
import Mathlib.Analysis.Calculus.ParametricIntegral
import Mathlib.Analysis.Distribution.AEEqOfIntegralContDiff

/-!
The scalar variational bridge on fixed Minkowski spacetime. All measures are genuine
Lebesgue integrals and all derivatives are Mathlib's real/Fréchet derivatives.
Regularity, integrability, and dominated-variation hypotheses are explicit.
This does not vary the metric or gauge fields, prove PDE existence, or identify physics.
-/
namespace EFMWContinuum
open EFMWLagrangian MeasureTheory Filter
open scoped BigOperators Topology

abbrev Spacetime := Fin 4 → ℝ
def signature (i : Fin 4) : ℝ := if i = 0 then -1 else 1
def direction (i : Fin 4) : Spacetime := Pi.single i 1
def partial (i : Fin 4) (f : Spacetime → ℝ) (x : Spacetime) : ℝ :=
  fderiv ℝ f x (direction i)
def dalembertian (f : Spacetime → ℝ) (x : Spacetime) : ℝ :=
  ∑ i, signature i * partial i (partial i f) x

def scalarDensity (p : Poly) (values : Nat → ℝ) (jet : Fin 4 → ℝ) : ℝ :=
  -(∑ i, signature i * (jet i * jet i)) / 2 - realValue values p / 2

def densityAlong (p : Poly) (v : Nat) (values : Nat → ℝ)
    (jet deltaJet : Fin 4 → ℝ) (eta epsilon : ℝ) : ℝ :=
  scalarDensity p (Function.update values v (values v + epsilon * eta))
    (fun i => jet i + epsilon * deltaJet i)

def variationDensity (force : ℝ) (jet deltaJet : Fin 4 → ℝ) (eta : ℝ) : ℝ :=
  (∑ i, -signature i * (jet i * deltaJet i)) - force * eta

/-- Exact real derivative of the canonical scalar density, using the OLD certificate as input. -/
theorem densityAlong_hasDerivAt (p q : Poly) (v : Nat)
    (h : normalize (deriv v p) = normalize q) (values : Nat → ℝ)
    (jet deltaJet : Fin 4 → ℝ) (eta : ℝ) :
    HasDerivAt (densityAlong p v values jet deltaJet eta)
      (variationDensity (realValue values q / 2) jet deltaJet eta) 0 := by
  have ha i : HasDerivAt (fun e : ℝ => jet i + e * deltaJet i) (deltaJet i) 0 := by
    simpa using (hasDerivAt_const 0 (jet i)).add ((hasDerivAt_id 0).mul_const (deltaJet i))
  have hk := HasDerivAt.fun_sum (u := Finset.univ) (fun i _ =>
    ((ha i).mul (ha i)).const_mul (signature i))
  have hv := (certified_potential_hasDerivAt p q v h values).comp_of_eq 0
    ((hasDerivAt_const 0 (values v)).add ((hasDerivAt_id 0).mul_const eta)) (by simp)
  convert ((hk.neg.div_const 2).sub hv) using 1
  · rfl
  · simp only [variationDensity, zero_mul, add_zero, one_mul, zero_add]
    have hs : (∑ i : Fin 4, signature i *
        (deltaJet i * jet i + jet i * deltaJet i)) =
        -2 * ∑ i : Fin 4, -signature i * (jet i * deltaJet i) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro i _
      ring
    rw [hs]
    ring

theorem partial_variation (phi eta : Spacetime → ℝ)
    (hphi : Differentiable ℝ phi) (heta : Differentiable ℝ eta)
    (epsilon : ℝ) (i : Fin 4) (x : Spacetime) :
    partial i (fun y => phi y + epsilon * eta y) x =
      partial i phi x + epsilon * partial i eta x := by
  have h := ((hphi x).hasFDerivAt.add ((heta x).hasFDerivAt.const_mul epsilon)).fderiv
  simpa [partial] using congrArg (fun L => L (direction i)) h

def firstVariation (phi eta force : Spacetime → ℝ) : ℝ :=
  ∫ x, variationDensity (force x) (fun i => partial i phi x) (fun i => partial i eta x) (eta x)

/-- Analytic conditions for integration by parts, not a postulated variational identity. -/
structure IBPConditions (phi eta force : Spacetime → ℝ) : Prop where
  phi_differentiable : Differentiable ℝ phi
  eta_differentiable : Differentiable ℝ eta
  partial_differentiable : ∀ i, Differentiable ℝ (partial i phi)
  second_times_test : ∀ i, Integrable (fun x => partial i (partial i phi) x * eta x)
  first_times_test_derivative : ∀ i, Integrable (fun x => partial i phi x * partial i eta x)
  first_times_test : ∀ i, Integrable (fun x => partial i phi x * eta x)
  force_times_test : Integrable (fun x => force x * eta x)

/-- Actual integration by parts yields the (-+++) scalar Euler–Lagrange residual. -/
theorem firstVariation_eq_residual (phi eta force : Spacetime → ℝ)
    (h : IBPConditions phi eta force) :
    firstVariation phi eta force = ∫ x, (dalembertian phi x - force x) * eta x := by
  have hi (i : Fin 4) :
      (∫ x, partial i phi x * partial i eta x) =
        -(∫ x, partial i (partial i phi) x * eta x) :=
    integral_mul_fderiv_eq_neg_fderiv_mul_of_integrable
      (h.second_times_test i) (h.first_times_test_derivative i)
      (h.first_times_test i) (h.partial_differentiable i) h.eta_differentiable
  have hl (i : Fin 4) := (h.first_times_test_derivative i).const_mul (-signature i)
  have hr (i : Fin 4) := (h.second_times_test i).const_mul (signature i)
  have hk : (∫ x, ∑ i : Fin 4, -signature i * (partial i phi x * partial i eta x)) =
      ∫ x, ∑ i : Fin 4, signature i * (partial i (partial i phi) x * eta x) := by
    rw [integral_finset_sum _ (fun i _ => hl i), integral_finset_sum _ (fun i _ => hr i)]
    apply Finset.sum_congr rfl
    intro i _
    rw [integral_const_mul, integral_const_mul, hi i]
    ring
  unfold firstVariation variationDensity
  rw [integral_sub (integrable_finset_sum _ (fun i _ => hl i)) h.force_times_test, hk,
    ← integral_sub (integrable_finset_sum _ (fun i _ => hr i)) h.force_times_test]
  apply integral_congr_ae
  exact Filter.Eventually.of_forall (fun x => by
    simp [dalembertian, sub_mul, Finset.sum_mul, mul_assoc])

def actionAlong (p : Poly) (v : Nat) (values : Spacetime → Nat → ℝ)
    (eta : Spacetime → ℝ) (epsilon : ℝ) : ℝ :=
  ∫ x, densityAlong p v (values x)
    (fun i => partial i (fun y => values y v) x) (fun i => partial i eta x) (eta x) epsilon

/-- The jet formula is the action evaluated on the genuinely varied scalar field. -/
theorem actionAlong_eq_varied_action (p : Poly) (v : Nat) (values : Spacetime → Nat → ℝ)
    (eta : Spacetime → ℝ) (hphi : Differentiable ℝ (fun x => values x v))
    (heta : Differentiable ℝ eta) (epsilon : ℝ) :
    actionAlong p v values eta epsilon =
      ∫ x, scalarDensity p (Function.update (values x) v (values x v + epsilon * eta x))
        (fun i => partial i (fun y => values y v + epsilon * eta y) x) := by
  unfold actionAlong densityAlong
  simp_rw [partial_variation _ _ hphi heta]

/-- Conditions sufficient for differentiating the action under the integral sign. -/
structure DominatedVariation (p q : Poly) (v : Nat) (values : Spacetime → Nat → ℝ)
    (eta : Spacetime → ℝ) where
  neighborhood : Set ℝ
  neighborhood_mem : neighborhood ∈ 𝓝 (0 : ℝ)
  bound : Spacetime → ℝ
  bound_integrable : Integrable bound
  density_measurable : ∀ᶠ e in 𝓝 (0 : ℝ), AEStronglyMeasurable (fun x =>
    densityAlong p v (values x) (fun i => partial i (fun y => values y v) x)
      (fun i => partial i eta x) (eta x) e) volume
  density_integrable : Integrable (fun x =>
    densityAlong p v (values x) (fun i => partial i (fun y => values y v) x)
      (fun i => partial i eta x) (eta x) 0)
  variation_measurable : AEStronglyMeasurable (fun x =>
    variationDensity (realValue (values x) q / 2) (fun i => partial i (fun y => values y v) x)
      (fun i => partial i eta x) (eta x)) volume
  density_lipschitz : ∀ᵐ x, LipschitzOnWith (Real.nnabs (bound x))
    (densityAlong p v (values x) (fun i => partial i (fun y => values y v) x)
      (fun i => partial i eta x) (eta x)) neighborhood

/-- A derivative of the REAL ACTION, derived from the finite certificate and analytic hypotheses. -/
theorem actionAlong_hasDerivAt (p q : Poly) (v : Nat)
    (hcert : normalize (deriv v p) = normalize q) (values : Spacetime → Nat → ℝ)
    (eta : Spacetime → ℝ) (hd : DominatedVariation p q v values eta)
    (hi : IBPConditions (fun x => values x v) eta (fun x => realValue (values x) q / 2)) :
    HasDerivAt (actionAlong p v values eta)
      (∫ x, (dalembertian (fun y => values y v) x - realValue (values x) q / 2) * eta x) 0 := by
  have ht := (hasDerivAt_integral_of_dominated_loc_of_lip hd.neighborhood_mem
    hd.density_measurable hd.density_integrable hd.variation_measurable hd.density_lipschitz
    hd.bound_integrable (Filter.Eventually.of_forall fun x =>
      densityAlong_hasDerivAt p q v hcert (values x)
        (fun i => partial i (fun y => values y v) x) (fun i => partial i eta x) (eta x))).2
  change HasDerivAt (actionAlong p v values eta)
    (firstVariation (fun x => values x v) eta (fun x => realValue (values x) q / 2)) 0 at ht
    -- Only the derivative component of the dominated differentiation result is needed below.
  rw [firstVariation_eq_residual _ _ _ hi] at ht
  exact ht

/-- Stationarity against every smooth compactly supported test forces the scalar PDE a.e. -/
theorem stationary_action_implies_scalar_equation (p q : Poly) (v : Nat)
    (hcert : normalize (deriv v p) = normalize q) (values : Spacetime → Nat → ℝ)
    (hlocal : LocallyIntegrable (fun x => dalembertian (fun y => values y v) x - realValue (values x) q / 2))
    (hadmissible : ∀ eta : Spacetime → ℝ, ContDiff ℝ ∞ eta → HasCompactSupport eta →
      Nonempty (DominatedVariation p q v values eta) ∧
        IBPConditions (fun x => values x v) eta (fun x => realValue (values x) q / 2))
    (hstationary : ∀ eta : Spacetime → ℝ, ContDiff ℝ ∞ eta → HasCompactSupport eta →
      HasDerivAt (actionAlong p v values eta) 0 0) :
    ∀ᵐ x, dalembertian (fun y => values y v) x - realValue (values x) q / 2 = 0 := by
  apply ae_eq_zero_of_integral_contDiff_smul_eq_zero hlocal
  intro eta hs hc
  obtain ⟨⟨hd⟩, hi⟩ := hadmissible eta hs hc
  have he := (actionAlong_hasDerivAt p q v hcert values eta hd hi).unique (hstationary eta hs hc)
  simpa [smul_eq_mul, mul_comm] using he

end EFMWContinuum
