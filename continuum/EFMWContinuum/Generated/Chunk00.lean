import EFMWContinuum.ScalarVariation
import EFMWLagrangian.Generated.Chunk00

namespace EFMWContinuum
open EFMWLagrangian MeasureTheory

/-- Real partial derivative for FS-E-F-M-SCALAR-F, source line 12. -/
theorem real_derivative_E_F_M_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_E_F_M / 2)
      (realValue values C2_E_F_M_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_E_F_M C2_E_F_M_F 240 EFMWLagrangian.derivative_E_F_M_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_F_M_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_F_M C2_E_F_M_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_E_F_M_F / 2)) :
    HasDerivAt (actionAlong U2_E_F_M 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_E_F_M_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_F_M C2_E_F_M_F 240 EFMWLagrangian.derivative_E_F_M_F values eta hd hi

/-- Real partial derivative for FS-E-F-W-SCALAR-F, source line 16. -/
theorem real_derivative_E_F_W_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_E_F_W / 2)
      (realValue values C2_E_F_W_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_E_F_W C2_E_F_W_F 240 EFMWLagrangian.derivative_E_F_W_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_F_W_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_F_W C2_E_F_W_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_E_F_W_F / 2)) :
    HasDerivAt (actionAlong U2_E_F_W 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_E_F_W_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_F_W C2_E_F_W_F 240 EFMWLagrangian.derivative_E_F_W_F values eta hd hi

/-- Real partial derivative for FS-E-F-W-SCALAR-W, source line 17. -/
theorem real_derivative_E_F_W_W (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 246 x) U2_E_F_W / 2)
      (realValue values C2_E_F_W_W / 2) (values 246) :=
  certified_potential_hasDerivAt U2_E_F_W C2_E_F_W_W 246 EFMWLagrangian.derivative_E_F_W_W values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_F_W_W (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_F_W C2_E_F_W_W 246 values eta)
    (hi : IBPConditions (fun x => values x 246) eta (fun x => realValue (values x) C2_E_F_W_W / 2)) :
    HasDerivAt (actionAlong U2_E_F_W 246 values eta)
      (∫ x, (dalembertian (fun y => values y 246) x - realValue (values x) C2_E_F_W_W / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_F_W C2_E_F_W_W 246 EFMWLagrangian.derivative_E_F_W_W values eta hd hi

/-- Real partial derivative for FS-E-F-T-SCALAR-F, source line 21. -/
theorem real_derivative_E_F_T_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_E_F_T / 2)
      (realValue values C2_E_F_T_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_E_F_T C2_E_F_T_F 240 EFMWLagrangian.derivative_E_F_T_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_F_T_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_F_T C2_E_F_T_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_E_F_T_F / 2)) :
    HasDerivAt (actionAlong U2_E_F_T 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_E_F_T_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_F_T C2_E_F_T_F 240 EFMWLagrangian.derivative_E_F_T_F values eta hd hi

/-- Real partial derivative for FS-E-F-T-SCALAR-T, source line 22. -/
theorem real_derivative_E_F_T_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_E_F_T / 2)
      (realValue values C2_E_F_T_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_E_F_T C2_E_F_T_T 245 EFMWLagrangian.derivative_E_F_T_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_F_T_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_F_T C2_E_F_T_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_E_F_T_T / 2)) :
    HasDerivAt (actionAlong U2_E_F_T 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_E_F_T_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_F_T C2_E_F_T_T 245 EFMWLagrangian.derivative_E_F_T_T values eta hd hi

/-- Real partial derivative for FS-E-F-I-SCALAR-F, source line 26. -/
theorem real_derivative_E_F_I_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_E_F_I / 2)
      (realValue values C2_E_F_I_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_E_F_I C2_E_F_I_F 240 EFMWLagrangian.derivative_E_F_I_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_F_I_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_F_I C2_E_F_I_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_E_F_I_F / 2)) :
    HasDerivAt (actionAlong U2_E_F_I 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_E_F_I_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_F_I C2_E_F_I_F 240 EFMWLagrangian.derivative_E_F_I_F values eta hd hi

/-- Real partial derivative for FS-E-F-I-SCALAR-I, source line 27. -/
theorem real_derivative_E_F_I_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_E_F_I / 2)
      (realValue values C2_E_F_I_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_E_F_I C2_E_F_I_I 242 EFMWLagrangian.derivative_E_F_I_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_F_I_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_F_I C2_E_F_I_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_E_F_I_I / 2)) :
    HasDerivAt (actionAlong U2_E_F_I 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_E_F_I_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_F_I C2_E_F_I_I 242 EFMWLagrangian.derivative_E_F_I_I values eta hd hi

/-- Real partial derivative for FS-E-F-R-SCALAR-F, source line 31. -/
theorem real_derivative_E_F_R_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_E_F_R / 2)
      (realValue values C2_E_F_R_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_E_F_R C2_E_F_R_F 240 EFMWLagrangian.derivative_E_F_R_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_F_R_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_F_R C2_E_F_R_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_E_F_R_F / 2)) :
    HasDerivAt (actionAlong U2_E_F_R 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_E_F_R_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_F_R C2_E_F_R_F 240 EFMWLagrangian.derivative_E_F_R_F values eta hd hi

/-- Real partial derivative for FS-E-F-R-SCALAR-R, source line 32. -/
theorem real_derivative_E_F_R_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_E_F_R / 2)
      (realValue values C2_E_F_R_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_E_F_R C2_E_F_R_R 244 EFMWLagrangian.derivative_E_F_R_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_F_R_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_F_R C2_E_F_R_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_E_F_R_R / 2)) :
    HasDerivAt (actionAlong U2_E_F_R 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_E_F_R_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_F_R C2_E_F_R_R 244 EFMWLagrangian.derivative_E_F_R_R values eta hd hi

/-- Real partial derivative for FS-E-F-S-SCALAR-F, source line 39. -/
theorem real_derivative_E_F_S_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_E_F_S / 2)
      (realValue values C2_E_F_S_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_E_F_S C2_E_F_S_F 240 EFMWLagrangian.derivative_E_F_S_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_F_S_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_F_S C2_E_F_S_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_E_F_S_F / 2)) :
    HasDerivAt (actionAlong U2_E_F_S 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_E_F_S_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_F_S C2_E_F_S_F 240 EFMWLagrangian.derivative_E_F_S_F values eta hd hi

/-- Real partial derivative for FS-E-F-H-SCALAR-F, source line 43. -/
theorem real_derivative_E_F_H_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_E_F_H / 2)
      (realValue values C2_E_F_H_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_E_F_H C2_E_F_H_F 240 EFMWLagrangian.derivative_E_F_H_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_F_H_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_F_H C2_E_F_H_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_E_F_H_F / 2)) :
    HasDerivAt (actionAlong U2_E_F_H 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_E_F_H_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_F_H C2_E_F_H_F 240 EFMWLagrangian.derivative_E_F_H_F values eta hd hi

/-- Real partial derivative for FS-E-F-H-SCALAR-H, source line 44. -/
theorem real_derivative_E_F_H_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_E_F_H / 2)
      (realValue values C2_E_F_H_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_E_F_H C2_E_F_H_H 241 EFMWLagrangian.derivative_E_F_H_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_F_H_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_F_H C2_E_F_H_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_E_F_H_H / 2)) :
    HasDerivAt (actionAlong U2_E_F_H 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_E_F_H_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_F_H C2_E_F_H_H 241 EFMWLagrangian.derivative_E_F_H_H values eta hd hi

/-- Real partial derivative for FS-E-F-P-SCALAR-F, source line 48. -/
theorem real_derivative_E_F_P_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_E_F_P / 2)
      (realValue values C2_E_F_P_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_E_F_P C2_E_F_P_F 240 EFMWLagrangian.derivative_E_F_P_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_F_P_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_F_P C2_E_F_P_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_E_F_P_F / 2)) :
    HasDerivAt (actionAlong U2_E_F_P 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_E_F_P_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_F_P C2_E_F_P_F 240 EFMWLagrangian.derivative_E_F_P_F values eta hd hi

/-- Real partial derivative for FS-E-F-P-SCALAR-P, source line 49. -/
theorem real_derivative_E_F_P_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_E_F_P / 2)
      (realValue values C2_E_F_P_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_E_F_P C2_E_F_P_P 243 EFMWLagrangian.derivative_E_F_P_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_F_P_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_F_P C2_E_F_P_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_E_F_P_P / 2)) :
    HasDerivAt (actionAlong U2_E_F_P 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_E_F_P_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_F_P C2_E_F_P_P 243 EFMWLagrangian.derivative_E_F_P_P values eta hd hi

/-- Real partial derivative for FS-E-F-A-SCALAR-F, source line 53. -/
theorem real_derivative_E_F_A_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_E_F_A / 2)
      (realValue values C2_E_F_A_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_E_F_A C2_E_F_A_F 240 EFMWLagrangian.derivative_E_F_A_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_F_A_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_F_A C2_E_F_A_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_E_F_A_F / 2)) :
    HasDerivAt (actionAlong U2_E_F_A 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_E_F_A_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_F_A C2_E_F_A_F 240 EFMWLagrangian.derivative_E_F_A_F values eta hd hi

/-- Real partial derivative for FS-E-F-A-SCALAR-A, source line 54. -/
theorem real_derivative_E_F_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_E_F_A / 2)
      (realValue values C2_E_F_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_E_F_A C2_E_F_A_A 239 EFMWLagrangian.derivative_E_F_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_F_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_F_A C2_E_F_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_E_F_A_A / 2)) :
    HasDerivAt (actionAlong U2_E_F_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_E_F_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_F_A C2_E_F_A_A 239 EFMWLagrangian.derivative_E_F_A_A values eta hd hi

/-- Real partial derivative for FS-E-M-W-SCALAR-W, source line 61. -/
theorem real_derivative_E_M_W_W (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 246 x) U2_E_M_W / 2)
      (realValue values C2_E_M_W_W / 2) (values 246) :=
  certified_potential_hasDerivAt U2_E_M_W C2_E_M_W_W 246 EFMWLagrangian.derivative_E_M_W_W values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_M_W_W (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_M_W C2_E_M_W_W 246 values eta)
    (hi : IBPConditions (fun x => values x 246) eta (fun x => realValue (values x) C2_E_M_W_W / 2)) :
    HasDerivAt (actionAlong U2_E_M_W 246 values eta)
      (∫ x, (dalembertian (fun y => values y 246) x - realValue (values x) C2_E_M_W_W / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_M_W C2_E_M_W_W 246 EFMWLagrangian.derivative_E_M_W_W values eta hd hi

/-- Real partial derivative for FS-E-M-T-SCALAR-T, source line 68. -/
theorem real_derivative_E_M_T_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_E_M_T / 2)
      (realValue values C2_E_M_T_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_E_M_T C2_E_M_T_T 245 EFMWLagrangian.derivative_E_M_T_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_M_T_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_M_T C2_E_M_T_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_E_M_T_T / 2)) :
    HasDerivAt (actionAlong U2_E_M_T 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_E_M_T_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_M_T C2_E_M_T_T 245 EFMWLagrangian.derivative_E_M_T_T values eta hd hi

/-- Real partial derivative for FS-E-M-I-SCALAR-I, source line 75. -/
theorem real_derivative_E_M_I_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_E_M_I / 2)
      (realValue values C2_E_M_I_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_E_M_I C2_E_M_I_I 242 EFMWLagrangian.derivative_E_M_I_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_M_I_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_M_I C2_E_M_I_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_E_M_I_I / 2)) :
    HasDerivAt (actionAlong U2_E_M_I 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_E_M_I_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_M_I C2_E_M_I_I 242 EFMWLagrangian.derivative_E_M_I_I values eta hd hi

end EFMWContinuum
