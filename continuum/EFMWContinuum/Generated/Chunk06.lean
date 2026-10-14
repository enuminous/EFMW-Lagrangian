import EFMWContinuum.ScalarVariation
import EFMWLagrangian.Generated.Chunk06

namespace EFMWContinuum
open EFMWLagrangian MeasureTheory

/-- Real partial derivative for FS-F-R-H-SCALAR-F, source line 430. -/
theorem real_derivative_F_R_H_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_R_H / 2)
      (realValue values C2_F_R_H_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_R_H C2_F_R_H_F 240 EFMWLagrangian.derivative_F_R_H_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_R_H_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_R_H C2_F_R_H_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_R_H_F / 2)) :
    HasDerivAt (actionAlong U2_F_R_H 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_R_H_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_R_H C2_F_R_H_F 240 EFMWLagrangian.derivative_F_R_H_F values eta hd hi

/-- Real partial derivative for FS-F-R-H-SCALAR-R, source line 431. -/
theorem real_derivative_F_R_H_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_F_R_H / 2)
      (realValue values C2_F_R_H_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_F_R_H C2_F_R_H_R 244 EFMWLagrangian.derivative_F_R_H_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_R_H_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_R_H C2_F_R_H_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_F_R_H_R / 2)) :
    HasDerivAt (actionAlong U2_F_R_H 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_F_R_H_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_R_H C2_F_R_H_R 244 EFMWLagrangian.derivative_F_R_H_R values eta hd hi

/-- Real partial derivative for FS-F-R-H-SCALAR-H, source line 432. -/
theorem real_derivative_F_R_H_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_F_R_H / 2)
      (realValue values C2_F_R_H_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_F_R_H C2_F_R_H_H 241 EFMWLagrangian.derivative_F_R_H_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_R_H_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_R_H C2_F_R_H_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_F_R_H_H / 2)) :
    HasDerivAt (actionAlong U2_F_R_H 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_F_R_H_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_R_H C2_F_R_H_H 241 EFMWLagrangian.derivative_F_R_H_H values eta hd hi

/-- Real partial derivative for FS-F-R-P-SCALAR-F, source line 435. -/
theorem real_derivative_F_R_P_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_R_P / 2)
      (realValue values C2_F_R_P_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_R_P C2_F_R_P_F 240 EFMWLagrangian.derivative_F_R_P_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_R_P_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_R_P C2_F_R_P_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_R_P_F / 2)) :
    HasDerivAt (actionAlong U2_F_R_P 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_R_P_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_R_P C2_F_R_P_F 240 EFMWLagrangian.derivative_F_R_P_F values eta hd hi

/-- Real partial derivative for FS-F-R-P-SCALAR-R, source line 436. -/
theorem real_derivative_F_R_P_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_F_R_P / 2)
      (realValue values C2_F_R_P_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_F_R_P C2_F_R_P_R 244 EFMWLagrangian.derivative_F_R_P_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_R_P_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_R_P C2_F_R_P_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_F_R_P_R / 2)) :
    HasDerivAt (actionAlong U2_F_R_P 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_F_R_P_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_R_P C2_F_R_P_R 244 EFMWLagrangian.derivative_F_R_P_R values eta hd hi

/-- Real partial derivative for FS-F-R-P-SCALAR-P, source line 437. -/
theorem real_derivative_F_R_P_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_F_R_P / 2)
      (realValue values C2_F_R_P_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_F_R_P C2_F_R_P_P 243 EFMWLagrangian.derivative_F_R_P_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_R_P_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_R_P C2_F_R_P_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_F_R_P_P / 2)) :
    HasDerivAt (actionAlong U2_F_R_P 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_F_R_P_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_R_P C2_F_R_P_P 243 EFMWLagrangian.derivative_F_R_P_P values eta hd hi

/-- Real partial derivative for FS-F-R-A-SCALAR-F, source line 440. -/
theorem real_derivative_F_R_A_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_R_A / 2)
      (realValue values C2_F_R_A_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_R_A C2_F_R_A_F 240 EFMWLagrangian.derivative_F_R_A_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_R_A_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_R_A C2_F_R_A_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_R_A_F / 2)) :
    HasDerivAt (actionAlong U2_F_R_A 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_R_A_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_R_A C2_F_R_A_F 240 EFMWLagrangian.derivative_F_R_A_F values eta hd hi

/-- Real partial derivative for FS-F-R-A-SCALAR-R, source line 441. -/
theorem real_derivative_F_R_A_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_F_R_A / 2)
      (realValue values C2_F_R_A_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_F_R_A C2_F_R_A_R 244 EFMWLagrangian.derivative_F_R_A_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_R_A_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_R_A C2_F_R_A_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_F_R_A_R / 2)) :
    HasDerivAt (actionAlong U2_F_R_A 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_F_R_A_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_R_A C2_F_R_A_R 244 EFMWLagrangian.derivative_F_R_A_R values eta hd hi

/-- Real partial derivative for FS-F-R-A-SCALAR-A, source line 442. -/
theorem real_derivative_F_R_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_F_R_A / 2)
      (realValue values C2_F_R_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_F_R_A C2_F_R_A_A 239 EFMWLagrangian.derivative_F_R_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_R_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_R_A C2_F_R_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_F_R_A_A / 2)) :
    HasDerivAt (actionAlong U2_F_R_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_F_R_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_R_A C2_F_R_A_A 239 EFMWLagrangian.derivative_F_R_A_A values eta hd hi

/-- Real partial derivative for FS-F-S-H-SCALAR-F, source line 448. -/
theorem real_derivative_F_S_H_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_S_H / 2)
      (realValue values C2_F_S_H_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_S_H C2_F_S_H_F 240 EFMWLagrangian.derivative_F_S_H_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_S_H_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_S_H C2_F_S_H_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_S_H_F / 2)) :
    HasDerivAt (actionAlong U2_F_S_H 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_S_H_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_S_H C2_F_S_H_F 240 EFMWLagrangian.derivative_F_S_H_F values eta hd hi

/-- Real partial derivative for FS-F-S-H-SCALAR-H, source line 449. -/
theorem real_derivative_F_S_H_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_F_S_H / 2)
      (realValue values C2_F_S_H_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_F_S_H C2_F_S_H_H 241 EFMWLagrangian.derivative_F_S_H_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_S_H_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_S_H C2_F_S_H_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_F_S_H_H / 2)) :
    HasDerivAt (actionAlong U2_F_S_H 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_F_S_H_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_S_H C2_F_S_H_H 241 EFMWLagrangian.derivative_F_S_H_H values eta hd hi

/-- Real partial derivative for FS-F-S-P-SCALAR-F, source line 455. -/
theorem real_derivative_F_S_P_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_S_P / 2)
      (realValue values C2_F_S_P_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_S_P C2_F_S_P_F 240 EFMWLagrangian.derivative_F_S_P_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_S_P_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_S_P C2_F_S_P_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_S_P_F / 2)) :
    HasDerivAt (actionAlong U2_F_S_P 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_S_P_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_S_P C2_F_S_P_F 240 EFMWLagrangian.derivative_F_S_P_F values eta hd hi

/-- Real partial derivative for FS-F-S-P-SCALAR-P, source line 456. -/
theorem real_derivative_F_S_P_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_F_S_P / 2)
      (realValue values C2_F_S_P_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_F_S_P C2_F_S_P_P 243 EFMWLagrangian.derivative_F_S_P_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_S_P_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_S_P C2_F_S_P_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_F_S_P_P / 2)) :
    HasDerivAt (actionAlong U2_F_S_P 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_F_S_P_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_S_P C2_F_S_P_P 243 EFMWLagrangian.derivative_F_S_P_P values eta hd hi

/-- Real partial derivative for FS-F-S-A-SCALAR-F, source line 462. -/
theorem real_derivative_F_S_A_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_S_A / 2)
      (realValue values C2_F_S_A_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_S_A C2_F_S_A_F 240 EFMWLagrangian.derivative_F_S_A_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_S_A_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_S_A C2_F_S_A_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_S_A_F / 2)) :
    HasDerivAt (actionAlong U2_F_S_A 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_S_A_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_S_A C2_F_S_A_F 240 EFMWLagrangian.derivative_F_S_A_F values eta hd hi

/-- Real partial derivative for FS-F-S-A-SCALAR-A, source line 463. -/
theorem real_derivative_F_S_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_F_S_A / 2)
      (realValue values C2_F_S_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_F_S_A C2_F_S_A_A 239 EFMWLagrangian.derivative_F_S_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_S_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_S_A C2_F_S_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_F_S_A_A / 2)) :
    HasDerivAt (actionAlong U2_F_S_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_F_S_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_S_A C2_F_S_A_A 239 EFMWLagrangian.derivative_F_S_A_A values eta hd hi

/-- Real partial derivative for FS-F-H-P-SCALAR-F, source line 466. -/
theorem real_derivative_F_H_P_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_H_P / 2)
      (realValue values C2_F_H_P_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_H_P C2_F_H_P_F 240 EFMWLagrangian.derivative_F_H_P_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_H_P_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_H_P C2_F_H_P_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_H_P_F / 2)) :
    HasDerivAt (actionAlong U2_F_H_P 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_H_P_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_H_P C2_F_H_P_F 240 EFMWLagrangian.derivative_F_H_P_F values eta hd hi

/-- Real partial derivative for FS-F-H-P-SCALAR-H, source line 467. -/
theorem real_derivative_F_H_P_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_F_H_P / 2)
      (realValue values C2_F_H_P_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_F_H_P C2_F_H_P_H 241 EFMWLagrangian.derivative_F_H_P_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_H_P_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_H_P C2_F_H_P_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_F_H_P_H / 2)) :
    HasDerivAt (actionAlong U2_F_H_P 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_F_H_P_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_H_P C2_F_H_P_H 241 EFMWLagrangian.derivative_F_H_P_H values eta hd hi

/-- Real partial derivative for FS-F-H-P-SCALAR-P, source line 468. -/
theorem real_derivative_F_H_P_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_F_H_P / 2)
      (realValue values C2_F_H_P_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_F_H_P C2_F_H_P_P 243 EFMWLagrangian.derivative_F_H_P_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_H_P_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_H_P C2_F_H_P_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_F_H_P_P / 2)) :
    HasDerivAt (actionAlong U2_F_H_P 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_F_H_P_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_H_P C2_F_H_P_P 243 EFMWLagrangian.derivative_F_H_P_P values eta hd hi

/-- Real partial derivative for FS-F-H-A-SCALAR-F, source line 471. -/
theorem real_derivative_F_H_A_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_H_A / 2)
      (realValue values C2_F_H_A_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_H_A C2_F_H_A_F 240 EFMWLagrangian.derivative_F_H_A_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_H_A_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_H_A C2_F_H_A_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_H_A_F / 2)) :
    HasDerivAt (actionAlong U2_F_H_A 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_H_A_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_H_A C2_F_H_A_F 240 EFMWLagrangian.derivative_F_H_A_F values eta hd hi

/-- Real partial derivative for FS-F-H-A-SCALAR-H, source line 472. -/
theorem real_derivative_F_H_A_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_F_H_A / 2)
      (realValue values C2_F_H_A_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_F_H_A C2_F_H_A_H 241 EFMWLagrangian.derivative_F_H_A_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_H_A_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_H_A C2_F_H_A_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_F_H_A_H / 2)) :
    HasDerivAt (actionAlong U2_F_H_A 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_F_H_A_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_H_A C2_F_H_A_H 241 EFMWLagrangian.derivative_F_H_A_H values eta hd hi

/-- Real partial derivative for FS-F-H-A-SCALAR-A, source line 473. -/
theorem real_derivative_F_H_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_F_H_A / 2)
      (realValue values C2_F_H_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_F_H_A C2_F_H_A_A 239 EFMWLagrangian.derivative_F_H_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_H_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_H_A C2_F_H_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_F_H_A_A / 2)) :
    HasDerivAt (actionAlong U2_F_H_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_F_H_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_H_A C2_F_H_A_A 239 EFMWLagrangian.derivative_F_H_A_A values eta hd hi

/-- Real partial derivative for FS-F-P-A-SCALAR-F, source line 476. -/
theorem real_derivative_F_P_A_F (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 240 x) U2_F_P_A / 2)
      (realValue values C2_F_P_A_F / 2) (values 240) :=
  certified_potential_hasDerivAt U2_F_P_A C2_F_P_A_F 240 EFMWLagrangian.derivative_F_P_A_F values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_P_A_F (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_P_A C2_F_P_A_F 240 values eta)
    (hi : IBPConditions (fun x => values x 240) eta (fun x => realValue (values x) C2_F_P_A_F / 2)) :
    HasDerivAt (actionAlong U2_F_P_A 240 values eta)
      (∫ x, (dalembertian (fun y => values y 240) x - realValue (values x) C2_F_P_A_F / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_P_A C2_F_P_A_F 240 EFMWLagrangian.derivative_F_P_A_F values eta hd hi

/-- Real partial derivative for FS-F-P-A-SCALAR-P, source line 477. -/
theorem real_derivative_F_P_A_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_F_P_A / 2)
      (realValue values C2_F_P_A_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_F_P_A C2_F_P_A_P 243 EFMWLagrangian.derivative_F_P_A_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_P_A_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_P_A C2_F_P_A_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_F_P_A_P / 2)) :
    HasDerivAt (actionAlong U2_F_P_A 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_F_P_A_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_P_A C2_F_P_A_P 243 EFMWLagrangian.derivative_F_P_A_P values eta hd hi

/-- Real partial derivative for FS-F-P-A-SCALAR-A, source line 478. -/
theorem real_derivative_F_P_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_F_P_A / 2)
      (realValue values C2_F_P_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_F_P_A C2_F_P_A_A 239 EFMWLagrangian.derivative_F_P_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_F_P_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_F_P_A C2_F_P_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_F_P_A_A / 2)) :
    HasDerivAt (actionAlong U2_F_P_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_F_P_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_F_P_A C2_F_P_A_A 239 EFMWLagrangian.derivative_F_P_A_A values eta hd hi

/-- Real partial derivative for FS-M-W-T-SCALAR-W, source line 484. -/
theorem real_derivative_M_W_T_W (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 246 x) U2_M_W_T / 2)
      (realValue values C2_M_W_T_W / 2) (values 246) :=
  certified_potential_hasDerivAt U2_M_W_T C2_M_W_T_W 246 EFMWLagrangian.derivative_M_W_T_W values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_M_W_T_W (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_M_W_T C2_M_W_T_W 246 values eta)
    (hi : IBPConditions (fun x => values x 246) eta (fun x => realValue (values x) C2_M_W_T_W / 2)) :
    HasDerivAt (actionAlong U2_M_W_T 246 values eta)
      (∫ x, (dalembertian (fun y => values y 246) x - realValue (values x) C2_M_W_T_W / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_M_W_T C2_M_W_T_W 246 EFMWLagrangian.derivative_M_W_T_W values eta hd hi

/-- Real partial derivative for FS-M-W-T-SCALAR-T, source line 485. -/
theorem real_derivative_M_W_T_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_M_W_T / 2)
      (realValue values C2_M_W_T_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_M_W_T C2_M_W_T_T 245 EFMWLagrangian.derivative_M_W_T_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_M_W_T_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_M_W_T C2_M_W_T_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_M_W_T_T / 2)) :
    HasDerivAt (actionAlong U2_M_W_T 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_M_W_T_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_M_W_T C2_M_W_T_T 245 EFMWLagrangian.derivative_M_W_T_T values eta hd hi

/-- Real partial derivative for FS-M-W-I-SCALAR-W, source line 491. -/
theorem real_derivative_M_W_I_W (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 246 x) U2_M_W_I / 2)
      (realValue values C2_M_W_I_W / 2) (values 246) :=
  certified_potential_hasDerivAt U2_M_W_I C2_M_W_I_W 246 EFMWLagrangian.derivative_M_W_I_W values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_M_W_I_W (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_M_W_I C2_M_W_I_W 246 values eta)
    (hi : IBPConditions (fun x => values x 246) eta (fun x => realValue (values x) C2_M_W_I_W / 2)) :
    HasDerivAt (actionAlong U2_M_W_I 246 values eta)
      (∫ x, (dalembertian (fun y => values y 246) x - realValue (values x) C2_M_W_I_W / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_M_W_I C2_M_W_I_W 246 EFMWLagrangian.derivative_M_W_I_W values eta hd hi

/-- Real partial derivative for FS-M-W-I-SCALAR-I, source line 492. -/
theorem real_derivative_M_W_I_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_M_W_I / 2)
      (realValue values C2_M_W_I_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_M_W_I C2_M_W_I_I 242 EFMWLagrangian.derivative_M_W_I_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_M_W_I_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_M_W_I C2_M_W_I_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_M_W_I_I / 2)) :
    HasDerivAt (actionAlong U2_M_W_I 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_M_W_I_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_M_W_I C2_M_W_I_I 242 EFMWLagrangian.derivative_M_W_I_I values eta hd hi

/-- Real partial derivative for FS-M-W-R-SCALAR-W, source line 498. -/
theorem real_derivative_M_W_R_W (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 246 x) U2_M_W_R / 2)
      (realValue values C2_M_W_R_W / 2) (values 246) :=
  certified_potential_hasDerivAt U2_M_W_R C2_M_W_R_W 246 EFMWLagrangian.derivative_M_W_R_W values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_M_W_R_W (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_M_W_R C2_M_W_R_W 246 values eta)
    (hi : IBPConditions (fun x => values x 246) eta (fun x => realValue (values x) C2_M_W_R_W / 2)) :
    HasDerivAt (actionAlong U2_M_W_R 246 values eta)
      (∫ x, (dalembertian (fun y => values y 246) x - realValue (values x) C2_M_W_R_W / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_M_W_R C2_M_W_R_W 246 EFMWLagrangian.derivative_M_W_R_W values eta hd hi

/-- Real partial derivative for FS-M-W-R-SCALAR-R, source line 499. -/
theorem real_derivative_M_W_R_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_M_W_R / 2)
      (realValue values C2_M_W_R_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_M_W_R C2_M_W_R_R 244 EFMWLagrangian.derivative_M_W_R_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_M_W_R_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_M_W_R C2_M_W_R_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_M_W_R_R / 2)) :
    HasDerivAt (actionAlong U2_M_W_R 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_M_W_R_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_M_W_R C2_M_W_R_R 244 EFMWLagrangian.derivative_M_W_R_R values eta hd hi

end EFMWContinuum
