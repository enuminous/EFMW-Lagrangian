import EFMWContinuum.ScalarVariation
import EFMWLagrangian.Generated.Chunk11

namespace EFMWContinuum
open EFMWLagrangian MeasureTheory

/-- Real partial derivative for FS-T-I-H-SCALAR-T, source line 820. -/
theorem real_derivative_T_I_H_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_T_I_H / 2)
      (realValue values C2_T_I_H_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_T_I_H C2_T_I_H_T 245 EFMWLagrangian.derivative_T_I_H_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_I_H_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_I_H C2_T_I_H_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_T_I_H_T / 2)) :
    HasDerivAt (actionAlong U2_T_I_H 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_T_I_H_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_I_H C2_T_I_H_T 245 EFMWLagrangian.derivative_T_I_H_T values eta hd hi

/-- Real partial derivative for FS-T-I-H-SCALAR-I, source line 821. -/
theorem real_derivative_T_I_H_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_T_I_H / 2)
      (realValue values C2_T_I_H_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_T_I_H C2_T_I_H_I 242 EFMWLagrangian.derivative_T_I_H_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_I_H_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_I_H C2_T_I_H_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_T_I_H_I / 2)) :
    HasDerivAt (actionAlong U2_T_I_H 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_T_I_H_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_I_H C2_T_I_H_I 242 EFMWLagrangian.derivative_T_I_H_I values eta hd hi

/-- Real partial derivative for FS-T-I-H-SCALAR-H, source line 822. -/
theorem real_derivative_T_I_H_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_T_I_H / 2)
      (realValue values C2_T_I_H_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_T_I_H C2_T_I_H_H 241 EFMWLagrangian.derivative_T_I_H_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_I_H_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_I_H C2_T_I_H_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_T_I_H_H / 2)) :
    HasDerivAt (actionAlong U2_T_I_H 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_T_I_H_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_I_H C2_T_I_H_H 241 EFMWLagrangian.derivative_T_I_H_H values eta hd hi

/-- Real partial derivative for FS-T-I-P-SCALAR-T, source line 825. -/
theorem real_derivative_T_I_P_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_T_I_P / 2)
      (realValue values C2_T_I_P_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_T_I_P C2_T_I_P_T 245 EFMWLagrangian.derivative_T_I_P_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_I_P_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_I_P C2_T_I_P_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_T_I_P_T / 2)) :
    HasDerivAt (actionAlong U2_T_I_P 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_T_I_P_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_I_P C2_T_I_P_T 245 EFMWLagrangian.derivative_T_I_P_T values eta hd hi

/-- Real partial derivative for FS-T-I-P-SCALAR-I, source line 826. -/
theorem real_derivative_T_I_P_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_T_I_P / 2)
      (realValue values C2_T_I_P_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_T_I_P C2_T_I_P_I 242 EFMWLagrangian.derivative_T_I_P_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_I_P_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_I_P C2_T_I_P_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_T_I_P_I / 2)) :
    HasDerivAt (actionAlong U2_T_I_P 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_T_I_P_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_I_P C2_T_I_P_I 242 EFMWLagrangian.derivative_T_I_P_I values eta hd hi

/-- Real partial derivative for FS-T-I-P-SCALAR-P, source line 827. -/
theorem real_derivative_T_I_P_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_T_I_P / 2)
      (realValue values C2_T_I_P_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_T_I_P C2_T_I_P_P 243 EFMWLagrangian.derivative_T_I_P_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_I_P_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_I_P C2_T_I_P_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_T_I_P_P / 2)) :
    HasDerivAt (actionAlong U2_T_I_P 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_T_I_P_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_I_P C2_T_I_P_P 243 EFMWLagrangian.derivative_T_I_P_P values eta hd hi

/-- Real partial derivative for FS-T-I-A-SCALAR-T, source line 830. -/
theorem real_derivative_T_I_A_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_T_I_A / 2)
      (realValue values C2_T_I_A_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_T_I_A C2_T_I_A_T 245 EFMWLagrangian.derivative_T_I_A_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_I_A_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_I_A C2_T_I_A_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_T_I_A_T / 2)) :
    HasDerivAt (actionAlong U2_T_I_A 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_T_I_A_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_I_A C2_T_I_A_T 245 EFMWLagrangian.derivative_T_I_A_T values eta hd hi

/-- Real partial derivative for FS-T-I-A-SCALAR-I, source line 831. -/
theorem real_derivative_T_I_A_I (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 242 x) U2_T_I_A / 2)
      (realValue values C2_T_I_A_I / 2) (values 242) :=
  certified_potential_hasDerivAt U2_T_I_A C2_T_I_A_I 242 EFMWLagrangian.derivative_T_I_A_I values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_I_A_I (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_I_A C2_T_I_A_I 242 values eta)
    (hi : IBPConditions (fun x => values x 242) eta (fun x => realValue (values x) C2_T_I_A_I / 2)) :
    HasDerivAt (actionAlong U2_T_I_A 242 values eta)
      (∫ x, (dalembertian (fun y => values y 242) x - realValue (values x) C2_T_I_A_I / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_I_A C2_T_I_A_I 242 EFMWLagrangian.derivative_T_I_A_I values eta hd hi

/-- Real partial derivative for FS-T-I-A-SCALAR-A, source line 832. -/
theorem real_derivative_T_I_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_T_I_A / 2)
      (realValue values C2_T_I_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_T_I_A C2_T_I_A_A 239 EFMWLagrangian.derivative_T_I_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_I_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_I_A C2_T_I_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_T_I_A_A / 2)) :
    HasDerivAt (actionAlong U2_T_I_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_T_I_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_I_A C2_T_I_A_A 239 EFMWLagrangian.derivative_T_I_A_A values eta hd hi

/-- Real partial derivative for FS-T-R-S-SCALAR-T, source line 838. -/
theorem real_derivative_T_R_S_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_T_R_S / 2)
      (realValue values C2_T_R_S_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_T_R_S C2_T_R_S_T 245 EFMWLagrangian.derivative_T_R_S_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_R_S_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_R_S C2_T_R_S_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_T_R_S_T / 2)) :
    HasDerivAt (actionAlong U2_T_R_S 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_T_R_S_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_R_S C2_T_R_S_T 245 EFMWLagrangian.derivative_T_R_S_T values eta hd hi

/-- Real partial derivative for FS-T-R-S-SCALAR-R, source line 839. -/
theorem real_derivative_T_R_S_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_T_R_S / 2)
      (realValue values C2_T_R_S_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_T_R_S C2_T_R_S_R 244 EFMWLagrangian.derivative_T_R_S_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_R_S_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_R_S C2_T_R_S_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_T_R_S_R / 2)) :
    HasDerivAt (actionAlong U2_T_R_S 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_T_R_S_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_R_S C2_T_R_S_R 244 EFMWLagrangian.derivative_T_R_S_R values eta hd hi

/-- Real partial derivative for FS-T-R-H-SCALAR-T, source line 842. -/
theorem real_derivative_T_R_H_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_T_R_H / 2)
      (realValue values C2_T_R_H_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_T_R_H C2_T_R_H_T 245 EFMWLagrangian.derivative_T_R_H_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_R_H_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_R_H C2_T_R_H_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_T_R_H_T / 2)) :
    HasDerivAt (actionAlong U2_T_R_H 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_T_R_H_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_R_H C2_T_R_H_T 245 EFMWLagrangian.derivative_T_R_H_T values eta hd hi

/-- Real partial derivative for FS-T-R-H-SCALAR-R, source line 843. -/
theorem real_derivative_T_R_H_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_T_R_H / 2)
      (realValue values C2_T_R_H_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_T_R_H C2_T_R_H_R 244 EFMWLagrangian.derivative_T_R_H_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_R_H_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_R_H C2_T_R_H_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_T_R_H_R / 2)) :
    HasDerivAt (actionAlong U2_T_R_H 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_T_R_H_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_R_H C2_T_R_H_R 244 EFMWLagrangian.derivative_T_R_H_R values eta hd hi

/-- Real partial derivative for FS-T-R-H-SCALAR-H, source line 844. -/
theorem real_derivative_T_R_H_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_T_R_H / 2)
      (realValue values C2_T_R_H_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_T_R_H C2_T_R_H_H 241 EFMWLagrangian.derivative_T_R_H_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_R_H_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_R_H C2_T_R_H_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_T_R_H_H / 2)) :
    HasDerivAt (actionAlong U2_T_R_H 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_T_R_H_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_R_H C2_T_R_H_H 241 EFMWLagrangian.derivative_T_R_H_H values eta hd hi

/-- Real partial derivative for FS-T-R-P-SCALAR-T, source line 847. -/
theorem real_derivative_T_R_P_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_T_R_P / 2)
      (realValue values C2_T_R_P_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_T_R_P C2_T_R_P_T 245 EFMWLagrangian.derivative_T_R_P_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_R_P_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_R_P C2_T_R_P_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_T_R_P_T / 2)) :
    HasDerivAt (actionAlong U2_T_R_P 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_T_R_P_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_R_P C2_T_R_P_T 245 EFMWLagrangian.derivative_T_R_P_T values eta hd hi

/-- Real partial derivative for FS-T-R-P-SCALAR-R, source line 848. -/
theorem real_derivative_T_R_P_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_T_R_P / 2)
      (realValue values C2_T_R_P_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_T_R_P C2_T_R_P_R 244 EFMWLagrangian.derivative_T_R_P_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_R_P_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_R_P C2_T_R_P_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_T_R_P_R / 2)) :
    HasDerivAt (actionAlong U2_T_R_P 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_T_R_P_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_R_P C2_T_R_P_R 244 EFMWLagrangian.derivative_T_R_P_R values eta hd hi

/-- Real partial derivative for FS-T-R-P-SCALAR-P, source line 849. -/
theorem real_derivative_T_R_P_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_T_R_P / 2)
      (realValue values C2_T_R_P_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_T_R_P C2_T_R_P_P 243 EFMWLagrangian.derivative_T_R_P_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_R_P_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_R_P C2_T_R_P_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_T_R_P_P / 2)) :
    HasDerivAt (actionAlong U2_T_R_P 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_T_R_P_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_R_P C2_T_R_P_P 243 EFMWLagrangian.derivative_T_R_P_P values eta hd hi

/-- Real partial derivative for FS-T-R-A-SCALAR-T, source line 852. -/
theorem real_derivative_T_R_A_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_T_R_A / 2)
      (realValue values C2_T_R_A_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_T_R_A C2_T_R_A_T 245 EFMWLagrangian.derivative_T_R_A_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_R_A_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_R_A C2_T_R_A_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_T_R_A_T / 2)) :
    HasDerivAt (actionAlong U2_T_R_A 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_T_R_A_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_R_A C2_T_R_A_T 245 EFMWLagrangian.derivative_T_R_A_T values eta hd hi

/-- Real partial derivative for FS-T-R-A-SCALAR-R, source line 853. -/
theorem real_derivative_T_R_A_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_T_R_A / 2)
      (realValue values C2_T_R_A_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_T_R_A C2_T_R_A_R 244 EFMWLagrangian.derivative_T_R_A_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_R_A_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_R_A C2_T_R_A_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_T_R_A_R / 2)) :
    HasDerivAt (actionAlong U2_T_R_A 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_T_R_A_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_R_A C2_T_R_A_R 244 EFMWLagrangian.derivative_T_R_A_R values eta hd hi

/-- Real partial derivative for FS-T-R-A-SCALAR-A, source line 854. -/
theorem real_derivative_T_R_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_T_R_A / 2)
      (realValue values C2_T_R_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_T_R_A C2_T_R_A_A 239 EFMWLagrangian.derivative_T_R_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_R_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_R_A C2_T_R_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_T_R_A_A / 2)) :
    HasDerivAt (actionAlong U2_T_R_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_T_R_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_R_A C2_T_R_A_A 239 EFMWLagrangian.derivative_T_R_A_A values eta hd hi

/-- Real partial derivative for FS-T-S-H-SCALAR-T, source line 860. -/
theorem real_derivative_T_S_H_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_T_S_H / 2)
      (realValue values C2_T_S_H_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_T_S_H C2_T_S_H_T 245 EFMWLagrangian.derivative_T_S_H_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_S_H_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_S_H C2_T_S_H_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_T_S_H_T / 2)) :
    HasDerivAt (actionAlong U2_T_S_H 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_T_S_H_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_S_H C2_T_S_H_T 245 EFMWLagrangian.derivative_T_S_H_T values eta hd hi

/-- Real partial derivative for FS-T-S-H-SCALAR-H, source line 861. -/
theorem real_derivative_T_S_H_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_T_S_H / 2)
      (realValue values C2_T_S_H_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_T_S_H C2_T_S_H_H 241 EFMWLagrangian.derivative_T_S_H_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_S_H_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_S_H C2_T_S_H_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_T_S_H_H / 2)) :
    HasDerivAt (actionAlong U2_T_S_H 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_T_S_H_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_S_H C2_T_S_H_H 241 EFMWLagrangian.derivative_T_S_H_H values eta hd hi

/-- Real partial derivative for FS-T-S-P-SCALAR-T, source line 867. -/
theorem real_derivative_T_S_P_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_T_S_P / 2)
      (realValue values C2_T_S_P_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_T_S_P C2_T_S_P_T 245 EFMWLagrangian.derivative_T_S_P_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_S_P_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_S_P C2_T_S_P_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_T_S_P_T / 2)) :
    HasDerivAt (actionAlong U2_T_S_P 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_T_S_P_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_S_P C2_T_S_P_T 245 EFMWLagrangian.derivative_T_S_P_T values eta hd hi

/-- Real partial derivative for FS-T-S-P-SCALAR-P, source line 868. -/
theorem real_derivative_T_S_P_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_T_S_P / 2)
      (realValue values C2_T_S_P_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_T_S_P C2_T_S_P_P 243 EFMWLagrangian.derivative_T_S_P_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_S_P_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_S_P C2_T_S_P_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_T_S_P_P / 2)) :
    HasDerivAt (actionAlong U2_T_S_P 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_T_S_P_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_S_P C2_T_S_P_P 243 EFMWLagrangian.derivative_T_S_P_P values eta hd hi

/-- Real partial derivative for FS-T-S-A-SCALAR-T, source line 874. -/
theorem real_derivative_T_S_A_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_T_S_A / 2)
      (realValue values C2_T_S_A_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_T_S_A C2_T_S_A_T 245 EFMWLagrangian.derivative_T_S_A_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_S_A_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_S_A C2_T_S_A_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_T_S_A_T / 2)) :
    HasDerivAt (actionAlong U2_T_S_A 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_T_S_A_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_S_A C2_T_S_A_T 245 EFMWLagrangian.derivative_T_S_A_T values eta hd hi

/-- Real partial derivative for FS-T-S-A-SCALAR-A, source line 875. -/
theorem real_derivative_T_S_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_T_S_A / 2)
      (realValue values C2_T_S_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_T_S_A C2_T_S_A_A 239 EFMWLagrangian.derivative_T_S_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_S_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_S_A C2_T_S_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_T_S_A_A / 2)) :
    HasDerivAt (actionAlong U2_T_S_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_T_S_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_S_A C2_T_S_A_A 239 EFMWLagrangian.derivative_T_S_A_A values eta hd hi

/-- Real partial derivative for FS-T-H-P-SCALAR-T, source line 878. -/
theorem real_derivative_T_H_P_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_T_H_P / 2)
      (realValue values C2_T_H_P_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_T_H_P C2_T_H_P_T 245 EFMWLagrangian.derivative_T_H_P_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_H_P_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_H_P C2_T_H_P_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_T_H_P_T / 2)) :
    HasDerivAt (actionAlong U2_T_H_P 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_T_H_P_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_H_P C2_T_H_P_T 245 EFMWLagrangian.derivative_T_H_P_T values eta hd hi

/-- Real partial derivative for FS-T-H-P-SCALAR-H, source line 879. -/
theorem real_derivative_T_H_P_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_T_H_P / 2)
      (realValue values C2_T_H_P_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_T_H_P C2_T_H_P_H 241 EFMWLagrangian.derivative_T_H_P_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_H_P_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_H_P C2_T_H_P_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_T_H_P_H / 2)) :
    HasDerivAt (actionAlong U2_T_H_P 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_T_H_P_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_H_P C2_T_H_P_H 241 EFMWLagrangian.derivative_T_H_P_H values eta hd hi

/-- Real partial derivative for FS-T-H-P-SCALAR-P, source line 880. -/
theorem real_derivative_T_H_P_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_T_H_P / 2)
      (realValue values C2_T_H_P_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_T_H_P C2_T_H_P_P 243 EFMWLagrangian.derivative_T_H_P_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_H_P_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_H_P C2_T_H_P_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_T_H_P_P / 2)) :
    HasDerivAt (actionAlong U2_T_H_P 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_T_H_P_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_H_P C2_T_H_P_P 243 EFMWLagrangian.derivative_T_H_P_P values eta hd hi

/-- Real partial derivative for FS-T-H-A-SCALAR-T, source line 883. -/
theorem real_derivative_T_H_A_T (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 245 x) U2_T_H_A / 2)
      (realValue values C2_T_H_A_T / 2) (values 245) :=
  certified_potential_hasDerivAt U2_T_H_A C2_T_H_A_T 245 EFMWLagrangian.derivative_T_H_A_T values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_H_A_T (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_H_A C2_T_H_A_T 245 values eta)
    (hi : IBPConditions (fun x => values x 245) eta (fun x => realValue (values x) C2_T_H_A_T / 2)) :
    HasDerivAt (actionAlong U2_T_H_A 245 values eta)
      (∫ x, (dalembertian (fun y => values y 245) x - realValue (values x) C2_T_H_A_T / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_H_A C2_T_H_A_T 245 EFMWLagrangian.derivative_T_H_A_T values eta hd hi

/-- Real partial derivative for FS-T-H-A-SCALAR-H, source line 884. -/
theorem real_derivative_T_H_A_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_T_H_A / 2)
      (realValue values C2_T_H_A_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_T_H_A C2_T_H_A_H 241 EFMWLagrangian.derivative_T_H_A_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_H_A_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_H_A C2_T_H_A_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_T_H_A_H / 2)) :
    HasDerivAt (actionAlong U2_T_H_A 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_T_H_A_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_H_A C2_T_H_A_H 241 EFMWLagrangian.derivative_T_H_A_H values eta hd hi

/-- Real partial derivative for FS-T-H-A-SCALAR-A, source line 885. -/
theorem real_derivative_T_H_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_T_H_A / 2)
      (realValue values C2_T_H_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_T_H_A C2_T_H_A_A 239 EFMWLagrangian.derivative_T_H_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_T_H_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_T_H_A C2_T_H_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_T_H_A_A / 2)) :
    HasDerivAt (actionAlong U2_T_H_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_T_H_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_T_H_A C2_T_H_A_A 239 EFMWLagrangian.derivative_T_H_A_A values eta hd hi

end EFMWContinuum
