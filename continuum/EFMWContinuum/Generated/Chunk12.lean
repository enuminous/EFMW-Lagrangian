import EFMWContinuum.ScalarVariation
import EFMWLagrangian.Generated.Chunk12

namespace EFMWContinuum
open EFMWLagrangian MeasureTheory

/-- Real partial derivative for FS-T-P-A-SCALAR-T, source line 888. -/
theorem real_derivative_T_P_A_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_T_P_A / 2)
      (realValue values C2_T_P_A_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_T_P_A C2_T_P_A_T 245 EFMWLagrangian.derivative_T_P_A_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_P_A_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_P_A C2_T_P_A_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_T_P_A_T / 2)) :
    HasDerivAt (actionAlong U2_T_P_A 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_T_P_A_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_P_A C2_T_P_A_T 245 EFMWLagrangian.derivative_T_P_A_T values eta hd hi

/-- Real partial derivative for FS-T-P-A-SCALAR-P, source line 889. -/
theorem real_derivative_T_P_A_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_T_P_A / 2)
      (realValue values C2_T_P_A_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_T_P_A C2_T_P_A_P 243 EFMWLagrangian.derivative_T_P_A_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_P_A_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_P_A C2_T_P_A_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_T_P_A_P / 2)) :
    HasDerivAt (actionAlong U2_T_P_A 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_T_P_A_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_P_A C2_T_P_A_P 243 EFMWLagrangian.derivative_T_P_A_P values eta hd hi

/-- Real partial derivative for FS-T-P-A-SCALAR-A, source line 890. -/
theorem real_derivative_T_P_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_T_P_A / 2)
      (realValue values C2_T_P_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_T_P_A C2_T_P_A_A 239 EFMWLagrangian.derivative_T_P_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_P_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_P_A C2_T_P_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_T_P_A_A / 2)) :
    HasDerivAt (actionAlong U2_T_P_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_T_P_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_P_A C2_T_P_A_A 239 EFMWLagrangian.derivative_T_P_A_A values eta hd hi

/-- Real partial derivative for FS-I-R-S-SCALAR-I, source line 896. -/
theorem real_derivative_I_R_S_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_I_R_S / 2)
      (realValue values C2_I_R_S_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_I_R_S C2_I_R_S_I 242 EFMWLagrangian.derivative_I_R_S_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_I_R_S_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_I_R_S C2_I_R_S_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_I_R_S_I / 2)) :
    HasDerivAt (actionAlong U2_I_R_S 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_I_R_S_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_I_R_S C2_I_R_S_I 242 EFMWLagrangian.derivative_I_R_S_I values eta hd hi

/-- Real partial derivative for FS-I-R-S-SCALAR-R, source line 897. -/
theorem real_derivative_I_R_S_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_I_R_S / 2)
      (realValue values C2_I_R_S_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_I_R_S C2_I_R_S_R 244 EFMWLagrangian.derivative_I_R_S_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_I_R_S_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_I_R_S C2_I_R_S_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_I_R_S_R / 2)) :
    HasDerivAt (actionAlong U2_I_R_S 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_I_R_S_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_I_R_S C2_I_R_S_R 244 EFMWLagrangian.derivative_I_R_S_R values eta hd hi

/-- Real partial derivative for FS-I-R-H-SCALAR-I, source line 900. -/
theorem real_derivative_I_R_H_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_I_R_H / 2)
      (realValue values C2_I_R_H_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_I_R_H C2_I_R_H_I 242 EFMWLagrangian.derivative_I_R_H_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_I_R_H_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_I_R_H C2_I_R_H_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_I_R_H_I / 2)) :
    HasDerivAt (actionAlong U2_I_R_H 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_I_R_H_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_I_R_H C2_I_R_H_I 242 EFMWLagrangian.derivative_I_R_H_I values eta hd hi

/-- Real partial derivative for FS-I-R-H-SCALAR-R, source line 901. -/
theorem real_derivative_I_R_H_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_I_R_H / 2)
      (realValue values C2_I_R_H_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_I_R_H C2_I_R_H_R 244 EFMWLagrangian.derivative_I_R_H_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_I_R_H_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_I_R_H C2_I_R_H_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_I_R_H_R / 2)) :
    HasDerivAt (actionAlong U2_I_R_H 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_I_R_H_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_I_R_H C2_I_R_H_R 244 EFMWLagrangian.derivative_I_R_H_R values eta hd hi

/-- Real partial derivative for FS-I-R-H-SCALAR-H, source line 902. -/
theorem real_derivative_I_R_H_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_I_R_H / 2)
      (realValue values C2_I_R_H_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_I_R_H C2_I_R_H_H 241 EFMWLagrangian.derivative_I_R_H_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_I_R_H_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_I_R_H C2_I_R_H_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_I_R_H_H / 2)) :
    HasDerivAt (actionAlong U2_I_R_H 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_I_R_H_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_I_R_H C2_I_R_H_H 241 EFMWLagrangian.derivative_I_R_H_H values eta hd hi

/-- Real partial derivative for FS-I-R-P-SCALAR-I, source line 905. -/
theorem real_derivative_I_R_P_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_I_R_P / 2)
      (realValue values C2_I_R_P_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_I_R_P C2_I_R_P_I 242 EFMWLagrangian.derivative_I_R_P_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_I_R_P_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_I_R_P C2_I_R_P_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_I_R_P_I / 2)) :
    HasDerivAt (actionAlong U2_I_R_P 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_I_R_P_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_I_R_P C2_I_R_P_I 242 EFMWLagrangian.derivative_I_R_P_I values eta hd hi

/-- Real partial derivative for FS-I-R-P-SCALAR-R, source line 906. -/
theorem real_derivative_I_R_P_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_I_R_P / 2)
      (realValue values C2_I_R_P_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_I_R_P C2_I_R_P_R 244 EFMWLagrangian.derivative_I_R_P_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_I_R_P_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_I_R_P C2_I_R_P_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_I_R_P_R / 2)) :
    HasDerivAt (actionAlong U2_I_R_P 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_I_R_P_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_I_R_P C2_I_R_P_R 244 EFMWLagrangian.derivative_I_R_P_R values eta hd hi

/-- Real partial derivative for FS-I-R-P-SCALAR-P, source line 907. -/
theorem real_derivative_I_R_P_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_I_R_P / 2)
      (realValue values C2_I_R_P_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_I_R_P C2_I_R_P_P 243 EFMWLagrangian.derivative_I_R_P_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_I_R_P_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_I_R_P C2_I_R_P_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_I_R_P_P / 2)) :
    HasDerivAt (actionAlong U2_I_R_P 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_I_R_P_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_I_R_P C2_I_R_P_P 243 EFMWLagrangian.derivative_I_R_P_P values eta hd hi

/-- Real partial derivative for FS-I-R-A-SCALAR-I, source line 910. -/
theorem real_derivative_I_R_A_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_I_R_A / 2)
      (realValue values C2_I_R_A_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_I_R_A C2_I_R_A_I 242 EFMWLagrangian.derivative_I_R_A_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_I_R_A_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_I_R_A C2_I_R_A_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_I_R_A_I / 2)) :
    HasDerivAt (actionAlong U2_I_R_A 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_I_R_A_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_I_R_A C2_I_R_A_I 242 EFMWLagrangian.derivative_I_R_A_I values eta hd hi

/-- Real partial derivative for FS-I-R-A-SCALAR-R, source line 911. -/
theorem real_derivative_I_R_A_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_I_R_A / 2)
      (realValue values C2_I_R_A_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_I_R_A C2_I_R_A_R 244 EFMWLagrangian.derivative_I_R_A_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_I_R_A_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_I_R_A C2_I_R_A_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_I_R_A_R / 2)) :
    HasDerivAt (actionAlong U2_I_R_A 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_I_R_A_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_I_R_A C2_I_R_A_R 244 EFMWLagrangian.derivative_I_R_A_R values eta hd hi

/-- Real partial derivative for FS-I-R-A-SCALAR-A, source line 912. -/
theorem real_derivative_I_R_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_I_R_A / 2)
      (realValue values C2_I_R_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_I_R_A C2_I_R_A_A 239 EFMWLagrangian.derivative_I_R_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_I_R_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_I_R_A C2_I_R_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_I_R_A_A / 2)) :
    HasDerivAt (actionAlong U2_I_R_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_I_R_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_I_R_A C2_I_R_A_A 239 EFMWLagrangian.derivative_I_R_A_A values eta hd hi

/-- Real partial derivative for FS-I-S-H-SCALAR-I, source line 918. -/
theorem real_derivative_I_S_H_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_I_S_H / 2)
      (realValue values C2_I_S_H_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_I_S_H C2_I_S_H_I 242 EFMWLagrangian.derivative_I_S_H_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_I_S_H_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_I_S_H C2_I_S_H_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_I_S_H_I / 2)) :
    HasDerivAt (actionAlong U2_I_S_H 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_I_S_H_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_I_S_H C2_I_S_H_I 242 EFMWLagrangian.derivative_I_S_H_I values eta hd hi

/-- Real partial derivative for FS-I-S-H-SCALAR-H, source line 919. -/
theorem real_derivative_I_S_H_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_I_S_H / 2)
      (realValue values C2_I_S_H_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_I_S_H C2_I_S_H_H 241 EFMWLagrangian.derivative_I_S_H_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_I_S_H_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_I_S_H C2_I_S_H_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_I_S_H_H / 2)) :
    HasDerivAt (actionAlong U2_I_S_H 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_I_S_H_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_I_S_H C2_I_S_H_H 241 EFMWLagrangian.derivative_I_S_H_H values eta hd hi

/-- Real partial derivative for FS-I-S-P-SCALAR-I, source line 925. -/
theorem real_derivative_I_S_P_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_I_S_P / 2)
      (realValue values C2_I_S_P_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_I_S_P C2_I_S_P_I 242 EFMWLagrangian.derivative_I_S_P_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_I_S_P_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_I_S_P C2_I_S_P_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_I_S_P_I / 2)) :
    HasDerivAt (actionAlong U2_I_S_P 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_I_S_P_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_I_S_P C2_I_S_P_I 242 EFMWLagrangian.derivative_I_S_P_I values eta hd hi

/-- Real partial derivative for FS-I-S-P-SCALAR-P, source line 926. -/
theorem real_derivative_I_S_P_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_I_S_P / 2)
      (realValue values C2_I_S_P_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_I_S_P C2_I_S_P_P 243 EFMWLagrangian.derivative_I_S_P_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_I_S_P_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_I_S_P C2_I_S_P_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_I_S_P_P / 2)) :
    HasDerivAt (actionAlong U2_I_S_P 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_I_S_P_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_I_S_P C2_I_S_P_P 243 EFMWLagrangian.derivative_I_S_P_P values eta hd hi

/-- Real partial derivative for FS-I-S-A-SCALAR-I, source line 932. -/
theorem real_derivative_I_S_A_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_I_S_A / 2)
      (realValue values C2_I_S_A_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_I_S_A C2_I_S_A_I 242 EFMWLagrangian.derivative_I_S_A_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_I_S_A_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_I_S_A C2_I_S_A_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_I_S_A_I / 2)) :
    HasDerivAt (actionAlong U2_I_S_A 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_I_S_A_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_I_S_A C2_I_S_A_I 242 EFMWLagrangian.derivative_I_S_A_I values eta hd hi

/-- Real partial derivative for FS-I-S-A-SCALAR-A, source line 933. -/
theorem real_derivative_I_S_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_I_S_A / 2)
      (realValue values C2_I_S_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_I_S_A C2_I_S_A_A 239 EFMWLagrangian.derivative_I_S_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_I_S_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_I_S_A C2_I_S_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_I_S_A_A / 2)) :
    HasDerivAt (actionAlong U2_I_S_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_I_S_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_I_S_A C2_I_S_A_A 239 EFMWLagrangian.derivative_I_S_A_A values eta hd hi

/-- Real partial derivative for FS-I-H-P-SCALAR-I, source line 936. -/
theorem real_derivative_I_H_P_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_I_H_P / 2)
      (realValue values C2_I_H_P_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_I_H_P C2_I_H_P_I 242 EFMWLagrangian.derivative_I_H_P_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_I_H_P_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_I_H_P C2_I_H_P_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_I_H_P_I / 2)) :
    HasDerivAt (actionAlong U2_I_H_P 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_I_H_P_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_I_H_P C2_I_H_P_I 242 EFMWLagrangian.derivative_I_H_P_I values eta hd hi

/-- Real partial derivative for FS-I-H-P-SCALAR-H, source line 937. -/
theorem real_derivative_I_H_P_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_I_H_P / 2)
      (realValue values C2_I_H_P_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_I_H_P C2_I_H_P_H 241 EFMWLagrangian.derivative_I_H_P_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_I_H_P_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_I_H_P C2_I_H_P_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_I_H_P_H / 2)) :
    HasDerivAt (actionAlong U2_I_H_P 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_I_H_P_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_I_H_P C2_I_H_P_H 241 EFMWLagrangian.derivative_I_H_P_H values eta hd hi

/-- Real partial derivative for FS-I-H-P-SCALAR-P, source line 938. -/
theorem real_derivative_I_H_P_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_I_H_P / 2)
      (realValue values C2_I_H_P_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_I_H_P C2_I_H_P_P 243 EFMWLagrangian.derivative_I_H_P_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_I_H_P_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_I_H_P C2_I_H_P_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_I_H_P_P / 2)) :
    HasDerivAt (actionAlong U2_I_H_P 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_I_H_P_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_I_H_P C2_I_H_P_P 243 EFMWLagrangian.derivative_I_H_P_P values eta hd hi

/-- Real partial derivative for FS-I-H-A-SCALAR-I, source line 941. -/
theorem real_derivative_I_H_A_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_I_H_A / 2)
      (realValue values C2_I_H_A_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_I_H_A C2_I_H_A_I 242 EFMWLagrangian.derivative_I_H_A_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_I_H_A_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_I_H_A C2_I_H_A_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_I_H_A_I / 2)) :
    HasDerivAt (actionAlong U2_I_H_A 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_I_H_A_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_I_H_A C2_I_H_A_I 242 EFMWLagrangian.derivative_I_H_A_I values eta hd hi

/-- Real partial derivative for FS-I-H-A-SCALAR-H, source line 942. -/
theorem real_derivative_I_H_A_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_I_H_A / 2)
      (realValue values C2_I_H_A_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_I_H_A C2_I_H_A_H 241 EFMWLagrangian.derivative_I_H_A_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_I_H_A_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_I_H_A C2_I_H_A_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_I_H_A_H / 2)) :
    HasDerivAt (actionAlong U2_I_H_A 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_I_H_A_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_I_H_A C2_I_H_A_H 241 EFMWLagrangian.derivative_I_H_A_H values eta hd hi

/-- Real partial derivative for FS-I-H-A-SCALAR-A, source line 943. -/
theorem real_derivative_I_H_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_I_H_A / 2)
      (realValue values C2_I_H_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_I_H_A C2_I_H_A_A 239 EFMWLagrangian.derivative_I_H_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_I_H_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_I_H_A C2_I_H_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_I_H_A_A / 2)) :
    HasDerivAt (actionAlong U2_I_H_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_I_H_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_I_H_A C2_I_H_A_A 239 EFMWLagrangian.derivative_I_H_A_A values eta hd hi

/-- Real partial derivative for FS-I-P-A-SCALAR-I, source line 946. -/
theorem real_derivative_I_P_A_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_I_P_A / 2)
      (realValue values C2_I_P_A_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_I_P_A C2_I_P_A_I 242 EFMWLagrangian.derivative_I_P_A_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_I_P_A_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_I_P_A C2_I_P_A_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_I_P_A_I / 2)) :
    HasDerivAt (actionAlong U2_I_P_A 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_I_P_A_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_I_P_A C2_I_P_A_I 242 EFMWLagrangian.derivative_I_P_A_I values eta hd hi

/-- Real partial derivative for FS-I-P-A-SCALAR-P, source line 947. -/
theorem real_derivative_I_P_A_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_I_P_A / 2)
      (realValue values C2_I_P_A_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_I_P_A C2_I_P_A_P 243 EFMWLagrangian.derivative_I_P_A_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_I_P_A_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_I_P_A C2_I_P_A_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_I_P_A_P / 2)) :
    HasDerivAt (actionAlong U2_I_P_A 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_I_P_A_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_I_P_A C2_I_P_A_P 243 EFMWLagrangian.derivative_I_P_A_P values eta hd hi

/-- Real partial derivative for FS-I-P-A-SCALAR-A, source line 948. -/
theorem real_derivative_I_P_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_I_P_A / 2)
      (realValue values C2_I_P_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_I_P_A C2_I_P_A_A 239 EFMWLagrangian.derivative_I_P_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_I_P_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_I_P_A C2_I_P_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_I_P_A_A / 2)) :
    HasDerivAt (actionAlong U2_I_P_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_I_P_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_I_P_A C2_I_P_A_A 239 EFMWLagrangian.derivative_I_P_A_A values eta hd hi

/-- Real partial derivative for FS-R-S-H-SCALAR-R, source line 954. -/
theorem real_derivative_R_S_H_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_R_S_H / 2)
      (realValue values C2_R_S_H_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_R_S_H C2_R_S_H_R 244 EFMWLagrangian.derivative_R_S_H_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_R_S_H_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_R_S_H C2_R_S_H_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_R_S_H_R / 2)) :
    HasDerivAt (actionAlong U2_R_S_H 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_R_S_H_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_R_S_H C2_R_S_H_R 244 EFMWLagrangian.derivative_R_S_H_R values eta hd hi

/-- Real partial derivative for FS-R-S-H-SCALAR-H, source line 955. -/
theorem real_derivative_R_S_H_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_R_S_H / 2)
      (realValue values C2_R_S_H_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_R_S_H C2_R_S_H_H 241 EFMWLagrangian.derivative_R_S_H_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_R_S_H_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_R_S_H C2_R_S_H_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_R_S_H_H / 2)) :
    HasDerivAt (actionAlong U2_R_S_H 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_R_S_H_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_R_S_H C2_R_S_H_H 241 EFMWLagrangian.derivative_R_S_H_H values eta hd hi

end EFMWContinuum
