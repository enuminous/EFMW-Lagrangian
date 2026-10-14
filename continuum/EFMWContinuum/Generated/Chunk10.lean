import EFMWContinuum.ScalarVariation
import EFMWLagrangian.Generated.Chunk10

namespace EFMWContinuum
open EFMWLagrangian MeasureTheory

/-- Real partial derivative for FS-W-R-S-SCALAR-W, source line 753. -/
theorem real_derivative_W_R_S_W (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 246 x) U2_W_R_S / 2)
      (realValue values C2_W_R_S_W / 2) (values 246) :=
  certified_potential_hasDerivAt U2_W_R_S C2_W_R_S_W 246 EFMWLagrangian.derivative_W_R_S_W values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_R_S_W (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_R_S C2_W_R_S_W 246 values eta)
    (hi : IBPConditions (fun x => values x 246) eta (fun x => realValue (values x) C2_W_R_S_W / 2)) :
    HasDerivAt (actionAlong U2_W_R_S 246 values eta)
      (∫ x, (dalembertian (fun y => values y 246) x - realValue (values x) C2_W_R_S_W / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_R_S C2_W_R_S_W 246 EFMWLagrangian.derivative_W_R_S_W values eta hd hi

/-- Real partial derivative for FS-W-R-S-SCALAR-R, source line 754. -/
theorem real_derivative_W_R_S_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_W_R_S / 2)
      (realValue values C2_W_R_S_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_W_R_S C2_W_R_S_R 244 EFMWLagrangian.derivative_W_R_S_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_R_S_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_R_S C2_W_R_S_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_W_R_S_R / 2)) :
    HasDerivAt (actionAlong U2_W_R_S 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_W_R_S_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_R_S C2_W_R_S_R 244 EFMWLagrangian.derivative_W_R_S_R values eta hd hi

/-- Real partial derivative for FS-W-R-H-SCALAR-W, source line 757. -/
theorem real_derivative_W_R_H_W (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 246 x) U2_W_R_H / 2)
      (realValue values C2_W_R_H_W / 2) (values 246) :=
  certified_potential_hasDerivAt U2_W_R_H C2_W_R_H_W 246 EFMWLagrangian.derivative_W_R_H_W values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_R_H_W (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_R_H C2_W_R_H_W 246 values eta)
    (hi : IBPConditions (fun x => values x 246) eta (fun x => realValue (values x) C2_W_R_H_W / 2)) :
    HasDerivAt (actionAlong U2_W_R_H 246 values eta)
      (∫ x, (dalembertian (fun y => values y 246) x - realValue (values x) C2_W_R_H_W / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_R_H C2_W_R_H_W 246 EFMWLagrangian.derivative_W_R_H_W values eta hd hi

/-- Real partial derivative for FS-W-R-H-SCALAR-R, source line 758. -/
theorem real_derivative_W_R_H_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_W_R_H / 2)
      (realValue values C2_W_R_H_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_W_R_H C2_W_R_H_R 244 EFMWLagrangian.derivative_W_R_H_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_R_H_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_R_H C2_W_R_H_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_W_R_H_R / 2)) :
    HasDerivAt (actionAlong U2_W_R_H 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_W_R_H_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_R_H C2_W_R_H_R 244 EFMWLagrangian.derivative_W_R_H_R values eta hd hi

/-- Real partial derivative for FS-W-R-H-SCALAR-H, source line 759. -/
theorem real_derivative_W_R_H_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_W_R_H / 2)
      (realValue values C2_W_R_H_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_W_R_H C2_W_R_H_H 241 EFMWLagrangian.derivative_W_R_H_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_R_H_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_R_H C2_W_R_H_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_W_R_H_H / 2)) :
    HasDerivAt (actionAlong U2_W_R_H 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_W_R_H_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_R_H C2_W_R_H_H 241 EFMWLagrangian.derivative_W_R_H_H values eta hd hi

/-- Real partial derivative for FS-W-R-P-SCALAR-W, source line 762. -/
theorem real_derivative_W_R_P_W (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 246 x) U2_W_R_P / 2)
      (realValue values C2_W_R_P_W / 2) (values 246) :=
  certified_potential_hasDerivAt U2_W_R_P C2_W_R_P_W 246 EFMWLagrangian.derivative_W_R_P_W values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_R_P_W (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_R_P C2_W_R_P_W 246 values eta)
    (hi : IBPConditions (fun x => values x 246) eta (fun x => realValue (values x) C2_W_R_P_W / 2)) :
    HasDerivAt (actionAlong U2_W_R_P 246 values eta)
      (∫ x, (dalembertian (fun y => values y 246) x - realValue (values x) C2_W_R_P_W / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_R_P C2_W_R_P_W 246 EFMWLagrangian.derivative_W_R_P_W values eta hd hi

/-- Real partial derivative for FS-W-R-P-SCALAR-R, source line 763. -/
theorem real_derivative_W_R_P_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_W_R_P / 2)
      (realValue values C2_W_R_P_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_W_R_P C2_W_R_P_R 244 EFMWLagrangian.derivative_W_R_P_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_R_P_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_R_P C2_W_R_P_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_W_R_P_R / 2)) :
    HasDerivAt (actionAlong U2_W_R_P 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_W_R_P_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_R_P C2_W_R_P_R 244 EFMWLagrangian.derivative_W_R_P_R values eta hd hi

/-- Real partial derivative for FS-W-R-P-SCALAR-P, source line 764. -/
theorem real_derivative_W_R_P_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_W_R_P / 2)
      (realValue values C2_W_R_P_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_W_R_P C2_W_R_P_P 243 EFMWLagrangian.derivative_W_R_P_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_R_P_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_R_P C2_W_R_P_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_W_R_P_P / 2)) :
    HasDerivAt (actionAlong U2_W_R_P 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_W_R_P_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_R_P C2_W_R_P_P 243 EFMWLagrangian.derivative_W_R_P_P values eta hd hi

/-- Real partial derivative for FS-W-R-A-SCALAR-W, source line 767. -/
theorem real_derivative_W_R_A_W (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 246 x) U2_W_R_A / 2)
      (realValue values C2_W_R_A_W / 2) (values 246) :=
  certified_potential_hasDerivAt U2_W_R_A C2_W_R_A_W 246 EFMWLagrangian.derivative_W_R_A_W values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_R_A_W (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_R_A C2_W_R_A_W 246 values eta)
    (hi : IBPConditions (fun x => values x 246) eta (fun x => realValue (values x) C2_W_R_A_W / 2)) :
    HasDerivAt (actionAlong U2_W_R_A 246 values eta)
      (∫ x, (dalembertian (fun y => values y 246) x - realValue (values x) C2_W_R_A_W / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_R_A C2_W_R_A_W 246 EFMWLagrangian.derivative_W_R_A_W values eta hd hi

/-- Real partial derivative for FS-W-R-A-SCALAR-R, source line 768. -/
theorem real_derivative_W_R_A_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_W_R_A / 2)
      (realValue values C2_W_R_A_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_W_R_A C2_W_R_A_R 244 EFMWLagrangian.derivative_W_R_A_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_R_A_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_R_A C2_W_R_A_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_W_R_A_R / 2)) :
    HasDerivAt (actionAlong U2_W_R_A 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_W_R_A_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_R_A C2_W_R_A_R 244 EFMWLagrangian.derivative_W_R_A_R values eta hd hi

/-- Real partial derivative for FS-W-R-A-SCALAR-A, source line 769. -/
theorem real_derivative_W_R_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_W_R_A / 2)
      (realValue values C2_W_R_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_W_R_A C2_W_R_A_A 239 EFMWLagrangian.derivative_W_R_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_R_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_R_A C2_W_R_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_W_R_A_A / 2)) :
    HasDerivAt (actionAlong U2_W_R_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_W_R_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_R_A C2_W_R_A_A 239 EFMWLagrangian.derivative_W_R_A_A values eta hd hi

/-- Real partial derivative for FS-W-S-H-SCALAR-W, source line 775. -/
theorem real_derivative_W_S_H_W (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 246 x) U2_W_S_H / 2)
      (realValue values C2_W_S_H_W / 2) (values 246) :=
  certified_potential_hasDerivAt U2_W_S_H C2_W_S_H_W 246 EFMWLagrangian.derivative_W_S_H_W values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_S_H_W (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_S_H C2_W_S_H_W 246 values eta)
    (hi : IBPConditions (fun x => values x 246) eta (fun x => realValue (values x) C2_W_S_H_W / 2)) :
    HasDerivAt (actionAlong U2_W_S_H 246 values eta)
      (∫ x, (dalembertian (fun y => values y 246) x - realValue (values x) C2_W_S_H_W / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_S_H C2_W_S_H_W 246 EFMWLagrangian.derivative_W_S_H_W values eta hd hi

/-- Real partial derivative for FS-W-S-H-SCALAR-H, source line 776. -/
theorem real_derivative_W_S_H_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_W_S_H / 2)
      (realValue values C2_W_S_H_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_W_S_H C2_W_S_H_H 241 EFMWLagrangian.derivative_W_S_H_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_S_H_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_S_H C2_W_S_H_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_W_S_H_H / 2)) :
    HasDerivAt (actionAlong U2_W_S_H 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_W_S_H_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_S_H C2_W_S_H_H 241 EFMWLagrangian.derivative_W_S_H_H values eta hd hi

/-- Real partial derivative for FS-W-S-P-SCALAR-W, source line 782. -/
theorem real_derivative_W_S_P_W (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 246 x) U2_W_S_P / 2)
      (realValue values C2_W_S_P_W / 2) (values 246) :=
  certified_potential_hasDerivAt U2_W_S_P C2_W_S_P_W 246 EFMWLagrangian.derivative_W_S_P_W values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_S_P_W (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_S_P C2_W_S_P_W 246 values eta)
    (hi : IBPConditions (fun x => values x 246) eta (fun x => realValue (values x) C2_W_S_P_W / 2)) :
    HasDerivAt (actionAlong U2_W_S_P 246 values eta)
      (∫ x, (dalembertian (fun y => values y 246) x - realValue (values x) C2_W_S_P_W / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_S_P C2_W_S_P_W 246 EFMWLagrangian.derivative_W_S_P_W values eta hd hi

/-- Real partial derivative for FS-W-S-P-SCALAR-P, source line 783. -/
theorem real_derivative_W_S_P_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_W_S_P / 2)
      (realValue values C2_W_S_P_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_W_S_P C2_W_S_P_P 243 EFMWLagrangian.derivative_W_S_P_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_S_P_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_S_P C2_W_S_P_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_W_S_P_P / 2)) :
    HasDerivAt (actionAlong U2_W_S_P 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_W_S_P_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_S_P C2_W_S_P_P 243 EFMWLagrangian.derivative_W_S_P_P values eta hd hi

/-- Real partial derivative for FS-W-S-A-SCALAR-W, source line 789. -/
theorem real_derivative_W_S_A_W (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 246 x) U2_W_S_A / 2)
      (realValue values C2_W_S_A_W / 2) (values 246) :=
  certified_potential_hasDerivAt U2_W_S_A C2_W_S_A_W 246 EFMWLagrangian.derivative_W_S_A_W values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_S_A_W (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_S_A C2_W_S_A_W 246 values eta)
    (hi : IBPConditions (fun x => values x 246) eta (fun x => realValue (values x) C2_W_S_A_W / 2)) :
    HasDerivAt (actionAlong U2_W_S_A 246 values eta)
      (∫ x, (dalembertian (fun y => values y 246) x - realValue (values x) C2_W_S_A_W / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_S_A C2_W_S_A_W 246 EFMWLagrangian.derivative_W_S_A_W values eta hd hi

/-- Real partial derivative for FS-W-S-A-SCALAR-A, source line 790. -/
theorem real_derivative_W_S_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_W_S_A / 2)
      (realValue values C2_W_S_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_W_S_A C2_W_S_A_A 239 EFMWLagrangian.derivative_W_S_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_S_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_S_A C2_W_S_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_W_S_A_A / 2)) :
    HasDerivAt (actionAlong U2_W_S_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_W_S_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_S_A C2_W_S_A_A 239 EFMWLagrangian.derivative_W_S_A_A values eta hd hi

/-- Real partial derivative for FS-W-H-P-SCALAR-W, source line 793. -/
theorem real_derivative_W_H_P_W (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 246 x) U2_W_H_P / 2)
      (realValue values C2_W_H_P_W / 2) (values 246) :=
  certified_potential_hasDerivAt U2_W_H_P C2_W_H_P_W 246 EFMWLagrangian.derivative_W_H_P_W values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_H_P_W (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_H_P C2_W_H_P_W 246 values eta)
    (hi : IBPConditions (fun x => values x 246) eta (fun x => realValue (values x) C2_W_H_P_W / 2)) :
    HasDerivAt (actionAlong U2_W_H_P 246 values eta)
      (∫ x, (dalembertian (fun y => values y 246) x - realValue (values x) C2_W_H_P_W / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_H_P C2_W_H_P_W 246 EFMWLagrangian.derivative_W_H_P_W values eta hd hi

/-- Real partial derivative for FS-W-H-P-SCALAR-H, source line 794. -/
theorem real_derivative_W_H_P_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_W_H_P / 2)
      (realValue values C2_W_H_P_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_W_H_P C2_W_H_P_H 241 EFMWLagrangian.derivative_W_H_P_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_H_P_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_H_P C2_W_H_P_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_W_H_P_H / 2)) :
    HasDerivAt (actionAlong U2_W_H_P 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_W_H_P_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_H_P C2_W_H_P_H 241 EFMWLagrangian.derivative_W_H_P_H values eta hd hi

/-- Real partial derivative for FS-W-H-P-SCALAR-P, source line 795. -/
theorem real_derivative_W_H_P_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_W_H_P / 2)
      (realValue values C2_W_H_P_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_W_H_P C2_W_H_P_P 243 EFMWLagrangian.derivative_W_H_P_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_H_P_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_H_P C2_W_H_P_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_W_H_P_P / 2)) :
    HasDerivAt (actionAlong U2_W_H_P 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_W_H_P_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_H_P C2_W_H_P_P 243 EFMWLagrangian.derivative_W_H_P_P values eta hd hi

/-- Real partial derivative for FS-W-H-A-SCALAR-W, source line 798. -/
theorem real_derivative_W_H_A_W (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 246 x) U2_W_H_A / 2)
      (realValue values C2_W_H_A_W / 2) (values 246) :=
  certified_potential_hasDerivAt U2_W_H_A C2_W_H_A_W 246 EFMWLagrangian.derivative_W_H_A_W values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_H_A_W (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_H_A C2_W_H_A_W 246 values eta)
    (hi : IBPConditions (fun x => values x 246) eta (fun x => realValue (values x) C2_W_H_A_W / 2)) :
    HasDerivAt (actionAlong U2_W_H_A 246 values eta)
      (∫ x, (dalembertian (fun y => values y 246) x - realValue (values x) C2_W_H_A_W / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_H_A C2_W_H_A_W 246 EFMWLagrangian.derivative_W_H_A_W values eta hd hi

/-- Real partial derivative for FS-W-H-A-SCALAR-H, source line 799. -/
theorem real_derivative_W_H_A_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_W_H_A / 2)
      (realValue values C2_W_H_A_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_W_H_A C2_W_H_A_H 241 EFMWLagrangian.derivative_W_H_A_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_H_A_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_H_A C2_W_H_A_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_W_H_A_H / 2)) :
    HasDerivAt (actionAlong U2_W_H_A 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_W_H_A_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_H_A C2_W_H_A_H 241 EFMWLagrangian.derivative_W_H_A_H values eta hd hi

/-- Real partial derivative for FS-W-H-A-SCALAR-A, source line 800. -/
theorem real_derivative_W_H_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_W_H_A / 2)
      (realValue values C2_W_H_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_W_H_A C2_W_H_A_A 239 EFMWLagrangian.derivative_W_H_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_H_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_H_A C2_W_H_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_W_H_A_A / 2)) :
    HasDerivAt (actionAlong U2_W_H_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_W_H_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_H_A C2_W_H_A_A 239 EFMWLagrangian.derivative_W_H_A_A values eta hd hi

/-- Real partial derivative for FS-W-P-A-SCALAR-W, source line 803. -/
theorem real_derivative_W_P_A_W (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 246 x) U2_W_P_A / 2)
      (realValue values C2_W_P_A_W / 2) (values 246) :=
  certified_potential_hasDerivAt U2_W_P_A C2_W_P_A_W 246 EFMWLagrangian.derivative_W_P_A_W values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_P_A_W (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_P_A C2_W_P_A_W 246 values eta)
    (hi : IBPConditions (fun x => values x 246) eta (fun x => realValue (values x) C2_W_P_A_W / 2)) :
    HasDerivAt (actionAlong U2_W_P_A 246 values eta)
      (∫ x, (dalembertian (fun y => values y 246) x - realValue (values x) C2_W_P_A_W / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_P_A C2_W_P_A_W 246 EFMWLagrangian.derivative_W_P_A_W values eta hd hi

/-- Real partial derivative for FS-W-P-A-SCALAR-P, source line 804. -/
theorem real_derivative_W_P_A_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_W_P_A / 2)
      (realValue values C2_W_P_A_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_W_P_A C2_W_P_A_P 243 EFMWLagrangian.derivative_W_P_A_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_P_A_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_P_A C2_W_P_A_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_W_P_A_P / 2)) :
    HasDerivAt (actionAlong U2_W_P_A 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_W_P_A_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_P_A C2_W_P_A_P 243 EFMWLagrangian.derivative_W_P_A_P values eta hd hi

/-- Real partial derivative for FS-W-P-A-SCALAR-A, source line 805. -/
theorem real_derivative_W_P_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_W_P_A / 2)
      (realValue values C2_W_P_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_W_P_A C2_W_P_A_A 239 EFMWLagrangian.derivative_W_P_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_P_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_P_A C2_W_P_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_W_P_A_A / 2)) :
    HasDerivAt (actionAlong U2_W_P_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_W_P_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_P_A C2_W_P_A_A 239 EFMWLagrangian.derivative_W_P_A_A values eta hd hi

/-- Real partial derivative for FS-T-I-R-SCALAR-T, source line 808. -/
theorem real_derivative_T_I_R_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_T_I_R / 2)
      (realValue values C2_T_I_R_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_T_I_R C2_T_I_R_T 245 EFMWLagrangian.derivative_T_I_R_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_I_R_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_I_R C2_T_I_R_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_T_I_R_T / 2)) :
    HasDerivAt (actionAlong U2_T_I_R 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_T_I_R_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_I_R C2_T_I_R_T 245 EFMWLagrangian.derivative_T_I_R_T values eta hd hi

/-- Real partial derivative for FS-T-I-R-SCALAR-I, source line 809. -/
theorem real_derivative_T_I_R_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_T_I_R / 2)
      (realValue values C2_T_I_R_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_T_I_R C2_T_I_R_I 242 EFMWLagrangian.derivative_T_I_R_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_I_R_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_I_R C2_T_I_R_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_T_I_R_I / 2)) :
    HasDerivAt (actionAlong U2_T_I_R 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_T_I_R_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_I_R C2_T_I_R_I 242 EFMWLagrangian.derivative_T_I_R_I values eta hd hi

/-- Real partial derivative for FS-T-I-R-SCALAR-R, source line 810. -/
theorem real_derivative_T_I_R_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_T_I_R / 2)
      (realValue values C2_T_I_R_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_T_I_R C2_T_I_R_R 244 EFMWLagrangian.derivative_T_I_R_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_I_R_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_I_R C2_T_I_R_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_T_I_R_R / 2)) :
    HasDerivAt (actionAlong U2_T_I_R 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_T_I_R_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_I_R C2_T_I_R_R 244 EFMWLagrangian.derivative_T_I_R_R values eta hd hi

/-- Real partial derivative for FS-T-I-S-SCALAR-T, source line 816. -/
theorem real_derivative_T_I_S_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_T_I_S / 2)
      (realValue values C2_T_I_S_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_T_I_S C2_T_I_S_T 245 EFMWLagrangian.derivative_T_I_S_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_I_S_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_I_S C2_T_I_S_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_T_I_S_T / 2)) :
    HasDerivAt (actionAlong U2_T_I_S 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_T_I_S_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_I_S C2_T_I_S_T 245 EFMWLagrangian.derivative_T_I_S_T values eta hd hi

/-- Real partial derivative for FS-T-I-S-SCALAR-I, source line 817. -/
theorem real_derivative_T_I_S_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_T_I_S / 2)
      (realValue values C2_T_I_S_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_T_I_S C2_T_I_S_I 242 EFMWLagrangian.derivative_T_I_S_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_I_S_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_I_S C2_T_I_S_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_T_I_S_I / 2)) :
    HasDerivAt (actionAlong U2_T_I_S 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_T_I_S_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_I_S C2_T_I_S_I 242 EFMWLagrangian.derivative_T_I_S_I values eta hd hi

end EFMWContinuum
