import EFMWContinuum.ScalarVariation
import EFMWLagrangian.Generated.Chunk04

namespace EFMWContinuum
open EFMWLagrangian MeasureTheory

/-- Real partial derivative for FS-F-M-R-SCALAR-F, source line 293. -/
theorem real_derivative_F_M_R_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_M_R / 2)
      (realValue values C2_F_M_R_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_M_R C2_F_M_R_F 240 EFMWLagrangian.derivative_F_M_R_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_M_R_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_M_R C2_F_M_R_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_M_R_F / 2)) :
    HasDerivAt (actionAlong U2_F_M_R 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_M_R_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_M_R C2_F_M_R_F 240 EFMWLagrangian.derivative_F_M_R_F values eta hd hi

/-- Real partial derivative for FS-F-M-R-SCALAR-R, source line 294. -/
theorem real_derivative_F_M_R_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_F_M_R / 2)
      (realValue values C2_F_M_R_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_F_M_R C2_F_M_R_R 244 EFMWLagrangian.derivative_F_M_R_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_M_R_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_M_R C2_F_M_R_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_F_M_R_R / 2)) :
    HasDerivAt (actionAlong U2_F_M_R 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_F_M_R_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_M_R C2_F_M_R_R 244 EFMWLagrangian.derivative_F_M_R_R values eta hd hi

/-- Real partial derivative for FS-F-M-S-SCALAR-F, source line 303. -/
theorem real_derivative_F_M_S_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_M_S / 2)
      (realValue values C2_F_M_S_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_M_S C2_F_M_S_F 240 EFMWLagrangian.derivative_F_M_S_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_M_S_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_M_S C2_F_M_S_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_M_S_F / 2)) :
    HasDerivAt (actionAlong U2_F_M_S 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_M_S_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_M_S C2_F_M_S_F 240 EFMWLagrangian.derivative_F_M_S_F values eta hd hi

/-- Real partial derivative for FS-F-M-H-SCALAR-F, source line 309. -/
theorem real_derivative_F_M_H_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_M_H / 2)
      (realValue values C2_F_M_H_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_M_H C2_F_M_H_F 240 EFMWLagrangian.derivative_F_M_H_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_M_H_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_M_H C2_F_M_H_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_M_H_F / 2)) :
    HasDerivAt (actionAlong U2_F_M_H 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_M_H_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_M_H C2_F_M_H_F 240 EFMWLagrangian.derivative_F_M_H_F values eta hd hi

/-- Real partial derivative for FS-F-M-H-SCALAR-H, source line 310. -/
theorem real_derivative_F_M_H_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_F_M_H / 2)
      (realValue values C2_F_M_H_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_F_M_H C2_F_M_H_H 241 EFMWLagrangian.derivative_F_M_H_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_M_H_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_M_H C2_F_M_H_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_F_M_H_H / 2)) :
    HasDerivAt (actionAlong U2_F_M_H 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_F_M_H_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_M_H C2_F_M_H_H 241 EFMWLagrangian.derivative_F_M_H_H values eta hd hi

/-- Real partial derivative for FS-F-M-P-SCALAR-F, source line 316. -/
theorem real_derivative_F_M_P_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_M_P / 2)
      (realValue values C2_F_M_P_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_M_P C2_F_M_P_F 240 EFMWLagrangian.derivative_F_M_P_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_M_P_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_M_P C2_F_M_P_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_M_P_F / 2)) :
    HasDerivAt (actionAlong U2_F_M_P 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_M_P_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_M_P C2_F_M_P_F 240 EFMWLagrangian.derivative_F_M_P_F values eta hd hi

/-- Real partial derivative for FS-F-M-P-SCALAR-P, source line 317. -/
theorem real_derivative_F_M_P_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_F_M_P / 2)
      (realValue values C2_F_M_P_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_F_M_P C2_F_M_P_P 243 EFMWLagrangian.derivative_F_M_P_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_M_P_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_M_P C2_F_M_P_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_F_M_P_P / 2)) :
    HasDerivAt (actionAlong U2_F_M_P 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_F_M_P_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_M_P C2_F_M_P_P 243 EFMWLagrangian.derivative_F_M_P_P values eta hd hi

/-- Real partial derivative for FS-F-M-A-SCALAR-F, source line 323. -/
theorem real_derivative_F_M_A_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_M_A / 2)
      (realValue values C2_F_M_A_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_M_A C2_F_M_A_F 240 EFMWLagrangian.derivative_F_M_A_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_M_A_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_M_A C2_F_M_A_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_M_A_F / 2)) :
    HasDerivAt (actionAlong U2_F_M_A 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_M_A_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_M_A C2_F_M_A_F 240 EFMWLagrangian.derivative_F_M_A_F values eta hd hi

/-- Real partial derivative for FS-F-M-A-SCALAR-A, source line 324. -/
theorem real_derivative_F_M_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_F_M_A / 2)
      (realValue values C2_F_M_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_F_M_A C2_F_M_A_A 239 EFMWLagrangian.derivative_F_M_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_M_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_M_A C2_F_M_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_F_M_A_A / 2)) :
    HasDerivAt (actionAlong U2_F_M_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_F_M_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_M_A C2_F_M_A_A 239 EFMWLagrangian.derivative_F_M_A_A values eta hd hi

/-- Real partial derivative for FS-F-W-T-SCALAR-F, source line 327. -/
theorem real_derivative_F_W_T_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_W_T / 2)
      (realValue values C2_F_W_T_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_W_T C2_F_W_T_F 240 EFMWLagrangian.derivative_F_W_T_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_W_T_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_W_T C2_F_W_T_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_W_T_F / 2)) :
    HasDerivAt (actionAlong U2_F_W_T 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_W_T_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_W_T C2_F_W_T_F 240 EFMWLagrangian.derivative_F_W_T_F values eta hd hi

/-- Real partial derivative for FS-F-W-T-SCALAR-W, source line 328. -/
theorem real_derivative_F_W_T_W (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 246 x) U2_F_W_T / 2)
      (realValue values C2_F_W_T_W / 2) (values 246) :=
  certified_potential_hasDerivAt U2_F_W_T C2_F_W_T_W 246 EFMWLagrangian.derivative_F_W_T_W values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_W_T_W (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_W_T C2_F_W_T_W 246 values eta)
    (hi : IBPConditions (fun x => values x 246) eta (fun x => realValue (values x) C2_F_W_T_W / 2)) :
    HasDerivAt (actionAlong U2_F_W_T 246 values eta)
      (∫ x, (dalembertian (fun y => values y 246) x - realValue (values x) C2_F_W_T_W / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_W_T C2_F_W_T_W 246 EFMWLagrangian.derivative_F_W_T_W values eta hd hi

/-- Real partial derivative for FS-F-W-T-SCALAR-T, source line 329. -/
theorem real_derivative_F_W_T_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_F_W_T / 2)
      (realValue values C2_F_W_T_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_F_W_T C2_F_W_T_T 245 EFMWLagrangian.derivative_F_W_T_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_W_T_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_W_T C2_F_W_T_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_F_W_T_T / 2)) :
    HasDerivAt (actionAlong U2_F_W_T 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_F_W_T_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_W_T C2_F_W_T_T 245 EFMWLagrangian.derivative_F_W_T_T values eta hd hi

/-- Real partial derivative for FS-F-W-I-SCALAR-F, source line 332. -/
theorem real_derivative_F_W_I_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_W_I / 2)
      (realValue values C2_F_W_I_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_W_I C2_F_W_I_F 240 EFMWLagrangian.derivative_F_W_I_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_W_I_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_W_I C2_F_W_I_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_W_I_F / 2)) :
    HasDerivAt (actionAlong U2_F_W_I 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_W_I_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_W_I C2_F_W_I_F 240 EFMWLagrangian.derivative_F_W_I_F values eta hd hi

/-- Real partial derivative for FS-F-W-I-SCALAR-W, source line 333. -/
theorem real_derivative_F_W_I_W (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 246 x) U2_F_W_I / 2)
      (realValue values C2_F_W_I_W / 2) (values 246) :=
  certified_potential_hasDerivAt U2_F_W_I C2_F_W_I_W 246 EFMWLagrangian.derivative_F_W_I_W values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_W_I_W (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_W_I C2_F_W_I_W 246 values eta)
    (hi : IBPConditions (fun x => values x 246) eta (fun x => realValue (values x) C2_F_W_I_W / 2)) :
    HasDerivAt (actionAlong U2_F_W_I 246 values eta)
      (∫ x, (dalembertian (fun y => values y 246) x - realValue (values x) C2_F_W_I_W / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_W_I C2_F_W_I_W 246 EFMWLagrangian.derivative_F_W_I_W values eta hd hi

/-- Real partial derivative for FS-F-W-I-SCALAR-I, source line 334. -/
theorem real_derivative_F_W_I_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_F_W_I / 2)
      (realValue values C2_F_W_I_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_F_W_I C2_F_W_I_I 242 EFMWLagrangian.derivative_F_W_I_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_W_I_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_W_I C2_F_W_I_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_F_W_I_I / 2)) :
    HasDerivAt (actionAlong U2_F_W_I 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_F_W_I_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_W_I C2_F_W_I_I 242 EFMWLagrangian.derivative_F_W_I_I values eta hd hi

/-- Real partial derivative for FS-F-W-R-SCALAR-F, source line 337. -/
theorem real_derivative_F_W_R_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_W_R / 2)
      (realValue values C2_F_W_R_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_W_R C2_F_W_R_F 240 EFMWLagrangian.derivative_F_W_R_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_W_R_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_W_R C2_F_W_R_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_W_R_F / 2)) :
    HasDerivAt (actionAlong U2_F_W_R 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_W_R_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_W_R C2_F_W_R_F 240 EFMWLagrangian.derivative_F_W_R_F values eta hd hi

/-- Real partial derivative for FS-F-W-R-SCALAR-W, source line 338. -/
theorem real_derivative_F_W_R_W (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 246 x) U2_F_W_R / 2)
      (realValue values C2_F_W_R_W / 2) (values 246) :=
  certified_potential_hasDerivAt U2_F_W_R C2_F_W_R_W 246 EFMWLagrangian.derivative_F_W_R_W values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_W_R_W (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_W_R C2_F_W_R_W 246 values eta)
    (hi : IBPConditions (fun x => values x 246) eta (fun x => realValue (values x) C2_F_W_R_W / 2)) :
    HasDerivAt (actionAlong U2_F_W_R 246 values eta)
      (∫ x, (dalembertian (fun y => values y 246) x - realValue (values x) C2_F_W_R_W / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_W_R C2_F_W_R_W 246 EFMWLagrangian.derivative_F_W_R_W values eta hd hi

/-- Real partial derivative for FS-F-W-R-SCALAR-R, source line 339. -/
theorem real_derivative_F_W_R_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_F_W_R / 2)
      (realValue values C2_F_W_R_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_F_W_R C2_F_W_R_R 244 EFMWLagrangian.derivative_F_W_R_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_W_R_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_W_R C2_F_W_R_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_F_W_R_R / 2)) :
    HasDerivAt (actionAlong U2_F_W_R 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_F_W_R_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_W_R C2_F_W_R_R 244 EFMWLagrangian.derivative_F_W_R_R values eta hd hi

/-- Real partial derivative for FS-F-W-S-SCALAR-F, source line 345. -/
theorem real_derivative_F_W_S_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_W_S / 2)
      (realValue values C2_F_W_S_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_W_S C2_F_W_S_F 240 EFMWLagrangian.derivative_F_W_S_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_W_S_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_W_S C2_F_W_S_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_W_S_F / 2)) :
    HasDerivAt (actionAlong U2_F_W_S 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_W_S_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_W_S C2_F_W_S_F 240 EFMWLagrangian.derivative_F_W_S_F values eta hd hi

/-- Real partial derivative for FS-F-W-S-SCALAR-W, source line 346. -/
theorem real_derivative_F_W_S_W (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 246 x) U2_F_W_S / 2)
      (realValue values C2_F_W_S_W / 2) (values 246) :=
  certified_potential_hasDerivAt U2_F_W_S C2_F_W_S_W 246 EFMWLagrangian.derivative_F_W_S_W values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_W_S_W (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_W_S C2_F_W_S_W 246 values eta)
    (hi : IBPConditions (fun x => values x 246) eta (fun x => realValue (values x) C2_F_W_S_W / 2)) :
    HasDerivAt (actionAlong U2_F_W_S 246 values eta)
      (∫ x, (dalembertian (fun y => values y 246) x - realValue (values x) C2_F_W_S_W / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_W_S C2_F_W_S_W 246 EFMWLagrangian.derivative_F_W_S_W values eta hd hi

/-- Real partial derivative for FS-F-W-H-SCALAR-F, source line 349. -/
theorem real_derivative_F_W_H_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_W_H / 2)
      (realValue values C2_F_W_H_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_W_H C2_F_W_H_F 240 EFMWLagrangian.derivative_F_W_H_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_W_H_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_W_H C2_F_W_H_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_W_H_F / 2)) :
    HasDerivAt (actionAlong U2_F_W_H 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_W_H_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_W_H C2_F_W_H_F 240 EFMWLagrangian.derivative_F_W_H_F values eta hd hi

/-- Real partial derivative for FS-F-W-H-SCALAR-W, source line 350. -/
theorem real_derivative_F_W_H_W (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 246 x) U2_F_W_H / 2)
      (realValue values C2_F_W_H_W / 2) (values 246) :=
  certified_potential_hasDerivAt U2_F_W_H C2_F_W_H_W 246 EFMWLagrangian.derivative_F_W_H_W values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_W_H_W (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_W_H C2_F_W_H_W 246 values eta)
    (hi : IBPConditions (fun x => values x 246) eta (fun x => realValue (values x) C2_F_W_H_W / 2)) :
    HasDerivAt (actionAlong U2_F_W_H 246 values eta)
      (∫ x, (dalembertian (fun y => values y 246) x - realValue (values x) C2_F_W_H_W / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_W_H C2_F_W_H_W 246 EFMWLagrangian.derivative_F_W_H_W values eta hd hi

/-- Real partial derivative for FS-F-W-H-SCALAR-H, source line 351. -/
theorem real_derivative_F_W_H_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_F_W_H / 2)
      (realValue values C2_F_W_H_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_F_W_H C2_F_W_H_H 241 EFMWLagrangian.derivative_F_W_H_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_W_H_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_W_H C2_F_W_H_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_F_W_H_H / 2)) :
    HasDerivAt (actionAlong U2_F_W_H 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_F_W_H_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_W_H C2_F_W_H_H 241 EFMWLagrangian.derivative_F_W_H_H values eta hd hi

/-- Real partial derivative for FS-F-W-P-SCALAR-F, source line 354. -/
theorem real_derivative_F_W_P_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_W_P / 2)
      (realValue values C2_F_W_P_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_W_P C2_F_W_P_F 240 EFMWLagrangian.derivative_F_W_P_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_W_P_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_W_P C2_F_W_P_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_W_P_F / 2)) :
    HasDerivAt (actionAlong U2_F_W_P 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_W_P_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_W_P C2_F_W_P_F 240 EFMWLagrangian.derivative_F_W_P_F values eta hd hi

/-- Real partial derivative for FS-F-W-P-SCALAR-W, source line 355. -/
theorem real_derivative_F_W_P_W (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 246 x) U2_F_W_P / 2)
      (realValue values C2_F_W_P_W / 2) (values 246) :=
  certified_potential_hasDerivAt U2_F_W_P C2_F_W_P_W 246 EFMWLagrangian.derivative_F_W_P_W values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_W_P_W (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_W_P C2_F_W_P_W 246 values eta)
    (hi : IBPConditions (fun x => values x 246) eta (fun x => realValue (values x) C2_F_W_P_W / 2)) :
    HasDerivAt (actionAlong U2_F_W_P 246 values eta)
      (∫ x, (dalembertian (fun y => values y 246) x - realValue (values x) C2_F_W_P_W / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_W_P C2_F_W_P_W 246 EFMWLagrangian.derivative_F_W_P_W values eta hd hi

/-- Real partial derivative for FS-F-W-P-SCALAR-P, source line 356. -/
theorem real_derivative_F_W_P_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_F_W_P / 2)
      (realValue values C2_F_W_P_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_F_W_P C2_F_W_P_P 243 EFMWLagrangian.derivative_F_W_P_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_W_P_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_W_P C2_F_W_P_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_F_W_P_P / 2)) :
    HasDerivAt (actionAlong U2_F_W_P 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_F_W_P_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_W_P C2_F_W_P_P 243 EFMWLagrangian.derivative_F_W_P_P values eta hd hi

/-- Real partial derivative for FS-F-W-A-SCALAR-F, source line 359. -/
theorem real_derivative_F_W_A_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_W_A / 2)
      (realValue values C2_F_W_A_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_W_A C2_F_W_A_F 240 EFMWLagrangian.derivative_F_W_A_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_W_A_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_W_A C2_F_W_A_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_W_A_F / 2)) :
    HasDerivAt (actionAlong U2_F_W_A 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_W_A_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_W_A C2_F_W_A_F 240 EFMWLagrangian.derivative_F_W_A_F values eta hd hi

/-- Real partial derivative for FS-F-W-A-SCALAR-W, source line 360. -/
theorem real_derivative_F_W_A_W (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 246 x) U2_F_W_A / 2)
      (realValue values C2_F_W_A_W / 2) (values 246) :=
  certified_potential_hasDerivAt U2_F_W_A C2_F_W_A_W 246 EFMWLagrangian.derivative_F_W_A_W values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_W_A_W (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_W_A C2_F_W_A_W 246 values eta)
    (hi : IBPConditions (fun x => values x 246) eta (fun x => realValue (values x) C2_F_W_A_W / 2)) :
    HasDerivAt (actionAlong U2_F_W_A 246 values eta)
      (∫ x, (dalembertian (fun y => values y 246) x - realValue (values x) C2_F_W_A_W / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_W_A C2_F_W_A_W 246 EFMWLagrangian.derivative_F_W_A_W values eta hd hi

/-- Real partial derivative for FS-F-W-A-SCALAR-A, source line 361. -/
theorem real_derivative_F_W_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_F_W_A / 2)
      (realValue values C2_F_W_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_F_W_A C2_F_W_A_A 239 EFMWLagrangian.derivative_F_W_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_W_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_W_A C2_F_W_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_F_W_A_A / 2)) :
    HasDerivAt (actionAlong U2_F_W_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_F_W_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_W_A C2_F_W_A_A 239 EFMWLagrangian.derivative_F_W_A_A values eta hd hi

end EFMWContinuum
