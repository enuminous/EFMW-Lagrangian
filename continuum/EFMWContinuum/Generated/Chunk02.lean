import EFMWContinuum.ScalarVariation
import EFMWLagrangian.Generated.Chunk02

namespace EFMWContinuum
open EFMWLagrangian MeasureTheory

/-- Real partial derivative for FS-E-T-I-SCALAR-T, source line 153. -/
theorem real_derivative_E_T_I_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_E_T_I / 2)
      (realValue values C2_E_T_I_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_E_T_I C2_E_T_I_T 245 EFMWLagrangian.derivative_E_T_I_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_T_I_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_T_I C2_E_T_I_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_E_T_I_T / 2)) :
    HasDerivAt (actionAlong U2_E_T_I 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_E_T_I_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_T_I C2_E_T_I_T 245 EFMWLagrangian.derivative_E_T_I_T values eta hd hi

/-- Real partial derivative for FS-E-T-I-SCALAR-I, source line 154. -/
theorem real_derivative_E_T_I_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_E_T_I / 2)
      (realValue values C2_E_T_I_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_E_T_I C2_E_T_I_I 242 EFMWLagrangian.derivative_E_T_I_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_T_I_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_T_I C2_E_T_I_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_E_T_I_I / 2)) :
    HasDerivAt (actionAlong U2_E_T_I 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_E_T_I_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_T_I C2_E_T_I_I 242 EFMWLagrangian.derivative_E_T_I_I values eta hd hi

/-- Real partial derivative for FS-E-T-R-SCALAR-T, source line 158. -/
theorem real_derivative_E_T_R_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_E_T_R / 2)
      (realValue values C2_E_T_R_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_E_T_R C2_E_T_R_T 245 EFMWLagrangian.derivative_E_T_R_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_T_R_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_T_R C2_E_T_R_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_E_T_R_T / 2)) :
    HasDerivAt (actionAlong U2_E_T_R 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_E_T_R_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_T_R C2_E_T_R_T 245 EFMWLagrangian.derivative_E_T_R_T values eta hd hi

/-- Real partial derivative for FS-E-T-R-SCALAR-R, source line 159. -/
theorem real_derivative_E_T_R_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_E_T_R / 2)
      (realValue values C2_E_T_R_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_E_T_R C2_E_T_R_R 244 EFMWLagrangian.derivative_E_T_R_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_T_R_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_T_R C2_E_T_R_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_E_T_R_R / 2)) :
    HasDerivAt (actionAlong U2_E_T_R 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_E_T_R_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_T_R C2_E_T_R_R 244 EFMWLagrangian.derivative_E_T_R_R values eta hd hi

/-- Real partial derivative for FS-E-T-S-SCALAR-T, source line 166. -/
theorem real_derivative_E_T_S_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_E_T_S / 2)
      (realValue values C2_E_T_S_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_E_T_S C2_E_T_S_T 245 EFMWLagrangian.derivative_E_T_S_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_T_S_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_T_S C2_E_T_S_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_E_T_S_T / 2)) :
    HasDerivAt (actionAlong U2_E_T_S 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_E_T_S_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_T_S C2_E_T_S_T 245 EFMWLagrangian.derivative_E_T_S_T values eta hd hi

/-- Real partial derivative for FS-E-T-H-SCALAR-T, source line 170. -/
theorem real_derivative_E_T_H_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_E_T_H / 2)
      (realValue values C2_E_T_H_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_E_T_H C2_E_T_H_T 245 EFMWLagrangian.derivative_E_T_H_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_T_H_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_T_H C2_E_T_H_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_E_T_H_T / 2)) :
    HasDerivAt (actionAlong U2_E_T_H 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_E_T_H_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_T_H C2_E_T_H_T 245 EFMWLagrangian.derivative_E_T_H_T values eta hd hi

/-- Real partial derivative for FS-E-T-H-SCALAR-H, source line 171. -/
theorem real_derivative_E_T_H_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_E_T_H / 2)
      (realValue values C2_E_T_H_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_E_T_H C2_E_T_H_H 241 EFMWLagrangian.derivative_E_T_H_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_T_H_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_T_H C2_E_T_H_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_E_T_H_H / 2)) :
    HasDerivAt (actionAlong U2_E_T_H 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_E_T_H_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_T_H C2_E_T_H_H 241 EFMWLagrangian.derivative_E_T_H_H values eta hd hi

/-- Real partial derivative for FS-E-T-P-SCALAR-T, source line 175. -/
theorem real_derivative_E_T_P_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_E_T_P / 2)
      (realValue values C2_E_T_P_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_E_T_P C2_E_T_P_T 245 EFMWLagrangian.derivative_E_T_P_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_T_P_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_T_P C2_E_T_P_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_E_T_P_T / 2)) :
    HasDerivAt (actionAlong U2_E_T_P 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_E_T_P_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_T_P C2_E_T_P_T 245 EFMWLagrangian.derivative_E_T_P_T values eta hd hi

/-- Real partial derivative for FS-E-T-P-SCALAR-P, source line 176. -/
theorem real_derivative_E_T_P_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_E_T_P / 2)
      (realValue values C2_E_T_P_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_E_T_P C2_E_T_P_P 243 EFMWLagrangian.derivative_E_T_P_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_T_P_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_T_P C2_E_T_P_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_E_T_P_P / 2)) :
    HasDerivAt (actionAlong U2_E_T_P 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_E_T_P_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_T_P C2_E_T_P_P 243 EFMWLagrangian.derivative_E_T_P_P values eta hd hi

/-- Real partial derivative for FS-E-T-A-SCALAR-T, source line 180. -/
theorem real_derivative_E_T_A_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_E_T_A / 2)
      (realValue values C2_E_T_A_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_E_T_A C2_E_T_A_T 245 EFMWLagrangian.derivative_E_T_A_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_T_A_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_T_A C2_E_T_A_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_E_T_A_T / 2)) :
    HasDerivAt (actionAlong U2_E_T_A 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_E_T_A_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_T_A C2_E_T_A_T 245 EFMWLagrangian.derivative_E_T_A_T values eta hd hi

/-- Real partial derivative for FS-E-T-A-SCALAR-A, source line 181. -/
theorem real_derivative_E_T_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_E_T_A / 2)
      (realValue values C2_E_T_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_E_T_A C2_E_T_A_A 239 EFMWLagrangian.derivative_E_T_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_T_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_T_A C2_E_T_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_E_T_A_A / 2)) :
    HasDerivAt (actionAlong U2_E_T_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_E_T_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_T_A C2_E_T_A_A 239 EFMWLagrangian.derivative_E_T_A_A values eta hd hi

/-- Real partial derivative for FS-E-I-R-SCALAR-I, source line 185. -/
theorem real_derivative_E_I_R_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_E_I_R / 2)
      (realValue values C2_E_I_R_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_E_I_R C2_E_I_R_I 242 EFMWLagrangian.derivative_E_I_R_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_I_R_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_I_R C2_E_I_R_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_E_I_R_I / 2)) :
    HasDerivAt (actionAlong U2_E_I_R 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_E_I_R_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_I_R C2_E_I_R_I 242 EFMWLagrangian.derivative_E_I_R_I values eta hd hi

/-- Real partial derivative for FS-E-I-R-SCALAR-R, source line 186. -/
theorem real_derivative_E_I_R_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_E_I_R / 2)
      (realValue values C2_E_I_R_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_E_I_R C2_E_I_R_R 244 EFMWLagrangian.derivative_E_I_R_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_I_R_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_I_R C2_E_I_R_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_E_I_R_R / 2)) :
    HasDerivAt (actionAlong U2_E_I_R 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_E_I_R_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_I_R C2_E_I_R_R 244 EFMWLagrangian.derivative_E_I_R_R values eta hd hi

/-- Real partial derivative for FS-E-I-S-SCALAR-I, source line 193. -/
theorem real_derivative_E_I_S_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_E_I_S / 2)
      (realValue values C2_E_I_S_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_E_I_S C2_E_I_S_I 242 EFMWLagrangian.derivative_E_I_S_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_I_S_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_I_S C2_E_I_S_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_E_I_S_I / 2)) :
    HasDerivAt (actionAlong U2_E_I_S 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_E_I_S_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_I_S C2_E_I_S_I 242 EFMWLagrangian.derivative_E_I_S_I values eta hd hi

/-- Real partial derivative for FS-E-I-H-SCALAR-I, source line 197. -/
theorem real_derivative_E_I_H_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_E_I_H / 2)
      (realValue values C2_E_I_H_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_E_I_H C2_E_I_H_I 242 EFMWLagrangian.derivative_E_I_H_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_I_H_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_I_H C2_E_I_H_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_E_I_H_I / 2)) :
    HasDerivAt (actionAlong U2_E_I_H 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_E_I_H_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_I_H C2_E_I_H_I 242 EFMWLagrangian.derivative_E_I_H_I values eta hd hi

/-- Real partial derivative for FS-E-I-H-SCALAR-H, source line 198. -/
theorem real_derivative_E_I_H_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_E_I_H / 2)
      (realValue values C2_E_I_H_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_E_I_H C2_E_I_H_H 241 EFMWLagrangian.derivative_E_I_H_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_I_H_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_I_H C2_E_I_H_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_E_I_H_H / 2)) :
    HasDerivAt (actionAlong U2_E_I_H 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_E_I_H_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_I_H C2_E_I_H_H 241 EFMWLagrangian.derivative_E_I_H_H values eta hd hi

/-- Real partial derivative for FS-E-I-P-SCALAR-I, source line 202. -/
theorem real_derivative_E_I_P_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_E_I_P / 2)
      (realValue values C2_E_I_P_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_E_I_P C2_E_I_P_I 242 EFMWLagrangian.derivative_E_I_P_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_I_P_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_I_P C2_E_I_P_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_E_I_P_I / 2)) :
    HasDerivAt (actionAlong U2_E_I_P 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_E_I_P_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_I_P C2_E_I_P_I 242 EFMWLagrangian.derivative_E_I_P_I values eta hd hi

/-- Real partial derivative for FS-E-I-P-SCALAR-P, source line 203. -/
theorem real_derivative_E_I_P_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_E_I_P / 2)
      (realValue values C2_E_I_P_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_E_I_P C2_E_I_P_P 243 EFMWLagrangian.derivative_E_I_P_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_I_P_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_I_P C2_E_I_P_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_E_I_P_P / 2)) :
    HasDerivAt (actionAlong U2_E_I_P 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_E_I_P_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_I_P C2_E_I_P_P 243 EFMWLagrangian.derivative_E_I_P_P values eta hd hi

/-- Real partial derivative for FS-E-I-A-SCALAR-I, source line 207. -/
theorem real_derivative_E_I_A_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_E_I_A / 2)
      (realValue values C2_E_I_A_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_E_I_A C2_E_I_A_I 242 EFMWLagrangian.derivative_E_I_A_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_I_A_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_I_A C2_E_I_A_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_E_I_A_I / 2)) :
    HasDerivAt (actionAlong U2_E_I_A 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_E_I_A_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_I_A C2_E_I_A_I 242 EFMWLagrangian.derivative_E_I_A_I values eta hd hi

/-- Real partial derivative for FS-E-I-A-SCALAR-A, source line 208. -/
theorem real_derivative_E_I_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_E_I_A / 2)
      (realValue values C2_E_I_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_E_I_A C2_E_I_A_A 239 EFMWLagrangian.derivative_E_I_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_I_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_I_A C2_E_I_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_E_I_A_A / 2)) :
    HasDerivAt (actionAlong U2_E_I_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_E_I_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_I_A C2_E_I_A_A 239 EFMWLagrangian.derivative_E_I_A_A values eta hd hi

/-- Real partial derivative for FS-E-R-S-SCALAR-R, source line 215. -/
theorem real_derivative_E_R_S_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_E_R_S / 2)
      (realValue values C2_E_R_S_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_E_R_S C2_E_R_S_R 244 EFMWLagrangian.derivative_E_R_S_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_R_S_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_R_S C2_E_R_S_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_E_R_S_R / 2)) :
    HasDerivAt (actionAlong U2_E_R_S 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_E_R_S_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_R_S C2_E_R_S_R 244 EFMWLagrangian.derivative_E_R_S_R values eta hd hi

end EFMWContinuum
