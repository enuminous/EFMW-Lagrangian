import EFMWContinuum.ScalarVariation
import EFMWLagrangian.Generated.Chunk13

namespace EFMWContinuum
open EFMWLagrangian MeasureTheory

/-- Real partial derivative for FS-R-S-P-SCALAR-R, source line 961. -/
theorem real_derivative_R_S_P_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_R_S_P / 2)
      (realValue values C2_R_S_P_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_R_S_P C2_R_S_P_R 244 EFMWLagrangian.derivative_R_S_P_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_R_S_P_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_R_S_P C2_R_S_P_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_R_S_P_R / 2)) :
    HasDerivAt (actionAlong U2_R_S_P 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_R_S_P_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_R_S_P C2_R_S_P_R 244 EFMWLagrangian.derivative_R_S_P_R values eta hd hi

/-- Real partial derivative for FS-R-S-P-SCALAR-P, source line 962. -/
theorem real_derivative_R_S_P_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_R_S_P / 2)
      (realValue values C2_R_S_P_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_R_S_P C2_R_S_P_P 243 EFMWLagrangian.derivative_R_S_P_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_R_S_P_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_R_S_P C2_R_S_P_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_R_S_P_P / 2)) :
    HasDerivAt (actionAlong U2_R_S_P 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_R_S_P_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_R_S_P C2_R_S_P_P 243 EFMWLagrangian.derivative_R_S_P_P values eta hd hi

/-- Real partial derivative for FS-R-S-A-SCALAR-R, source line 968. -/
theorem real_derivative_R_S_A_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_R_S_A / 2)
      (realValue values C2_R_S_A_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_R_S_A C2_R_S_A_R 244 EFMWLagrangian.derivative_R_S_A_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_R_S_A_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_R_S_A C2_R_S_A_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_R_S_A_R / 2)) :
    HasDerivAt (actionAlong U2_R_S_A 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_R_S_A_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_R_S_A C2_R_S_A_R 244 EFMWLagrangian.derivative_R_S_A_R values eta hd hi

/-- Real partial derivative for FS-R-S-A-SCALAR-A, source line 969. -/
theorem real_derivative_R_S_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_R_S_A / 2)
      (realValue values C2_R_S_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_R_S_A C2_R_S_A_A 239 EFMWLagrangian.derivative_R_S_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_R_S_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_R_S_A C2_R_S_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_R_S_A_A / 2)) :
    HasDerivAt (actionAlong U2_R_S_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_R_S_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_R_S_A C2_R_S_A_A 239 EFMWLagrangian.derivative_R_S_A_A values eta hd hi

/-- Real partial derivative for FS-R-H-P-SCALAR-R, source line 972. -/
theorem real_derivative_R_H_P_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_R_H_P / 2)
      (realValue values C2_R_H_P_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_R_H_P C2_R_H_P_R 244 EFMWLagrangian.derivative_R_H_P_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_R_H_P_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_R_H_P C2_R_H_P_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_R_H_P_R / 2)) :
    HasDerivAt (actionAlong U2_R_H_P 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_R_H_P_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_R_H_P C2_R_H_P_R 244 EFMWLagrangian.derivative_R_H_P_R values eta hd hi

/-- Real partial derivative for FS-R-H-P-SCALAR-H, source line 973. -/
theorem real_derivative_R_H_P_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_R_H_P / 2)
      (realValue values C2_R_H_P_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_R_H_P C2_R_H_P_H 241 EFMWLagrangian.derivative_R_H_P_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_R_H_P_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_R_H_P C2_R_H_P_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_R_H_P_H / 2)) :
    HasDerivAt (actionAlong U2_R_H_P 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_R_H_P_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_R_H_P C2_R_H_P_H 241 EFMWLagrangian.derivative_R_H_P_H values eta hd hi

/-- Real partial derivative for FS-R-H-P-SCALAR-P, source line 974. -/
theorem real_derivative_R_H_P_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_R_H_P / 2)
      (realValue values C2_R_H_P_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_R_H_P C2_R_H_P_P 243 EFMWLagrangian.derivative_R_H_P_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_R_H_P_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_R_H_P C2_R_H_P_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_R_H_P_P / 2)) :
    HasDerivAt (actionAlong U2_R_H_P 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_R_H_P_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_R_H_P C2_R_H_P_P 243 EFMWLagrangian.derivative_R_H_P_P values eta hd hi

/-- Real partial derivative for FS-R-H-A-SCALAR-R, source line 977. -/
theorem real_derivative_R_H_A_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_R_H_A / 2)
      (realValue values C2_R_H_A_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_R_H_A C2_R_H_A_R 244 EFMWLagrangian.derivative_R_H_A_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_R_H_A_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_R_H_A C2_R_H_A_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_R_H_A_R / 2)) :
    HasDerivAt (actionAlong U2_R_H_A 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_R_H_A_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_R_H_A C2_R_H_A_R 244 EFMWLagrangian.derivative_R_H_A_R values eta hd hi

/-- Real partial derivative for FS-R-H-A-SCALAR-H, source line 978. -/
theorem real_derivative_R_H_A_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_R_H_A / 2)
      (realValue values C2_R_H_A_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_R_H_A C2_R_H_A_H 241 EFMWLagrangian.derivative_R_H_A_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_R_H_A_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_R_H_A C2_R_H_A_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_R_H_A_H / 2)) :
    HasDerivAt (actionAlong U2_R_H_A 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_R_H_A_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_R_H_A C2_R_H_A_H 241 EFMWLagrangian.derivative_R_H_A_H values eta hd hi

/-- Real partial derivative for FS-R-H-A-SCALAR-A, source line 979. -/
theorem real_derivative_R_H_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_R_H_A / 2)
      (realValue values C2_R_H_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_R_H_A C2_R_H_A_A 239 EFMWLagrangian.derivative_R_H_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_R_H_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_R_H_A C2_R_H_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_R_H_A_A / 2)) :
    HasDerivAt (actionAlong U2_R_H_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_R_H_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_R_H_A C2_R_H_A_A 239 EFMWLagrangian.derivative_R_H_A_A values eta hd hi

/-- Real partial derivative for FS-R-P-A-SCALAR-R, source line 982. -/
theorem real_derivative_R_P_A_R (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 244 x) U2_R_P_A / 2)
      (realValue values C2_R_P_A_R / 2) (values 244) :=
  certified_potential_hasDerivAt U2_R_P_A C2_R_P_A_R 244 EFMWLagrangian.derivative_R_P_A_R values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_R_P_A_R (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_R_P_A C2_R_P_A_R 244 values eta)
    (hi : IBPConditions (fun x => values x 244) eta (fun x => realValue (values x) C2_R_P_A_R / 2)) :
    HasDerivAt (actionAlong U2_R_P_A 244 values eta)
      (∫ x, (dalembertian (fun y => values y 244) x - realValue (values x) C2_R_P_A_R / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_R_P_A C2_R_P_A_R 244 EFMWLagrangian.derivative_R_P_A_R values eta hd hi

/-- Real partial derivative for FS-R-P-A-SCALAR-P, source line 983. -/
theorem real_derivative_R_P_A_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_R_P_A / 2)
      (realValue values C2_R_P_A_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_R_P_A C2_R_P_A_P 243 EFMWLagrangian.derivative_R_P_A_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_R_P_A_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_R_P_A C2_R_P_A_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_R_P_A_P / 2)) :
    HasDerivAt (actionAlong U2_R_P_A 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_R_P_A_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_R_P_A C2_R_P_A_P 243 EFMWLagrangian.derivative_R_P_A_P values eta hd hi

/-- Real partial derivative for FS-R-P-A-SCALAR-A, source line 984. -/
theorem real_derivative_R_P_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_R_P_A / 2)
      (realValue values C2_R_P_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_R_P_A C2_R_P_A_A 239 EFMWLagrangian.derivative_R_P_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_R_P_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_R_P_A C2_R_P_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_R_P_A_A / 2)) :
    HasDerivAt (actionAlong U2_R_P_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_R_P_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_R_P_A C2_R_P_A_A 239 EFMWLagrangian.derivative_R_P_A_A values eta hd hi

/-- Real partial derivative for FS-S-H-P-SCALAR-H, source line 990. -/
theorem real_derivative_S_H_P_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_S_H_P / 2)
      (realValue values C2_S_H_P_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_S_H_P C2_S_H_P_H 241 EFMWLagrangian.derivative_S_H_P_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_S_H_P_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_S_H_P C2_S_H_P_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_S_H_P_H / 2)) :
    HasDerivAt (actionAlong U2_S_H_P 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_S_H_P_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_S_H_P C2_S_H_P_H 241 EFMWLagrangian.derivative_S_H_P_H values eta hd hi

/-- Real partial derivative for FS-S-H-P-SCALAR-P, source line 991. -/
theorem real_derivative_S_H_P_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_S_H_P / 2)
      (realValue values C2_S_H_P_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_S_H_P C2_S_H_P_P 243 EFMWLagrangian.derivative_S_H_P_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_S_H_P_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_S_H_P C2_S_H_P_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_S_H_P_P / 2)) :
    HasDerivAt (actionAlong U2_S_H_P 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_S_H_P_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_S_H_P C2_S_H_P_P 243 EFMWLagrangian.derivative_S_H_P_P values eta hd hi

/-- Real partial derivative for FS-S-H-A-SCALAR-H, source line 997. -/
theorem real_derivative_S_H_A_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_S_H_A / 2)
      (realValue values C2_S_H_A_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_S_H_A C2_S_H_A_H 241 EFMWLagrangian.derivative_S_H_A_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_S_H_A_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_S_H_A C2_S_H_A_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_S_H_A_H / 2)) :
    HasDerivAt (actionAlong U2_S_H_A 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_S_H_A_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_S_H_A C2_S_H_A_H 241 EFMWLagrangian.derivative_S_H_A_H values eta hd hi

/-- Real partial derivative for FS-S-H-A-SCALAR-A, source line 998. -/
theorem real_derivative_S_H_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_S_H_A / 2)
      (realValue values C2_S_H_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_S_H_A C2_S_H_A_A 239 EFMWLagrangian.derivative_S_H_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_S_H_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_S_H_A C2_S_H_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_S_H_A_A / 2)) :
    HasDerivAt (actionAlong U2_S_H_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_S_H_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_S_H_A C2_S_H_A_A 239 EFMWLagrangian.derivative_S_H_A_A values eta hd hi

/-- Real partial derivative for FS-S-P-A-SCALAR-P, source line 1004. -/
theorem real_derivative_S_P_A_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_S_P_A / 2)
      (realValue values C2_S_P_A_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_S_P_A C2_S_P_A_P 243 EFMWLagrangian.derivative_S_P_A_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_S_P_A_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_S_P_A C2_S_P_A_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_S_P_A_P / 2)) :
    HasDerivAt (actionAlong U2_S_P_A 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_S_P_A_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_S_P_A C2_S_P_A_P 243 EFMWLagrangian.derivative_S_P_A_P values eta hd hi

/-- Real partial derivative for FS-S-P-A-SCALAR-A, source line 1005. -/
theorem real_derivative_S_P_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_S_P_A / 2)
      (realValue values C2_S_P_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_S_P_A C2_S_P_A_A 239 EFMWLagrangian.derivative_S_P_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_S_P_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_S_P_A C2_S_P_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_S_P_A_A / 2)) :
    HasDerivAt (actionAlong U2_S_P_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_S_P_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_S_P_A C2_S_P_A_A 239 EFMWLagrangian.derivative_S_P_A_A values eta hd hi

/-- Real partial derivative for FS-H-P-A-SCALAR-H, source line 1008. -/
theorem real_derivative_H_P_A_H (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 241 x) U2_H_P_A / 2)
      (realValue values C2_H_P_A_H / 2) (values 241) :=
  certified_potential_hasDerivAt U2_H_P_A C2_H_P_A_H 241 EFMWLagrangian.derivative_H_P_A_H values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_H_P_A_H (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_H_P_A C2_H_P_A_H 241 values eta)
    (hi : IBPConditions (fun x => values x 241) eta (fun x => realValue (values x) C2_H_P_A_H / 2)) :
    HasDerivAt (actionAlong U2_H_P_A 241 values eta)
      (∫ x, (dalembertian (fun y => values y 241) x - realValue (values x) C2_H_P_A_H / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_H_P_A C2_H_P_A_H 241 EFMWLagrangian.derivative_H_P_A_H values eta hd hi

/-- Real partial derivative for FS-H-P-A-SCALAR-P, source line 1009. -/
theorem real_derivative_H_P_A_P (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 243 x) U2_H_P_A / 2)
      (realValue values C2_H_P_A_P / 2) (values 243) :=
  certified_potential_hasDerivAt U2_H_P_A C2_H_P_A_P 243 EFMWLagrangian.derivative_H_P_A_P values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_H_P_A_P (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_H_P_A C2_H_P_A_P 243 values eta)
    (hi : IBPConditions (fun x => values x 243) eta (fun x => realValue (values x) C2_H_P_A_P / 2)) :
    HasDerivAt (actionAlong U2_H_P_A 243 values eta)
      (∫ x, (dalembertian (fun y => values y 243) x - realValue (values x) C2_H_P_A_P / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_H_P_A C2_H_P_A_P 243 EFMWLagrangian.derivative_H_P_A_P values eta hd hi

/-- Real partial derivative for FS-H-P-A-SCALAR-A, source line 1010. -/
theorem real_derivative_H_P_A_A (values : Nat → ℝ) :
    HasDerivAt (fun x : ℝ => realValue (Function.update values 239 x) U2_H_P_A / 2)
      (realValue values C2_H_P_A_A / 2) (values 239) :=
  certified_potential_hasDerivAt U2_H_P_A C2_H_P_A_A 239 EFMWLagrangian.derivative_H_P_A_A values

/-- Flat-spacetime scalar action variation; regularity and domination are explicit premises. -/
theorem action_derivative_H_P_A_A (values : Spacetime → Nat → ℝ) (eta : Spacetime → ℝ)
    (hd : DominatedVariation U2_H_P_A C2_H_P_A_A 239 values eta)
    (hi : IBPConditions (fun x => values x 239) eta (fun x => realValue (values x) C2_H_P_A_A / 2)) :
    HasDerivAt (actionAlong U2_H_P_A 239 values eta)
      (∫ x, (dalembertian (fun y => values y 239) x - realValue (values x) C2_H_P_A_A / 2) * eta x) 0 :=
  actionAlong_hasDerivAt U2_H_P_A C2_H_P_A_A 239 EFMWLagrangian.derivative_H_P_A_A values eta hd hi

end EFMWContinuum
