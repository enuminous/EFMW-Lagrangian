import EFMWLagrangian.Core

set_option maxRecDepth 20000
set_option maxHeartbeats 0
namespace EFMWLagrangian

/-- Twice the restricted C1 potential for W_R_S. -/
def U2_W_R_S : Poly := [(1, [0, 244, 244, 252]), (1, [0, 246, 246, 254]), (2, [2, 52, 244]), (2, [2, 54, 246]), (2, [2, 204, 244, 246]), (2, [64, 244, 246]), (1, [236, 244, 244]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 753. -/
def C2_W_R_S_W : Poly := [(2, [0, 246, 254]), (2, [2, 54]), (2, [2, 204, 244]), (2, [64, 244]), (2, [238, 246])]
theorem derivative_W_R_S_W :
    normalize (deriv 246 U2_W_R_S) = normalize C2_W_R_S_W := by decide +kernel
theorem original_sign_mismatch_W_R_S_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_W_R_S)) ≠
      normalize ([(2, [10])] ++ C2_W_R_S_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 754. -/
def C2_W_R_S_R : Poly := [(2, [0, 244, 252]), (2, [2, 52]), (2, [2, 204, 246]), (2, [64, 246]), (2, [236, 244])]
theorem derivative_W_R_S_R :
    normalize (deriv 244 U2_W_R_S) = normalize C2_W_R_S_R := by decide +kernel
theorem original_sign_mismatch_W_R_S_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_W_R_S)) ≠
      normalize ([(2, [8])] ++ C2_W_R_S_R) := by decide +kernel

/-- Twice the restricted C1 potential for W_R_H. -/
def U2_W_R_H : Poly := [(1, [0, 241, 241, 249]), (1, [0, 244, 244, 252]), (1, [0, 246, 246, 254]), (2, [45, 241, 244]), (2, [61, 241, 246]), (2, [64, 244, 246]), (2, [224, 241, 244, 246]), (1, [233, 241, 241]), (1, [236, 244, 244]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 757. -/
def C2_W_R_H_W : Poly := [(2, [0, 246, 254]), (2, [61, 241]), (2, [64, 244]), (2, [224, 241, 244]), (2, [238, 246])]
theorem derivative_W_R_H_W :
    normalize (deriv 246 U2_W_R_H) = normalize C2_W_R_H_W := by decide +kernel
theorem original_sign_mismatch_W_R_H_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_W_R_H)) ≠
      normalize ([(2, [10])] ++ C2_W_R_H_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 758. -/
def C2_W_R_H_R : Poly := [(2, [0, 244, 252]), (2, [45, 241]), (2, [64, 246]), (2, [224, 241, 246]), (2, [236, 244])]
theorem derivative_W_R_H_R :
    normalize (deriv 244 U2_W_R_H) = normalize C2_W_R_H_R := by decide +kernel
theorem original_sign_mismatch_W_R_H_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_W_R_H)) ≠
      normalize ([(2, [8])] ++ C2_W_R_H_R) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 759. -/
def C2_W_R_H_H : Poly := [(2, [0, 241, 249]), (2, [45, 244]), (2, [61, 246]), (2, [224, 244, 246]), (2, [233, 241])]
theorem derivative_W_R_H_H :
    normalize (deriv 241 U2_W_R_H) = normalize C2_W_R_H_H := by decide +kernel
theorem original_sign_mismatch_W_R_H_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_W_R_H)) ≠
      normalize ([(2, [5])] ++ C2_W_R_H_H) := by decide +kernel

/-- Twice the restricted C1 potential for W_R_P. -/
def U2_W_R_P : Poly := [(1, [0, 243, 243, 251]), (1, [0, 244, 244, 252]), (1, [0, 246, 246, 254]), (2, [46, 243, 244]), (2, [63, 243, 246]), (2, [64, 244, 246]), (2, [225, 243, 244, 246]), (1, [235, 243, 243]), (1, [236, 244, 244]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 762. -/
def C2_W_R_P_W : Poly := [(2, [0, 246, 254]), (2, [63, 243]), (2, [64, 244]), (2, [225, 243, 244]), (2, [238, 246])]
theorem derivative_W_R_P_W :
    normalize (deriv 246 U2_W_R_P) = normalize C2_W_R_P_W := by decide +kernel
theorem original_sign_mismatch_W_R_P_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_W_R_P)) ≠
      normalize ([(2, [10])] ++ C2_W_R_P_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 763. -/
def C2_W_R_P_R : Poly := [(2, [0, 244, 252]), (2, [46, 243]), (2, [64, 246]), (2, [225, 243, 246]), (2, [236, 244])]
theorem derivative_W_R_P_R :
    normalize (deriv 244 U2_W_R_P) = normalize C2_W_R_P_R := by decide +kernel
theorem original_sign_mismatch_W_R_P_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_W_R_P)) ≠
      normalize ([(2, [8])] ++ C2_W_R_P_R) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 764. -/
def C2_W_R_P_P : Poly := [(2, [0, 243, 251]), (2, [46, 244]), (2, [63, 246]), (2, [225, 244, 246]), (2, [235, 243])]
theorem derivative_W_R_P_P :
    normalize (deriv 243 U2_W_R_P) = normalize C2_W_R_P_P := by decide +kernel
theorem original_sign_mismatch_W_R_P_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_W_R_P)) ≠
      normalize ([(2, [7])] ++ C2_W_R_P_P) := by decide +kernel

/-- Twice the restricted C1 potential for W_R_A. -/
def U2_W_R_A : Poly := [(1, [0, 239, 239, 247]), (1, [0, 244, 244, 252]), (1, [0, 246, 246, 254]), (2, [44, 239, 244]), (2, [60, 239, 246]), (2, [64, 244, 246]), (2, [223, 239, 244, 246]), (1, [231, 239, 239]), (1, [236, 244, 244]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 767. -/
def C2_W_R_A_W : Poly := [(2, [0, 246, 254]), (2, [60, 239]), (2, [64, 244]), (2, [223, 239, 244]), (2, [238, 246])]
theorem derivative_W_R_A_W :
    normalize (deriv 246 U2_W_R_A) = normalize C2_W_R_A_W := by decide +kernel
theorem original_sign_mismatch_W_R_A_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_W_R_A)) ≠
      normalize ([(2, [10])] ++ C2_W_R_A_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 768. -/
def C2_W_R_A_R : Poly := [(2, [0, 244, 252]), (2, [44, 239]), (2, [64, 246]), (2, [223, 239, 246]), (2, [236, 244])]
theorem derivative_W_R_A_R :
    normalize (deriv 244 U2_W_R_A) = normalize C2_W_R_A_R := by decide +kernel
theorem original_sign_mismatch_W_R_A_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_W_R_A)) ≠
      normalize ([(2, [8])] ++ C2_W_R_A_R) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 769. -/
def C2_W_R_A_A : Poly := [(2, [0, 239, 247]), (2, [44, 244]), (2, [60, 246]), (2, [223, 244, 246]), (2, [231, 239])]
theorem derivative_W_R_A_A :
    normalize (deriv 239 U2_W_R_A) = normalize C2_W_R_A_A := by decide +kernel
theorem original_sign_mismatch_W_R_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_W_R_A)) ≠
      normalize ([(2, [3])] ++ C2_W_R_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for W_S_H. -/
def U2_W_S_H : Poly := [(1, [0, 241, 241, 249]), (1, [0, 246, 246, 254]), (2, [2, 49, 241]), (2, [2, 54, 246]), (2, [2, 201, 241, 246]), (2, [61, 241, 246]), (1, [233, 241, 241]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 775. -/
def C2_W_S_H_W : Poly := [(2, [0, 246, 254]), (2, [2, 54]), (2, [2, 201, 241]), (2, [61, 241]), (2, [238, 246])]
theorem derivative_W_S_H_W :
    normalize (deriv 246 U2_W_S_H) = normalize C2_W_S_H_W := by decide +kernel
theorem original_sign_mismatch_W_S_H_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_W_S_H)) ≠
      normalize ([(2, [10])] ++ C2_W_S_H_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 776. -/
def C2_W_S_H_H : Poly := [(2, [0, 241, 249]), (2, [2, 49]), (2, [2, 201, 246]), (2, [61, 246]), (2, [233, 241])]
theorem derivative_W_S_H_H :
    normalize (deriv 241 U2_W_S_H) = normalize C2_W_S_H_H := by decide +kernel
theorem original_sign_mismatch_W_S_H_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_W_S_H)) ≠
      normalize ([(2, [5])] ++ C2_W_S_H_H) := by decide +kernel

/-- Twice the restricted C1 potential for W_S_P. -/
def U2_W_S_P : Poly := [(1, [0, 243, 243, 251]), (1, [0, 246, 246, 254]), (2, [2, 51, 243]), (2, [2, 54, 246]), (2, [2, 203, 243, 246]), (2, [63, 243, 246]), (1, [235, 243, 243]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 782. -/
def C2_W_S_P_W : Poly := [(2, [0, 246, 254]), (2, [2, 54]), (2, [2, 203, 243]), (2, [63, 243]), (2, [238, 246])]
theorem derivative_W_S_P_W :
    normalize (deriv 246 U2_W_S_P) = normalize C2_W_S_P_W := by decide +kernel
theorem original_sign_mismatch_W_S_P_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_W_S_P)) ≠
      normalize ([(2, [10])] ++ C2_W_S_P_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 783. -/
def C2_W_S_P_P : Poly := [(2, [0, 243, 251]), (2, [2, 51]), (2, [2, 203, 246]), (2, [63, 246]), (2, [235, 243])]
theorem derivative_W_S_P_P :
    normalize (deriv 243 U2_W_S_P) = normalize C2_W_S_P_P := by decide +kernel
theorem original_sign_mismatch_W_S_P_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_W_S_P)) ≠
      normalize ([(2, [7])] ++ C2_W_S_P_P) := by decide +kernel

/-- Twice the restricted C1 potential for W_S_A. -/
def U2_W_S_A : Poly := [(1, [0, 239, 239, 247]), (1, [0, 246, 246, 254]), (2, [2, 47, 239]), (2, [2, 54, 246]), (2, [2, 200, 239, 246]), (2, [60, 239, 246]), (1, [231, 239, 239]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 789. -/
def C2_W_S_A_W : Poly := [(2, [0, 246, 254]), (2, [2, 54]), (2, [2, 200, 239]), (2, [60, 239]), (2, [238, 246])]
theorem derivative_W_S_A_W :
    normalize (deriv 246 U2_W_S_A) = normalize C2_W_S_A_W := by decide +kernel
theorem original_sign_mismatch_W_S_A_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_W_S_A)) ≠
      normalize ([(2, [10])] ++ C2_W_S_A_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 790. -/
def C2_W_S_A_A : Poly := [(2, [0, 239, 247]), (2, [2, 47]), (2, [2, 200, 246]), (2, [60, 246]), (2, [231, 239])]
theorem derivative_W_S_A_A :
    normalize (deriv 239 U2_W_S_A) = normalize C2_W_S_A_A := by decide +kernel
theorem original_sign_mismatch_W_S_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_W_S_A)) ≠
      normalize ([(2, [3])] ++ C2_W_S_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for W_H_P. -/
def U2_W_H_P : Poly := [(1, [0, 241, 241, 249]), (1, [0, 243, 243, 251]), (1, [0, 246, 246, 254]), (2, [29, 241, 243]), (2, [61, 241, 246]), (2, [63, 243, 246]), (2, [217, 241, 243, 246]), (1, [233, 241, 241]), (1, [235, 243, 243]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 793. -/
def C2_W_H_P_W : Poly := [(2, [0, 246, 254]), (2, [61, 241]), (2, [63, 243]), (2, [217, 241, 243]), (2, [238, 246])]
theorem derivative_W_H_P_W :
    normalize (deriv 246 U2_W_H_P) = normalize C2_W_H_P_W := by decide +kernel
theorem original_sign_mismatch_W_H_P_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_W_H_P)) ≠
      normalize ([(2, [10])] ++ C2_W_H_P_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 794. -/
def C2_W_H_P_H : Poly := [(2, [0, 241, 249]), (2, [29, 243]), (2, [61, 246]), (2, [217, 243, 246]), (2, [233, 241])]
theorem derivative_W_H_P_H :
    normalize (deriv 241 U2_W_H_P) = normalize C2_W_H_P_H := by decide +kernel
theorem original_sign_mismatch_W_H_P_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_W_H_P)) ≠
      normalize ([(2, [5])] ++ C2_W_H_P_H) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 795. -/
def C2_W_H_P_P : Poly := [(2, [0, 243, 251]), (2, [29, 241]), (2, [63, 246]), (2, [217, 241, 246]), (2, [235, 243])]
theorem derivative_W_H_P_P :
    normalize (deriv 243 U2_W_H_P) = normalize C2_W_H_P_P := by decide +kernel
theorem original_sign_mismatch_W_H_P_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_W_H_P)) ≠
      normalize ([(2, [7])] ++ C2_W_H_P_P) := by decide +kernel

/-- Twice the restricted C1 potential for W_H_A. -/
def U2_W_H_A : Poly := [(1, [0, 239, 239, 247]), (1, [0, 241, 241, 249]), (1, [0, 246, 246, 254]), (2, [28, 239, 241]), (2, [60, 239, 246]), (2, [61, 241, 246]), (2, [216, 239, 241, 246]), (1, [231, 239, 239]), (1, [233, 241, 241]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 798. -/
def C2_W_H_A_W : Poly := [(2, [0, 246, 254]), (2, [60, 239]), (2, [61, 241]), (2, [216, 239, 241]), (2, [238, 246])]
theorem derivative_W_H_A_W :
    normalize (deriv 246 U2_W_H_A) = normalize C2_W_H_A_W := by decide +kernel
theorem original_sign_mismatch_W_H_A_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_W_H_A)) ≠
      normalize ([(2, [10])] ++ C2_W_H_A_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 799. -/
def C2_W_H_A_H : Poly := [(2, [0, 241, 249]), (2, [28, 239]), (2, [61, 246]), (2, [216, 239, 246]), (2, [233, 241])]
theorem derivative_W_H_A_H :
    normalize (deriv 241 U2_W_H_A) = normalize C2_W_H_A_H := by decide +kernel
theorem original_sign_mismatch_W_H_A_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_W_H_A)) ≠
      normalize ([(2, [5])] ++ C2_W_H_A_H) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 800. -/
def C2_W_H_A_A : Poly := [(2, [0, 239, 247]), (2, [28, 241]), (2, [60, 246]), (2, [216, 241, 246]), (2, [231, 239])]
theorem derivative_W_H_A_A :
    normalize (deriv 239 U2_W_H_A) = normalize C2_W_H_A_A := by decide +kernel
theorem original_sign_mismatch_W_H_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_W_H_A)) ≠
      normalize ([(2, [3])] ++ C2_W_H_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for W_P_A. -/
def U2_W_P_A : Poly := [(1, [0, 239, 239, 247]), (1, [0, 243, 243, 251]), (1, [0, 246, 246, 254]), (2, [43, 239, 243]), (2, [60, 239, 246]), (2, [63, 243, 246]), (2, [222, 239, 243, 246]), (1, [231, 239, 239]), (1, [235, 243, 243]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 803. -/
def C2_W_P_A_W : Poly := [(2, [0, 246, 254]), (2, [60, 239]), (2, [63, 243]), (2, [222, 239, 243]), (2, [238, 246])]
theorem derivative_W_P_A_W :
    normalize (deriv 246 U2_W_P_A) = normalize C2_W_P_A_W := by decide +kernel
theorem original_sign_mismatch_W_P_A_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_W_P_A)) ≠
      normalize ([(2, [10])] ++ C2_W_P_A_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 804. -/
def C2_W_P_A_P : Poly := [(2, [0, 243, 251]), (2, [43, 239]), (2, [63, 246]), (2, [222, 239, 246]), (2, [235, 243])]
theorem derivative_W_P_A_P :
    normalize (deriv 243 U2_W_P_A) = normalize C2_W_P_A_P := by decide +kernel
theorem original_sign_mismatch_W_P_A_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_W_P_A)) ≠
      normalize ([(2, [7])] ++ C2_W_P_A_P) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 805. -/
def C2_W_P_A_A : Poly := [(2, [0, 239, 247]), (2, [43, 243]), (2, [60, 246]), (2, [222, 243, 246]), (2, [231, 239])]
theorem derivative_W_P_A_A :
    normalize (deriv 239 U2_W_P_A) = normalize C2_W_P_A_A := by decide +kernel
theorem original_sign_mismatch_W_P_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_W_P_A)) ≠
      normalize ([(2, [3])] ++ C2_W_P_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for T_I_R. -/
def U2_T_I_R : Poly := [(1, [0, 242, 242, 250]), (1, [0, 244, 244, 252]), (1, [0, 245, 245, 253]), (2, [33, 242, 244]), (2, [57, 242, 245]), (2, [59, 244, 245]), (2, [211, 242, 244, 245]), (1, [234, 242, 242]), (1, [236, 244, 244]), (1, [237, 245, 245])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 808. -/
def C2_T_I_R_T : Poly := [(2, [0, 245, 253]), (2, [57, 242]), (2, [59, 244]), (2, [211, 242, 244]), (2, [237, 245])]
theorem derivative_T_I_R_T :
    normalize (deriv 245 U2_T_I_R) = normalize C2_T_I_R_T := by decide +kernel
theorem original_sign_mismatch_T_I_R_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_T_I_R)) ≠
      normalize ([(2, [9])] ++ C2_T_I_R_T) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 809. -/
def C2_T_I_R_I : Poly := [(2, [0, 242, 250]), (2, [33, 244]), (2, [57, 245]), (2, [211, 244, 245]), (2, [234, 242])]
theorem derivative_T_I_R_I :
    normalize (deriv 242 U2_T_I_R) = normalize C2_T_I_R_I := by decide +kernel
theorem original_sign_mismatch_T_I_R_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_T_I_R)) ≠
      normalize ([(2, [6])] ++ C2_T_I_R_I) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 810. -/
def C2_T_I_R_R : Poly := [(2, [0, 244, 252]), (2, [33, 242]), (2, [59, 245]), (2, [211, 242, 245]), (2, [236, 244])]
theorem derivative_T_I_R_R :
    normalize (deriv 244 U2_T_I_R) = normalize C2_T_I_R_R := by decide +kernel
theorem original_sign_mismatch_T_I_R_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_T_I_R)) ≠
      normalize ([(2, [8])] ++ C2_T_I_R_R) := by decide +kernel

/-- Twice the restricted C1 potential for T_I_S. -/
def U2_T_I_S : Poly := [(1, [0, 242, 242, 250]), (1, [0, 245, 245, 253]), (2, [2, 50, 242]), (2, [2, 53, 245]), (2, [2, 197, 242, 245]), (2, [57, 242, 245]), (1, [234, 242, 242]), (1, [237, 245, 245])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 816. -/
def C2_T_I_S_T : Poly := [(2, [0, 245, 253]), (2, [2, 53]), (2, [2, 197, 242]), (2, [57, 242]), (2, [237, 245])]
theorem derivative_T_I_S_T :
    normalize (deriv 245 U2_T_I_S) = normalize C2_T_I_S_T := by decide +kernel
theorem original_sign_mismatch_T_I_S_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_T_I_S)) ≠
      normalize ([(2, [9])] ++ C2_T_I_S_T) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 817. -/
def C2_T_I_S_I : Poly := [(2, [0, 242, 250]), (2, [2, 50]), (2, [2, 197, 245]), (2, [57, 245]), (2, [234, 242])]
theorem derivative_T_I_S_I :
    normalize (deriv 242 U2_T_I_S) = normalize C2_T_I_S_I := by decide +kernel
theorem original_sign_mismatch_T_I_S_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_T_I_S)) ≠
      normalize ([(2, [6])] ++ C2_T_I_S_I) := by decide +kernel

end EFMWLagrangian
