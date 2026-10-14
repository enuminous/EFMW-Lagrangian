import EFMWContinuum.ScalarVariation
import EFMWLagrangian.Generated.Chunk09

namespace EFMWContinuum
open EFMWLagrangian MeasureTheory

/-- Real partial derivative for FS-M-P-A-SCALAR-P, source line 687. -/
theorem real_derivative_M_P_A_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_M_P_A / 2)
      (realValue values C2_M_P_A_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_M_P_A C2_M_P_A_P 243 EFMWLagrangian.derivative_M_P_A_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_M_P_A_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_M_P_A C2_M_P_A_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_M_P_A_P / 2)) :
    HasDerivAt (actionAlong U2_M_P_A 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_M_P_A_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_M_P_A C2_M_P_A_P 243 EFMWLagrangian.derivative_M_P_A_P values eta hd hi

/-- Real partial derivative for FS-M-P-A-SCALAR-A, source line 688. -/
theorem real_derivative_M_P_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_M_P_A / 2)
      (realValue values C2_M_P_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_M_P_A C2_M_P_A_A 239 EFMWLagrangian.derivative_M_P_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_M_P_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_M_P_A C2_M_P_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_M_P_A_A / 2)) :
    HasDerivAt (actionAlong U2_M_P_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_M_P_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_M_P_A C2_M_P_A_A 239 EFMWLagrangian.derivative_M_P_A_A values eta hd hi

/-- Real partial derivative for FS-W-T-I-SCALAR-W, source line 691. -/
theorem real_derivative_W_T_I_W (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 246 x) U2_W_T_I / 2)
      (realValue values C2_W_T_I_W / 2) (values 246) :=
  certified_potential_hasDerivAt U2_W_T_I C2_W_T_I_W 246 EFMWLagrangian.derivative_W_T_I_W values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_T_I_W (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_T_I C2_W_T_I_W 246 values eta)
    (hi : IBPConditions (fun x => values x 246) eta (fun x => realValue (values x) C2_W_T_I_W / 2)) :
    HasDerivAt (actionAlong U2_W_T_I 246 values eta)
      (∫ x, (dalembertian (fun y => values y 246) x - realValue (values x) C2_W_T_I_W / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_T_I C2_W_T_I_W 246 EFMWLagrangian.derivative_W_T_I_W values eta hd hi

/-- Real partial derivative for FS-W-T-I-SCALAR-T, source line 692. -/
theorem real_derivative_W_T_I_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_W_T_I / 2)
      (realValue values C2_W_T_I_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_W_T_I C2_W_T_I_T 245 EFMWLagrangian.derivative_W_T_I_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_T_I_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_T_I C2_W_T_I_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_W_T_I_T / 2)) :
    HasDerivAt (actionAlong U2_W_T_I 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_W_T_I_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_T_I C2_W_T_I_T 245 EFMWLagrangian.derivative_W_T_I_T values eta hd hi

/-- Real partial derivative for FS-W-T-I-SCALAR-I, source line 693. -/
theorem real_derivative_W_T_I_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_W_T_I / 2)
      (realValue values C2_W_T_I_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_W_T_I C2_W_T_I_I 242 EFMWLagrangian.derivative_W_T_I_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_T_I_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_T_I C2_W_T_I_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_W_T_I_I / 2)) :
    HasDerivAt (actionAlong U2_W_T_I 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_W_T_I_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_T_I C2_W_T_I_I 242 EFMWLagrangian.derivative_W_T_I_I values eta hd hi

/-- Real partial derivative for FS-W-T-R-SCALAR-W, source line 696. -/
theorem real_derivative_W_T_R_W (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 246 x) U2_W_T_R / 2)
      (realValue values C2_W_T_R_W / 2) (values 246) :=
  certified_potential_hasDerivAt U2_W_T_R C2_W_T_R_W 246 EFMWLagrangian.derivative_W_T_R_W values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_T_R_W (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_T_R C2_W_T_R_W 246 values eta)
    (hi : IBPConditions (fun x => values x 246) eta (fun x => realValue (values x) C2_W_T_R_W / 2)) :
    HasDerivAt (actionAlong U2_W_T_R 246 values eta)
      (∫ x, (dalembertian (fun y => values y 246) x - realValue (values x) C2_W_T_R_W / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_T_R C2_W_T_R_W 246 EFMWLagrangian.derivative_W_T_R_W values eta hd hi

/-- Real partial derivative for FS-W-T-R-SCALAR-T, source line 697. -/
theorem real_derivative_W_T_R_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_W_T_R / 2)
      (realValue values C2_W_T_R_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_W_T_R C2_W_T_R_T 245 EFMWLagrangian.derivative_W_T_R_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_T_R_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_T_R C2_W_T_R_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_W_T_R_T / 2)) :
    HasDerivAt (actionAlong U2_W_T_R 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_W_T_R_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_T_R C2_W_T_R_T 245 EFMWLagrangian.derivative_W_T_R_T values eta hd hi

/-- Real partial derivative for FS-W-T-R-SCALAR-R, source line 698. -/
theorem real_derivative_W_T_R_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_W_T_R / 2)
      (realValue values C2_W_T_R_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_W_T_R C2_W_T_R_R 244 EFMWLagrangian.derivative_W_T_R_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_T_R_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_T_R C2_W_T_R_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_W_T_R_R / 2)) :
    HasDerivAt (actionAlong U2_W_T_R 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_W_T_R_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_T_R C2_W_T_R_R 244 EFMWLagrangian.derivative_W_T_R_R values eta hd hi

/-- Real partial derivative for FS-W-T-S-SCALAR-W, source line 704. -/
theorem real_derivative_W_T_S_W (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 246 x) U2_W_T_S / 2)
      (realValue values C2_W_T_S_W / 2) (values 246) :=
  certified_potential_hasDerivAt U2_W_T_S C2_W_T_S_W 246 EFMWLagrangian.derivative_W_T_S_W values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_T_S_W (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_T_S C2_W_T_S_W 246 values eta)
    (hi : IBPConditions (fun x => values x 246) eta (fun x => realValue (values x) C2_W_T_S_W / 2)) :
    HasDerivAt (actionAlong U2_W_T_S 246 values eta)
      (∫ x, (dalembertian (fun y => values y 246) x - realValue (values x) C2_W_T_S_W / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_T_S C2_W_T_S_W 246 EFMWLagrangian.derivative_W_T_S_W values eta hd hi

/-- Real partial derivative for FS-W-T-S-SCALAR-T, source line 705. -/
theorem real_derivative_W_T_S_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_W_T_S / 2)
      (realValue values C2_W_T_S_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_W_T_S C2_W_T_S_T 245 EFMWLagrangian.derivative_W_T_S_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_T_S_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_T_S C2_W_T_S_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_W_T_S_T / 2)) :
    HasDerivAt (actionAlong U2_W_T_S 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_W_T_S_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_T_S C2_W_T_S_T 245 EFMWLagrangian.derivative_W_T_S_T values eta hd hi

/-- Real partial derivative for FS-W-T-H-SCALAR-W, source line 708. -/
theorem real_derivative_W_T_H_W (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 246 x) U2_W_T_H / 2)
      (realValue values C2_W_T_H_W / 2) (values 246) :=
  certified_potential_hasDerivAt U2_W_T_H C2_W_T_H_W 246 EFMWLagrangian.derivative_W_T_H_W values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_T_H_W (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_T_H C2_W_T_H_W 246 values eta)
    (hi : IBPConditions (fun x => values x 246) eta (fun x => realValue (values x) C2_W_T_H_W / 2)) :
    HasDerivAt (actionAlong U2_W_T_H 246 values eta)
      (∫ x, (dalembertian (fun y => values y 246) x - realValue (values x) C2_W_T_H_W / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_T_H C2_W_T_H_W 246 EFMWLagrangian.derivative_W_T_H_W values eta hd hi

/-- Real partial derivative for FS-W-T-H-SCALAR-T, source line 709. -/
theorem real_derivative_W_T_H_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_W_T_H / 2)
      (realValue values C2_W_T_H_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_W_T_H C2_W_T_H_T 245 EFMWLagrangian.derivative_W_T_H_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_T_H_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_T_H C2_W_T_H_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_W_T_H_T / 2)) :
    HasDerivAt (actionAlong U2_W_T_H 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_W_T_H_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_T_H C2_W_T_H_T 245 EFMWLagrangian.derivative_W_T_H_T values eta hd hi

/-- Real partial derivative for FS-W-T-H-SCALAR-H, source line 710. -/
theorem real_derivative_W_T_H_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_W_T_H / 2)
      (realValue values C2_W_T_H_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_W_T_H C2_W_T_H_H 241 EFMWLagrangian.derivative_W_T_H_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_T_H_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_T_H C2_W_T_H_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_W_T_H_H / 2)) :
    HasDerivAt (actionAlong U2_W_T_H 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_W_T_H_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_T_H C2_W_T_H_H 241 EFMWLagrangian.derivative_W_T_H_H values eta hd hi

/-- Real partial derivative for FS-W-T-P-SCALAR-W, source line 713. -/
theorem real_derivative_W_T_P_W (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 246 x) U2_W_T_P / 2)
      (realValue values C2_W_T_P_W / 2) (values 246) :=
  certified_potential_hasDerivAt U2_W_T_P C2_W_T_P_W 246 EFMWLagrangian.derivative_W_T_P_W values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_T_P_W (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_T_P C2_W_T_P_W 246 values eta)
    (hi : IBPConditions (fun x => values x 246) eta (fun x => realValue (values x) C2_W_T_P_W / 2)) :
    HasDerivAt (actionAlong U2_W_T_P 246 values eta)
      (∫ x, (dalembertian (fun y => values y 246) x - realValue (values x) C2_W_T_P_W / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_T_P C2_W_T_P_W 246 EFMWLagrangian.derivative_W_T_P_W values eta hd hi

/-- Real partial derivative for FS-W-T-P-SCALAR-T, source line 714. -/
theorem real_derivative_W_T_P_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_W_T_P / 2)
      (realValue values C2_W_T_P_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_W_T_P C2_W_T_P_T 245 EFMWLagrangian.derivative_W_T_P_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_T_P_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_T_P C2_W_T_P_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_W_T_P_T / 2)) :
    HasDerivAt (actionAlong U2_W_T_P 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_W_T_P_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_T_P C2_W_T_P_T 245 EFMWLagrangian.derivative_W_T_P_T values eta hd hi

/-- Real partial derivative for FS-W-T-P-SCALAR-P, source line 715. -/
theorem real_derivative_W_T_P_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_W_T_P / 2)
      (realValue values C2_W_T_P_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_W_T_P C2_W_T_P_P 243 EFMWLagrangian.derivative_W_T_P_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_T_P_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_T_P C2_W_T_P_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_W_T_P_P / 2)) :
    HasDerivAt (actionAlong U2_W_T_P 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_W_T_P_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_T_P C2_W_T_P_P 243 EFMWLagrangian.derivative_W_T_P_P values eta hd hi

/-- Real partial derivative for FS-W-T-A-SCALAR-W, source line 718. -/
theorem real_derivative_W_T_A_W (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 246 x) U2_W_T_A / 2)
      (realValue values C2_W_T_A_W / 2) (values 246) :=
  certified_potential_hasDerivAt U2_W_T_A C2_W_T_A_W 246 EFMWLagrangian.derivative_W_T_A_W values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_T_A_W (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_T_A C2_W_T_A_W 246 values eta)
    (hi : IBPConditions (fun x => values x 246) eta (fun x => realValue (values x) C2_W_T_A_W / 2)) :
    HasDerivAt (actionAlong U2_W_T_A 246 values eta)
      (∫ x, (dalembertian (fun y => values y 246) x - realValue (values x) C2_W_T_A_W / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_T_A C2_W_T_A_W 246 EFMWLagrangian.derivative_W_T_A_W values eta hd hi

/-- Real partial derivative for FS-W-T-A-SCALAR-T, source line 719. -/
theorem real_derivative_W_T_A_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_W_T_A / 2)
      (realValue values C2_W_T_A_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_W_T_A C2_W_T_A_T 245 EFMWLagrangian.derivative_W_T_A_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_T_A_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_T_A C2_W_T_A_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_W_T_A_T / 2)) :
    HasDerivAt (actionAlong U2_W_T_A 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_W_T_A_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_T_A C2_W_T_A_T 245 EFMWLagrangian.derivative_W_T_A_T values eta hd hi

/-- Real partial derivative for FS-W-T-A-SCALAR-A, source line 720. -/
theorem real_derivative_W_T_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_W_T_A / 2)
      (realValue values C2_W_T_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_W_T_A C2_W_T_A_A 239 EFMWLagrangian.derivative_W_T_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_T_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_T_A C2_W_T_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_W_T_A_A / 2)) :
    HasDerivAt (actionAlong U2_W_T_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_W_T_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_T_A C2_W_T_A_A 239 EFMWLagrangian.derivative_W_T_A_A values eta hd hi

/-- Real partial derivative for FS-W-I-R-SCALAR-W, source line 723. -/
theorem real_derivative_W_I_R_W (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 246 x) U2_W_I_R / 2)
      (realValue values C2_W_I_R_W / 2) (values 246) :=
  certified_potential_hasDerivAt U2_W_I_R C2_W_I_R_W 246 EFMWLagrangian.derivative_W_I_R_W values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_I_R_W (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_I_R C2_W_I_R_W 246 values eta)
    (hi : IBPConditions (fun x => values x 246) eta (fun x => realValue (values x) C2_W_I_R_W / 2)) :
    HasDerivAt (actionAlong U2_W_I_R 246 values eta)
      (∫ x, (dalembertian (fun y => values y 246) x - realValue (values x) C2_W_I_R_W / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_I_R C2_W_I_R_W 246 EFMWLagrangian.derivative_W_I_R_W values eta hd hi

/-- Real partial derivative for FS-W-I-R-SCALAR-I, source line 724. -/
theorem real_derivative_W_I_R_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_W_I_R / 2)
      (realValue values C2_W_I_R_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_W_I_R C2_W_I_R_I 242 EFMWLagrangian.derivative_W_I_R_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_I_R_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_I_R C2_W_I_R_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_W_I_R_I / 2)) :
    HasDerivAt (actionAlong U2_W_I_R 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_W_I_R_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_I_R C2_W_I_R_I 242 EFMWLagrangian.derivative_W_I_R_I values eta hd hi

/-- Real partial derivative for FS-W-I-R-SCALAR-R, source line 725. -/
theorem real_derivative_W_I_R_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_W_I_R / 2)
      (realValue values C2_W_I_R_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_W_I_R C2_W_I_R_R 244 EFMWLagrangian.derivative_W_I_R_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_I_R_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_I_R C2_W_I_R_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_W_I_R_R / 2)) :
    HasDerivAt (actionAlong U2_W_I_R 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_W_I_R_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_I_R C2_W_I_R_R 244 EFMWLagrangian.derivative_W_I_R_R values eta hd hi

/-- Real partial derivative for FS-W-I-S-SCALAR-W, source line 731. -/
theorem real_derivative_W_I_S_W (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 246 x) U2_W_I_S / 2)
      (realValue values C2_W_I_S_W / 2) (values 246) :=
  certified_potential_hasDerivAt U2_W_I_S C2_W_I_S_W 246 EFMWLagrangian.derivative_W_I_S_W values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_I_S_W (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_I_S C2_W_I_S_W 246 values eta)
    (hi : IBPConditions (fun x => values x 246) eta (fun x => realValue (values x) C2_W_I_S_W / 2)) :
    HasDerivAt (actionAlong U2_W_I_S 246 values eta)
      (∫ x, (dalembertian (fun y => values y 246) x - realValue (values x) C2_W_I_S_W / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_I_S C2_W_I_S_W 246 EFMWLagrangian.derivative_W_I_S_W values eta hd hi

/-- Real partial derivative for FS-W-I-S-SCALAR-I, source line 732. -/
theorem real_derivative_W_I_S_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_W_I_S / 2)
      (realValue values C2_W_I_S_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_W_I_S C2_W_I_S_I 242 EFMWLagrangian.derivative_W_I_S_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_I_S_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_I_S C2_W_I_S_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_W_I_S_I / 2)) :
    HasDerivAt (actionAlong U2_W_I_S 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_W_I_S_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_I_S C2_W_I_S_I 242 EFMWLagrangian.derivative_W_I_S_I values eta hd hi

/-- Real partial derivative for FS-W-I-H-SCALAR-W, source line 735. -/
theorem real_derivative_W_I_H_W (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 246 x) U2_W_I_H / 2)
      (realValue values C2_W_I_H_W / 2) (values 246) :=
  certified_potential_hasDerivAt U2_W_I_H C2_W_I_H_W 246 EFMWLagrangian.derivative_W_I_H_W values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_I_H_W (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_I_H C2_W_I_H_W 246 values eta)
    (hi : IBPConditions (fun x => values x 246) eta (fun x => realValue (values x) C2_W_I_H_W / 2)) :
    HasDerivAt (actionAlong U2_W_I_H 246 values eta)
      (∫ x, (dalembertian (fun y => values y 246) x - realValue (values x) C2_W_I_H_W / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_I_H C2_W_I_H_W 246 EFMWLagrangian.derivative_W_I_H_W values eta hd hi

/-- Real partial derivative for FS-W-I-H-SCALAR-I, source line 736. -/
theorem real_derivative_W_I_H_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_W_I_H / 2)
      (realValue values C2_W_I_H_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_W_I_H C2_W_I_H_I 242 EFMWLagrangian.derivative_W_I_H_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_I_H_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_I_H C2_W_I_H_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_W_I_H_I / 2)) :
    HasDerivAt (actionAlong U2_W_I_H 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_W_I_H_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_I_H C2_W_I_H_I 242 EFMWLagrangian.derivative_W_I_H_I values eta hd hi

/-- Real partial derivative for FS-W-I-H-SCALAR-H, source line 737. -/
theorem real_derivative_W_I_H_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_W_I_H / 2)
      (realValue values C2_W_I_H_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_W_I_H C2_W_I_H_H 241 EFMWLagrangian.derivative_W_I_H_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_I_H_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_I_H C2_W_I_H_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_W_I_H_H / 2)) :
    HasDerivAt (actionAlong U2_W_I_H 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_W_I_H_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_I_H C2_W_I_H_H 241 EFMWLagrangian.derivative_W_I_H_H values eta hd hi

/-- Real partial derivative for FS-W-I-P-SCALAR-W, source line 740. -/
theorem real_derivative_W_I_P_W (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 246 x) U2_W_I_P / 2)
      (realValue values C2_W_I_P_W / 2) (values 246) :=
  certified_potential_hasDerivAt U2_W_I_P C2_W_I_P_W 246 EFMWLagrangian.derivative_W_I_P_W values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_I_P_W (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_I_P C2_W_I_P_W 246 values eta)
    (hi : IBPConditions (fun x => values x 246) eta (fun x => realValue (values x) C2_W_I_P_W / 2)) :
    HasDerivAt (actionAlong U2_W_I_P 246 values eta)
      (∫ x, (dalembertian (fun y => values y 246) x - realValue (values x) C2_W_I_P_W / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_I_P C2_W_I_P_W 246 EFMWLagrangian.derivative_W_I_P_W values eta hd hi

/-- Real partial derivative for FS-W-I-P-SCALAR-I, source line 741. -/
theorem real_derivative_W_I_P_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_W_I_P / 2)
      (realValue values C2_W_I_P_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_W_I_P C2_W_I_P_I 242 EFMWLagrangian.derivative_W_I_P_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_I_P_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_I_P C2_W_I_P_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_W_I_P_I / 2)) :
    HasDerivAt (actionAlong U2_W_I_P 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_W_I_P_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_I_P C2_W_I_P_I 242 EFMWLagrangian.derivative_W_I_P_I values eta hd hi

/-- Real partial derivative for FS-W-I-P-SCALAR-P, source line 742. -/
theorem real_derivative_W_I_P_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_W_I_P / 2)
      (realValue values C2_W_I_P_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_W_I_P C2_W_I_P_P 243 EFMWLagrangian.derivative_W_I_P_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_I_P_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_I_P C2_W_I_P_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_W_I_P_P / 2)) :
    HasDerivAt (actionAlong U2_W_I_P 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_W_I_P_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_I_P C2_W_I_P_P 243 EFMWLagrangian.derivative_W_I_P_P values eta hd hi

/-- Real partial derivative for FS-W-I-A-SCALAR-W, source line 745. -/
theorem real_derivative_W_I_A_W (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 246 x) U2_W_I_A / 2)
      (realValue values C2_W_I_A_W / 2) (values 246) :=
  certified_potential_hasDerivAt U2_W_I_A C2_W_I_A_W 246 EFMWLagrangian.derivative_W_I_A_W values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_I_A_W (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_I_A C2_W_I_A_W 246 values eta)
    (hi : IBPConditions (fun x => values x 246) eta (fun x => realValue (values x) C2_W_I_A_W / 2)) :
    HasDerivAt (actionAlong U2_W_I_A 246 values eta)
      (∫ x, (dalembertian (fun y => values y 246) x - realValue (values x) C2_W_I_A_W / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_I_A C2_W_I_A_W 246 EFMWLagrangian.derivative_W_I_A_W values eta hd hi

/-- Real partial derivative for FS-W-I-A-SCALAR-I, source line 746. -/
theorem real_derivative_W_I_A_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_W_I_A / 2)
      (realValue values C2_W_I_A_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_W_I_A C2_W_I_A_I 242 EFMWLagrangian.derivative_W_I_A_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_I_A_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_I_A C2_W_I_A_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_W_I_A_I / 2)) :
    HasDerivAt (actionAlong U2_W_I_A 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_W_I_A_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_I_A C2_W_I_A_I 242 EFMWLagrangian.derivative_W_I_A_I values eta hd hi

/-- Real partial derivative for FS-W-I-A-SCALAR-A, source line 747. -/
theorem real_derivative_W_I_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_W_I_A / 2)
      (realValue values C2_W_I_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_W_I_A C2_W_I_A_A 239 EFMWLagrangian.derivative_W_I_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_W_I_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_W_I_A C2_W_I_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_W_I_A_A / 2)) :
    HasDerivAt (actionAlong U2_W_I_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_W_I_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_W_I_A C2_W_I_A_A 239 EFMWLagrangian.derivative_W_I_A_A values eta hd hi

end EFMWContinuum
