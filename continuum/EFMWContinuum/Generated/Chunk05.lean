import EFMWContinuum.ScalarVariation
import EFMWLagrangian.Generated.Chunk05

namespace EFMWContinuum
open EFMWLagrangian MeasureTheory

/-- Real partial derivative for FS-F-T-I-SCALAR-F, source line 364. -/
theorem real_derivative_F_T_I_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_T_I / 2)
      (realValue values C2_F_T_I_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_T_I C2_F_T_I_F 240 EFMWLagrangian.derivative_F_T_I_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_T_I_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_T_I C2_F_T_I_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_T_I_F / 2)) :
    HasDerivAt (actionAlong U2_F_T_I 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_T_I_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_T_I C2_F_T_I_F 240 EFMWLagrangian.derivative_F_T_I_F values eta hd hi

/-- Real partial derivative for FS-F-T-I-SCALAR-T, source line 365. -/
theorem real_derivative_F_T_I_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_F_T_I / 2)
      (realValue values C2_F_T_I_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_F_T_I C2_F_T_I_T 245 EFMWLagrangian.derivative_F_T_I_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_T_I_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_T_I C2_F_T_I_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_F_T_I_T / 2)) :
    HasDerivAt (actionAlong U2_F_T_I 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_F_T_I_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_T_I C2_F_T_I_T 245 EFMWLagrangian.derivative_F_T_I_T values eta hd hi

/-- Real partial derivative for FS-F-T-I-SCALAR-I, source line 366. -/
theorem real_derivative_F_T_I_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_F_T_I / 2)
      (realValue values C2_F_T_I_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_F_T_I C2_F_T_I_I 242 EFMWLagrangian.derivative_F_T_I_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_T_I_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_T_I C2_F_T_I_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_F_T_I_I / 2)) :
    HasDerivAt (actionAlong U2_F_T_I 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_F_T_I_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_T_I C2_F_T_I_I 242 EFMWLagrangian.derivative_F_T_I_I values eta hd hi

/-- Real partial derivative for FS-F-T-R-SCALAR-F, source line 369. -/
theorem real_derivative_F_T_R_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_T_R / 2)
      (realValue values C2_F_T_R_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_T_R C2_F_T_R_F 240 EFMWLagrangian.derivative_F_T_R_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_T_R_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_T_R C2_F_T_R_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_T_R_F / 2)) :
    HasDerivAt (actionAlong U2_F_T_R 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_T_R_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_T_R C2_F_T_R_F 240 EFMWLagrangian.derivative_F_T_R_F values eta hd hi

/-- Real partial derivative for FS-F-T-R-SCALAR-T, source line 370. -/
theorem real_derivative_F_T_R_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_F_T_R / 2)
      (realValue values C2_F_T_R_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_F_T_R C2_F_T_R_T 245 EFMWLagrangian.derivative_F_T_R_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_T_R_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_T_R C2_F_T_R_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_F_T_R_T / 2)) :
    HasDerivAt (actionAlong U2_F_T_R 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_F_T_R_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_T_R C2_F_T_R_T 245 EFMWLagrangian.derivative_F_T_R_T values eta hd hi

/-- Real partial derivative for FS-F-T-R-SCALAR-R, source line 371. -/
theorem real_derivative_F_T_R_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_F_T_R / 2)
      (realValue values C2_F_T_R_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_F_T_R C2_F_T_R_R 244 EFMWLagrangian.derivative_F_T_R_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_T_R_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_T_R C2_F_T_R_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_F_T_R_R / 2)) :
    HasDerivAt (actionAlong U2_F_T_R 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_F_T_R_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_T_R C2_F_T_R_R 244 EFMWLagrangian.derivative_F_T_R_R values eta hd hi

/-- Real partial derivative for FS-F-T-S-SCALAR-F, source line 377. -/
theorem real_derivative_F_T_S_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_T_S / 2)
      (realValue values C2_F_T_S_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_T_S C2_F_T_S_F 240 EFMWLagrangian.derivative_F_T_S_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_T_S_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_T_S C2_F_T_S_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_T_S_F / 2)) :
    HasDerivAt (actionAlong U2_F_T_S 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_T_S_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_T_S C2_F_T_S_F 240 EFMWLagrangian.derivative_F_T_S_F values eta hd hi

/-- Real partial derivative for FS-F-T-S-SCALAR-T, source line 378. -/
theorem real_derivative_F_T_S_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_F_T_S / 2)
      (realValue values C2_F_T_S_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_F_T_S C2_F_T_S_T 245 EFMWLagrangian.derivative_F_T_S_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_T_S_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_T_S C2_F_T_S_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_F_T_S_T / 2)) :
    HasDerivAt (actionAlong U2_F_T_S 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_F_T_S_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_T_S C2_F_T_S_T 245 EFMWLagrangian.derivative_F_T_S_T values eta hd hi

/-- Real partial derivative for FS-F-T-H-SCALAR-F, source line 381. -/
theorem real_derivative_F_T_H_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_T_H / 2)
      (realValue values C2_F_T_H_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_T_H C2_F_T_H_F 240 EFMWLagrangian.derivative_F_T_H_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_T_H_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_T_H C2_F_T_H_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_T_H_F / 2)) :
    HasDerivAt (actionAlong U2_F_T_H 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_T_H_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_T_H C2_F_T_H_F 240 EFMWLagrangian.derivative_F_T_H_F values eta hd hi

/-- Real partial derivative for FS-F-T-H-SCALAR-T, source line 382. -/
theorem real_derivative_F_T_H_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_F_T_H / 2)
      (realValue values C2_F_T_H_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_F_T_H C2_F_T_H_T 245 EFMWLagrangian.derivative_F_T_H_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_T_H_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_T_H C2_F_T_H_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_F_T_H_T / 2)) :
    HasDerivAt (actionAlong U2_F_T_H 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_F_T_H_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_T_H C2_F_T_H_T 245 EFMWLagrangian.derivative_F_T_H_T values eta hd hi

/-- Real partial derivative for FS-F-T-H-SCALAR-H, source line 383. -/
theorem real_derivative_F_T_H_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_F_T_H / 2)
      (realValue values C2_F_T_H_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_F_T_H C2_F_T_H_H 241 EFMWLagrangian.derivative_F_T_H_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_T_H_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_T_H C2_F_T_H_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_F_T_H_H / 2)) :
    HasDerivAt (actionAlong U2_F_T_H 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_F_T_H_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_T_H C2_F_T_H_H 241 EFMWLagrangian.derivative_F_T_H_H values eta hd hi

/-- Real partial derivative for FS-F-T-P-SCALAR-F, source line 386. -/
theorem real_derivative_F_T_P_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_T_P / 2)
      (realValue values C2_F_T_P_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_T_P C2_F_T_P_F 240 EFMWLagrangian.derivative_F_T_P_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_T_P_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_T_P C2_F_T_P_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_T_P_F / 2)) :
    HasDerivAt (actionAlong U2_F_T_P 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_T_P_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_T_P C2_F_T_P_F 240 EFMWLagrangian.derivative_F_T_P_F values eta hd hi

/-- Real partial derivative for FS-F-T-P-SCALAR-T, source line 387. -/
theorem real_derivative_F_T_P_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_F_T_P / 2)
      (realValue values C2_F_T_P_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_F_T_P C2_F_T_P_T 245 EFMWLagrangian.derivative_F_T_P_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_T_P_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_T_P C2_F_T_P_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_F_T_P_T / 2)) :
    HasDerivAt (actionAlong U2_F_T_P 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_F_T_P_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_T_P C2_F_T_P_T 245 EFMWLagrangian.derivative_F_T_P_T values eta hd hi

/-- Real partial derivative for FS-F-T-P-SCALAR-P, source line 388. -/
theorem real_derivative_F_T_P_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_F_T_P / 2)
      (realValue values C2_F_T_P_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_F_T_P C2_F_T_P_P 243 EFMWLagrangian.derivative_F_T_P_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_T_P_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_T_P C2_F_T_P_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_F_T_P_P / 2)) :
    HasDerivAt (actionAlong U2_F_T_P 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_F_T_P_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_T_P C2_F_T_P_P 243 EFMWLagrangian.derivative_F_T_P_P values eta hd hi

/-- Real partial derivative for FS-F-T-A-SCALAR-F, source line 391. -/
theorem real_derivative_F_T_A_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_T_A / 2)
      (realValue values C2_F_T_A_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_T_A C2_F_T_A_F 240 EFMWLagrangian.derivative_F_T_A_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_T_A_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_T_A C2_F_T_A_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_T_A_F / 2)) :
    HasDerivAt (actionAlong U2_F_T_A 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_T_A_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_T_A C2_F_T_A_F 240 EFMWLagrangian.derivative_F_T_A_F values eta hd hi

/-- Real partial derivative for FS-F-T-A-SCALAR-T, source line 392. -/
theorem real_derivative_F_T_A_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_F_T_A / 2)
      (realValue values C2_F_T_A_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_F_T_A C2_F_T_A_T 245 EFMWLagrangian.derivative_F_T_A_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_T_A_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_T_A C2_F_T_A_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_F_T_A_T / 2)) :
    HasDerivAt (actionAlong U2_F_T_A 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_F_T_A_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_T_A C2_F_T_A_T 245 EFMWLagrangian.derivative_F_T_A_T values eta hd hi

/-- Real partial derivative for FS-F-T-A-SCALAR-A, source line 393. -/
theorem real_derivative_F_T_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_F_T_A / 2)
      (realValue values C2_F_T_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_F_T_A C2_F_T_A_A 239 EFMWLagrangian.derivative_F_T_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_T_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_T_A C2_F_T_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_F_T_A_A / 2)) :
    HasDerivAt (actionAlong U2_F_T_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_F_T_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_T_A C2_F_T_A_A 239 EFMWLagrangian.derivative_F_T_A_A values eta hd hi

/-- Real partial derivative for FS-F-I-R-SCALAR-F, source line 396. -/
theorem real_derivative_F_I_R_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_I_R / 2)
      (realValue values C2_F_I_R_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_I_R C2_F_I_R_F 240 EFMWLagrangian.derivative_F_I_R_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_I_R_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_I_R C2_F_I_R_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_I_R_F / 2)) :
    HasDerivAt (actionAlong U2_F_I_R 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_I_R_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_I_R C2_F_I_R_F 240 EFMWLagrangian.derivative_F_I_R_F values eta hd hi

/-- Real partial derivative for FS-F-I-R-SCALAR-I, source line 397. -/
theorem real_derivative_F_I_R_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_F_I_R / 2)
      (realValue values C2_F_I_R_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_F_I_R C2_F_I_R_I 242 EFMWLagrangian.derivative_F_I_R_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_I_R_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_I_R C2_F_I_R_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_F_I_R_I / 2)) :
    HasDerivAt (actionAlong U2_F_I_R 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_F_I_R_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_I_R C2_F_I_R_I 242 EFMWLagrangian.derivative_F_I_R_I values eta hd hi

/-- Real partial derivative for FS-F-I-R-SCALAR-R, source line 398. -/
theorem real_derivative_F_I_R_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_F_I_R / 2)
      (realValue values C2_F_I_R_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_F_I_R C2_F_I_R_R 244 EFMWLagrangian.derivative_F_I_R_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_I_R_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_I_R C2_F_I_R_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_F_I_R_R / 2)) :
    HasDerivAt (actionAlong U2_F_I_R 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_F_I_R_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_I_R C2_F_I_R_R 244 EFMWLagrangian.derivative_F_I_R_R values eta hd hi

/-- Real partial derivative for FS-F-I-S-SCALAR-F, source line 404. -/
theorem real_derivative_F_I_S_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_I_S / 2)
      (realValue values C2_F_I_S_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_I_S C2_F_I_S_F 240 EFMWLagrangian.derivative_F_I_S_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_I_S_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_I_S C2_F_I_S_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_I_S_F / 2)) :
    HasDerivAt (actionAlong U2_F_I_S 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_I_S_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_I_S C2_F_I_S_F 240 EFMWLagrangian.derivative_F_I_S_F values eta hd hi

/-- Real partial derivative for FS-F-I-S-SCALAR-I, source line 405. -/
theorem real_derivative_F_I_S_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_F_I_S / 2)
      (realValue values C2_F_I_S_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_F_I_S C2_F_I_S_I 242 EFMWLagrangian.derivative_F_I_S_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_I_S_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_I_S C2_F_I_S_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_F_I_S_I / 2)) :
    HasDerivAt (actionAlong U2_F_I_S 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_F_I_S_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_I_S C2_F_I_S_I 242 EFMWLagrangian.derivative_F_I_S_I values eta hd hi

/-- Real partial derivative for FS-F-I-H-SCALAR-F, source line 408. -/
theorem real_derivative_F_I_H_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_I_H / 2)
      (realValue values C2_F_I_H_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_I_H C2_F_I_H_F 240 EFMWLagrangian.derivative_F_I_H_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_I_H_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_I_H C2_F_I_H_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_I_H_F / 2)) :
    HasDerivAt (actionAlong U2_F_I_H 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_I_H_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_I_H C2_F_I_H_F 240 EFMWLagrangian.derivative_F_I_H_F values eta hd hi

/-- Real partial derivative for FS-F-I-H-SCALAR-I, source line 409. -/
theorem real_derivative_F_I_H_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_F_I_H / 2)
      (realValue values C2_F_I_H_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_F_I_H C2_F_I_H_I 242 EFMWLagrangian.derivative_F_I_H_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_I_H_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_I_H C2_F_I_H_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_F_I_H_I / 2)) :
    HasDerivAt (actionAlong U2_F_I_H 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_F_I_H_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_I_H C2_F_I_H_I 242 EFMWLagrangian.derivative_F_I_H_I values eta hd hi

/-- Real partial derivative for FS-F-I-H-SCALAR-H, source line 410. -/
theorem real_derivative_F_I_H_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_F_I_H / 2)
      (realValue values C2_F_I_H_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_F_I_H C2_F_I_H_H 241 EFMWLagrangian.derivative_F_I_H_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_I_H_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_I_H C2_F_I_H_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_F_I_H_H / 2)) :
    HasDerivAt (actionAlong U2_F_I_H 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_F_I_H_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_I_H C2_F_I_H_H 241 EFMWLagrangian.derivative_F_I_H_H values eta hd hi

/-- Real partial derivative for FS-F-I-P-SCALAR-F, source line 413. -/
theorem real_derivative_F_I_P_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_I_P / 2)
      (realValue values C2_F_I_P_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_I_P C2_F_I_P_F 240 EFMWLagrangian.derivative_F_I_P_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_I_P_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_I_P C2_F_I_P_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_I_P_F / 2)) :
    HasDerivAt (actionAlong U2_F_I_P 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_I_P_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_I_P C2_F_I_P_F 240 EFMWLagrangian.derivative_F_I_P_F values eta hd hi

/-- Real partial derivative for FS-F-I-P-SCALAR-I, source line 414. -/
theorem real_derivative_F_I_P_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_F_I_P / 2)
      (realValue values C2_F_I_P_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_F_I_P C2_F_I_P_I 242 EFMWLagrangian.derivative_F_I_P_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_I_P_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_I_P C2_F_I_P_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_F_I_P_I / 2)) :
    HasDerivAt (actionAlong U2_F_I_P 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_F_I_P_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_I_P C2_F_I_P_I 242 EFMWLagrangian.derivative_F_I_P_I values eta hd hi

/-- Real partial derivative for FS-F-I-P-SCALAR-P, source line 415. -/
theorem real_derivative_F_I_P_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_F_I_P / 2)
      (realValue values C2_F_I_P_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_F_I_P C2_F_I_P_P 243 EFMWLagrangian.derivative_F_I_P_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_I_P_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_I_P C2_F_I_P_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_F_I_P_P / 2)) :
    HasDerivAt (actionAlong U2_F_I_P 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_F_I_P_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_I_P C2_F_I_P_P 243 EFMWLagrangian.derivative_F_I_P_P values eta hd hi

/-- Real partial derivative for FS-F-I-A-SCALAR-F, source line 418. -/
theorem real_derivative_F_I_A_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_I_A / 2)
      (realValue values C2_F_I_A_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_I_A C2_F_I_A_F 240 EFMWLagrangian.derivative_F_I_A_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_I_A_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_I_A C2_F_I_A_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_I_A_F / 2)) :
    HasDerivAt (actionAlong U2_F_I_A 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_I_A_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_I_A C2_F_I_A_F 240 EFMWLagrangian.derivative_F_I_A_F values eta hd hi

/-- Real partial derivative for FS-F-I-A-SCALAR-I, source line 419. -/
theorem real_derivative_F_I_A_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_F_I_A / 2)
      (realValue values C2_F_I_A_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_F_I_A C2_F_I_A_I 242 EFMWLagrangian.derivative_F_I_A_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_I_A_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_I_A C2_F_I_A_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_F_I_A_I / 2)) :
    HasDerivAt (actionAlong U2_F_I_A 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_F_I_A_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_I_A C2_F_I_A_I 242 EFMWLagrangian.derivative_F_I_A_I values eta hd hi

/-- Real partial derivative for FS-F-I-A-SCALAR-A, source line 420. -/
theorem real_derivative_F_I_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_F_I_A / 2)
      (realValue values C2_F_I_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_F_I_A C2_F_I_A_A 239 EFMWLagrangian.derivative_F_I_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_I_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_I_A C2_F_I_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_F_I_A_A / 2)) :
    HasDerivAt (actionAlong U2_F_I_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_F_I_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_I_A C2_F_I_A_A 239 EFMWLagrangian.derivative_F_I_A_A values eta hd hi

/-- Real partial derivative for FS-F-R-S-SCALAR-F, source line 426. -/
theorem real_derivative_F_R_S_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_R_S / 2)
      (realValue values C2_F_R_S_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_R_S C2_F_R_S_F 240 EFMWLagrangian.derivative_F_R_S_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_R_S_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_R_S C2_F_R_S_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_R_S_F / 2)) :
    HasDerivAt (actionAlong U2_F_R_S 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_R_S_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_R_S C2_F_R_S_F 240 EFMWLagrangian.derivative_F_R_S_F values eta hd hi

/-- Real partial derivative for FS-F-R-S-SCALAR-R, source line 427. -/
theorem real_derivative_F_R_S_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_F_R_S / 2)
      (realValue values C2_F_R_S_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_F_R_S C2_F_R_S_R 244 EFMWLagrangian.derivative_F_R_S_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_R_S_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_R_S C2_F_R_S_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_F_R_S_R / 2)) :
    HasDerivAt (actionAlong U2_F_R_S 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_F_R_S_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_R_S C2_F_R_S_R 244 EFMWLagrangian.derivative_F_R_S_R values eta hd hi

end EFMWContinuum
