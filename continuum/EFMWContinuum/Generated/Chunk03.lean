import EFMWContinuum.ScalarVariation
import EFMWLagrangian.Generated.Chunk03

namespace EFMWContinuum
open EFMWLagrangian MeasureTheory

/-- Real partial derivative for FS-E-R-H-SCALAR-R, source line 219. -/
theorem real_derivative_E_R_H_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_E_R_H / 2)
      (realValue values C2_E_R_H_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_E_R_H C2_E_R_H_R 244 EFMWLagrangian.derivative_E_R_H_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_R_H_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_R_H C2_E_R_H_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_E_R_H_R / 2)) :
    HasDerivAt (actionAlong U2_E_R_H 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_E_R_H_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_R_H C2_E_R_H_R 244 EFMWLagrangian.derivative_E_R_H_R values eta hd hi

/-- Real partial derivative for FS-E-R-H-SCALAR-H, source line 220. -/
theorem real_derivative_E_R_H_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_E_R_H / 2)
      (realValue values C2_E_R_H_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_E_R_H C2_E_R_H_H 241 EFMWLagrangian.derivative_E_R_H_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_R_H_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_R_H C2_E_R_H_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_E_R_H_H / 2)) :
    HasDerivAt (actionAlong U2_E_R_H 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_E_R_H_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_R_H C2_E_R_H_H 241 EFMWLagrangian.derivative_E_R_H_H values eta hd hi

/-- Real partial derivative for FS-E-R-P-SCALAR-R, source line 224. -/
theorem real_derivative_E_R_P_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_E_R_P / 2)
      (realValue values C2_E_R_P_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_E_R_P C2_E_R_P_R 244 EFMWLagrangian.derivative_E_R_P_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_R_P_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_R_P C2_E_R_P_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_E_R_P_R / 2)) :
    HasDerivAt (actionAlong U2_E_R_P 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_E_R_P_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_R_P C2_E_R_P_R 244 EFMWLagrangian.derivative_E_R_P_R values eta hd hi

/-- Real partial derivative for FS-E-R-P-SCALAR-P, source line 225. -/
theorem real_derivative_E_R_P_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_E_R_P / 2)
      (realValue values C2_E_R_P_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_E_R_P C2_E_R_P_P 243 EFMWLagrangian.derivative_E_R_P_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_R_P_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_R_P C2_E_R_P_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_E_R_P_P / 2)) :
    HasDerivAt (actionAlong U2_E_R_P 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_E_R_P_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_R_P C2_E_R_P_P 243 EFMWLagrangian.derivative_E_R_P_P values eta hd hi

/-- Real partial derivative for FS-E-R-A-SCALAR-R, source line 229. -/
theorem real_derivative_E_R_A_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_E_R_A / 2)
      (realValue values C2_E_R_A_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_E_R_A C2_E_R_A_R 244 EFMWLagrangian.derivative_E_R_A_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_R_A_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_R_A C2_E_R_A_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_E_R_A_R / 2)) :
    HasDerivAt (actionAlong U2_E_R_A 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_E_R_A_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_R_A C2_E_R_A_R 244 EFMWLagrangian.derivative_E_R_A_R values eta hd hi

/-- Real partial derivative for FS-E-R-A-SCALAR-A, source line 230. -/
theorem real_derivative_E_R_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_E_R_A / 2)
      (realValue values C2_E_R_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_E_R_A C2_E_R_A_A 239 EFMWLagrangian.derivative_E_R_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_R_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_R_A C2_E_R_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_E_R_A_A / 2)) :
    HasDerivAt (actionAlong U2_E_R_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_E_R_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_R_A C2_E_R_A_A 239 EFMWLagrangian.derivative_E_R_A_A values eta hd hi

/-- Real partial derivative for FS-E-S-H-SCALAR-H, source line 237. -/
theorem real_derivative_E_S_H_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_E_S_H / 2)
      (realValue values C2_E_S_H_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_E_S_H C2_E_S_H_H 241 EFMWLagrangian.derivative_E_S_H_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_S_H_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_S_H C2_E_S_H_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_E_S_H_H / 2)) :
    HasDerivAt (actionAlong U2_E_S_H 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_E_S_H_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_S_H C2_E_S_H_H 241 EFMWLagrangian.derivative_E_S_H_H values eta hd hi

/-- Real partial derivative for FS-E-S-P-SCALAR-P, source line 244. -/
theorem real_derivative_E_S_P_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_E_S_P / 2)
      (realValue values C2_E_S_P_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_E_S_P C2_E_S_P_P 243 EFMWLagrangian.derivative_E_S_P_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_S_P_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_S_P C2_E_S_P_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_E_S_P_P / 2)) :
    HasDerivAt (actionAlong U2_E_S_P 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_E_S_P_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_S_P C2_E_S_P_P 243 EFMWLagrangian.derivative_E_S_P_P values eta hd hi

/-- Real partial derivative for FS-E-S-A-SCALAR-A, source line 251. -/
theorem real_derivative_E_S_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_E_S_A / 2)
      (realValue values C2_E_S_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_E_S_A C2_E_S_A_A 239 EFMWLagrangian.derivative_E_S_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_S_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_S_A C2_E_S_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_E_S_A_A / 2)) :
    HasDerivAt (actionAlong U2_E_S_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_E_S_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_S_A C2_E_S_A_A 239 EFMWLagrangian.derivative_E_S_A_A values eta hd hi

/-- Real partial derivative for FS-E-H-P-SCALAR-H, source line 255. -/
theorem real_derivative_E_H_P_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_E_H_P / 2)
      (realValue values C2_E_H_P_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_E_H_P C2_E_H_P_H 241 EFMWLagrangian.derivative_E_H_P_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_H_P_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_H_P C2_E_H_P_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_E_H_P_H / 2)) :
    HasDerivAt (actionAlong U2_E_H_P 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_E_H_P_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_H_P C2_E_H_P_H 241 EFMWLagrangian.derivative_E_H_P_H values eta hd hi

/-- Real partial derivative for FS-E-H-P-SCALAR-P, source line 256. -/
theorem real_derivative_E_H_P_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_E_H_P / 2)
      (realValue values C2_E_H_P_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_E_H_P C2_E_H_P_P 243 EFMWLagrangian.derivative_E_H_P_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_H_P_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_H_P C2_E_H_P_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_E_H_P_P / 2)) :
    HasDerivAt (actionAlong U2_E_H_P 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_E_H_P_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_H_P C2_E_H_P_P 243 EFMWLagrangian.derivative_E_H_P_P values eta hd hi

/-- Real partial derivative for FS-E-H-A-SCALAR-H, source line 260. -/
theorem real_derivative_E_H_A_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_E_H_A / 2)
      (realValue values C2_E_H_A_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_E_H_A C2_E_H_A_H 241 EFMWLagrangian.derivative_E_H_A_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_H_A_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_H_A C2_E_H_A_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_E_H_A_H / 2)) :
    HasDerivAt (actionAlong U2_E_H_A 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_E_H_A_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_H_A C2_E_H_A_H 241 EFMWLagrangian.derivative_E_H_A_H values eta hd hi

/-- Real partial derivative for FS-E-H-A-SCALAR-A, source line 261. -/
theorem real_derivative_E_H_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_E_H_A / 2)
      (realValue values C2_E_H_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_E_H_A C2_E_H_A_A 239 EFMWLagrangian.derivative_E_H_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_H_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_H_A C2_E_H_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_E_H_A_A / 2)) :
    HasDerivAt (actionAlong U2_E_H_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_E_H_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_H_A C2_E_H_A_A 239 EFMWLagrangian.derivative_E_H_A_A values eta hd hi

/-- Real partial derivative for FS-E-P-A-SCALAR-P, source line 265. -/
theorem real_derivative_E_P_A_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_E_P_A / 2)
      (realValue values C2_E_P_A_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_E_P_A C2_E_P_A_P 243 EFMWLagrangian.derivative_E_P_A_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_P_A_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_P_A C2_E_P_A_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_E_P_A_P / 2)) :
    HasDerivAt (actionAlong U2_E_P_A 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_E_P_A_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_P_A C2_E_P_A_P 243 EFMWLagrangian.derivative_E_P_A_P values eta hd hi

/-- Real partial derivative for FS-E-P-A-SCALAR-A, source line 266. -/
theorem real_derivative_E_P_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_E_P_A / 2)
      (realValue values C2_E_P_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_E_P_A C2_E_P_A_A 239 EFMWLagrangian.derivative_E_P_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_E_P_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_E_P_A C2_E_P_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_E_P_A_A / 2)) :
    HasDerivAt (actionAlong U2_E_P_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_E_P_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_E_P_A C2_E_P_A_A 239 EFMWLagrangian.derivative_E_P_A_A values eta hd hi

/-- Real partial derivative for FS-F-M-W-SCALAR-F, source line 272. -/
theorem real_derivative_F_M_W_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_M_W / 2)
      (realValue values C2_F_M_W_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_M_W C2_F_M_W_F 240 EFMWLagrangian.derivative_F_M_W_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_M_W_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_M_W C2_F_M_W_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_M_W_F / 2)) :
    HasDerivAt (actionAlong U2_F_M_W 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_M_W_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_M_W C2_F_M_W_F 240 EFMWLagrangian.derivative_F_M_W_F values eta hd hi

/-- Real partial derivative for FS-F-M-W-SCALAR-W, source line 273. -/
theorem real_derivative_F_M_W_W (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 246 x) U2_F_M_W / 2)
      (realValue values C2_F_M_W_W / 2) (values 246) :=
  certified_potential_hasDerivAt U2_F_M_W C2_F_M_W_W 246 EFMWLagrangian.derivative_F_M_W_W values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_M_W_W (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_M_W C2_F_M_W_W 246 values eta)
    (hi : IBPConditions (fun x => values x 246) eta (fun x => realValue (values x) C2_F_M_W_W / 2)) :
    HasDerivAt (actionAlong U2_F_M_W 246 values eta)
      (∫ x, (dalembertian (fun y => values y 246) x - realValue (values x) C2_F_M_W_W / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_M_W C2_F_M_W_W 246 EFMWLagrangian.derivative_F_M_W_W values eta hd hi

/-- Real partial derivative for FS-F-M-T-SCALAR-F, source line 279. -/
theorem real_derivative_F_M_T_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_M_T / 2)
      (realValue values C2_F_M_T_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_M_T C2_F_M_T_F 240 EFMWLagrangian.derivative_F_M_T_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_M_T_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_M_T C2_F_M_T_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_M_T_F / 2)) :
    HasDerivAt (actionAlong U2_F_M_T 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_M_T_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_M_T C2_F_M_T_F 240 EFMWLagrangian.derivative_F_M_T_F values eta hd hi

/-- Real partial derivative for FS-F-M-T-SCALAR-T, source line 280. -/
theorem real_derivative_F_M_T_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_F_M_T / 2)
      (realValue values C2_F_M_T_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_F_M_T C2_F_M_T_T 245 EFMWLagrangian.derivative_F_M_T_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_M_T_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_M_T C2_F_M_T_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_F_M_T_T / 2)) :
    HasDerivAt (actionAlong U2_F_M_T 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_F_M_T_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_M_T C2_F_M_T_T 245 EFMWLagrangian.derivative_F_M_T_T values eta hd hi

/-- Real partial derivative for FS-F-M-I-SCALAR-F, source line 286. -/
theorem real_derivative_F_M_I_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_M_I / 2)
      (realValue values C2_F_M_I_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_M_I C2_F_M_I_F 240 EFMWLagrangian.derivative_F_M_I_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_M_I_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_M_I C2_F_M_I_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_M_I_F / 2)) :
    HasDerivAt (actionAlong U2_F_M_I 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_M_I_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_M_I C2_F_M_I_F 240 EFMWLagrangian.derivative_F_M_I_F values eta hd hi

/-- Real partial derivative for FS-F-M-I-SCALAR-I, source line 287. -/
theorem real_derivative_F_M_I_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_F_M_I / 2)
      (realValue values C2_F_M_I_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_F_M_I C2_F_M_I_I 242 EFMWLagrangian.derivative_F_M_I_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_M_I_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_M_I C2_F_M_I_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_F_M_I_I / 2)) :
    HasDerivAt (actionAlong U2_F_M_I 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_F_M_I_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_M_I C2_F_M_I_I 242 EFMWLagrangian.derivative_F_M_I_I values eta hd hi

end EFMWContinuum
