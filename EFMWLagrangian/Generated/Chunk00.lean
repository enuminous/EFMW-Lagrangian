import EFMWLagrangian.Core

set_option maxRecDepth 20000
set_option maxHeartbeats 0
namespace EFMWLagrangian

/-- Twice the restricted C1 potential for E_F_M. -/
def U2_E_F_M : Poly := [(2, [0, 1, 15]), (2, [0, 1, 80, 240]), (2, [0, 12, 240]), (1, [0, 240, 240, 248]), (2, [1, 35, 240]), (1, [232, 240, 240])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 12. -/
def C2_E_F_M_F : Poly := [(2, [0, 1, 80]), (2, [0, 12]), (2, [0, 240, 248]), (2, [1, 35]), (2, [232, 240])]
theorem derivative_E_F_M_F :
    normalize (deriv 240 U2_E_F_M) = normalize C2_E_F_M_F := by decide +kernel
theorem original_sign_mismatch_E_F_M_F :
    normalize ([(2, [4])] ++ negate (deriv 240 U2_E_F_M)) ≠
      normalize ([(2, [4])] ++ C2_E_F_M_F) := by decide +kernel

/-- Twice the restricted C1 potential for E_F_W. -/
def U2_E_F_W : Poly := [(2, [0, 12, 240]), (2, [0, 20, 246]), (2, [0, 72, 240, 246]), (1, [0, 240, 240, 248]), (1, [0, 246, 246, 254]), (2, [27, 240, 246]), (1, [232, 240, 240]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 16. -/
def C2_E_F_W_F : Poly := [(2, [0, 12]), (2, [0, 72, 246]), (2, [0, 240, 248]), (2, [27, 246]), (2, [232, 240])]
theorem derivative_E_F_W_F :
    normalize (deriv 240 U2_E_F_W) = normalize C2_E_F_W_F := by decide +kernel
theorem original_sign_mismatch_E_F_W_F :
    normalize ([(2, [4])] ++ negate (deriv 240 U2_E_F_W)) ≠
      normalize ([(2, [4])] ++ C2_E_F_W_F) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 17. -/
def C2_E_F_W_W : Poly := [(2, [0, 20]), (2, [0, 72, 240]), (2, [0, 246, 254]), (2, [27, 240]), (2, [238, 246])]
theorem derivative_E_F_W_W :
    normalize (deriv 246 U2_E_F_W) = normalize C2_E_F_W_W := by decide +kernel
theorem original_sign_mismatch_E_F_W_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_E_F_W)) ≠
      normalize ([(2, [10])] ++ C2_E_F_W_W) := by decide +kernel

/-- Twice the restricted C1 potential for E_F_T. -/
def U2_E_F_T : Poly := [(2, [0, 12, 240]), (2, [0, 19, 245]), (2, [0, 71, 240, 245]), (1, [0, 240, 240, 248]), (1, [0, 245, 245, 253]), (2, [26, 240, 245]), (1, [232, 240, 240]), (1, [237, 245, 245])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 21. -/
def C2_E_F_T_F : Poly := [(2, [0, 12]), (2, [0, 71, 245]), (2, [0, 240, 248]), (2, [26, 245]), (2, [232, 240])]
theorem derivative_E_F_T_F :
    normalize (deriv 240 U2_E_F_T) = normalize C2_E_F_T_F := by decide +kernel
theorem original_sign_mismatch_E_F_T_F :
    normalize ([(2, [4])] ++ negate (deriv 240 U2_E_F_T)) ≠
      normalize ([(2, [4])] ++ C2_E_F_T_F) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 22. -/
def C2_E_F_T_T : Poly := [(2, [0, 19]), (2, [0, 71, 240]), (2, [0, 245, 253]), (2, [26, 240]), (2, [237, 245])]
theorem derivative_E_F_T_T :
    normalize (deriv 245 U2_E_F_T) = normalize C2_E_F_T_T := by decide +kernel
theorem original_sign_mismatch_E_F_T_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_E_F_T)) ≠
      normalize ([(2, [9])] ++ C2_E_F_T_T) := by decide +kernel

/-- Twice the restricted C1 potential for E_F_I. -/
def U2_E_F_I : Poly := [(2, [0, 12, 240]), (2, [0, 14, 242]), (2, [0, 68, 240, 242]), (1, [0, 240, 240, 248]), (1, [0, 242, 242, 250]), (2, [23, 240, 242]), (1, [232, 240, 240]), (1, [234, 242, 242])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 26. -/
def C2_E_F_I_F : Poly := [(2, [0, 12]), (2, [0, 68, 242]), (2, [0, 240, 248]), (2, [23, 242]), (2, [232, 240])]
theorem derivative_E_F_I_F :
    normalize (deriv 240 U2_E_F_I) = normalize C2_E_F_I_F := by decide +kernel
theorem original_sign_mismatch_E_F_I_F :
    normalize ([(2, [4])] ++ negate (deriv 240 U2_E_F_I)) ≠
      normalize ([(2, [4])] ++ C2_E_F_I_F) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 27. -/
def C2_E_F_I_I : Poly := [(2, [0, 14]), (2, [0, 68, 240]), (2, [0, 242, 250]), (2, [23, 240]), (2, [234, 242])]
theorem derivative_E_F_I_I :
    normalize (deriv 242 U2_E_F_I) = normalize C2_E_F_I_I := by decide +kernel
theorem original_sign_mismatch_E_F_I_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_E_F_I)) ≠
      normalize ([(2, [6])] ++ C2_E_F_I_I) := by decide +kernel

/-- Twice the restricted C1 potential for E_F_R. -/
def U2_E_F_R : Poly := [(2, [0, 12, 240]), (2, [0, 17, 244]), (2, [0, 70, 240, 244]), (1, [0, 240, 240, 248]), (1, [0, 244, 244, 252]), (2, [25, 240, 244]), (1, [232, 240, 240]), (1, [236, 244, 244])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 31. -/
def C2_E_F_R_F : Poly := [(2, [0, 12]), (2, [0, 70, 244]), (2, [0, 240, 248]), (2, [25, 244]), (2, [232, 240])]
theorem derivative_E_F_R_F :
    normalize (deriv 240 U2_E_F_R) = normalize C2_E_F_R_F := by decide +kernel
theorem original_sign_mismatch_E_F_R_F :
    normalize ([(2, [4])] ++ negate (deriv 240 U2_E_F_R)) ≠
      normalize ([(2, [4])] ++ C2_E_F_R_F) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 32. -/
def C2_E_F_R_R : Poly := [(2, [0, 17]), (2, [0, 70, 240]), (2, [0, 244, 252]), (2, [25, 240]), (2, [236, 244])]
theorem derivative_E_F_R_R :
    normalize (deriv 244 U2_E_F_R) = normalize C2_E_F_R_R := by decide +kernel
theorem original_sign_mismatch_E_F_R_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_E_F_R)) ≠
      normalize ([(2, [8])] ++ C2_E_F_R_R) := by decide +kernel

/-- Twice the restricted C1 potential for E_F_S. -/
def U2_E_F_S : Poly := [(2, [0, 2, 18]), (2, [0, 2, 93, 240]), (2, [0, 12, 240]), (1, [0, 240, 240, 248]), (2, [2, 48, 240]), (1, [232, 240, 240])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 39. -/
def C2_E_F_S_F : Poly := [(2, [0, 2, 93]), (2, [0, 12]), (2, [0, 240, 248]), (2, [2, 48]), (2, [232, 240])]
theorem derivative_E_F_S_F :
    normalize (deriv 240 U2_E_F_S) = normalize C2_E_F_S_F := by decide +kernel
theorem original_sign_mismatch_E_F_S_F :
    normalize ([(2, [4])] ++ negate (deriv 240 U2_E_F_S)) ≠
      normalize ([(2, [4])] ++ C2_E_F_S_F) := by decide +kernel

/-- Twice the restricted C1 potential for E_F_H. -/
def U2_E_F_H : Poly := [(2, [0, 12, 240]), (2, [0, 13, 241]), (2, [0, 67, 240, 241]), (1, [0, 240, 240, 248]), (1, [0, 241, 241, 249]), (2, [22, 240, 241]), (1, [232, 240, 240]), (1, [233, 241, 241])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 43. -/
def C2_E_F_H_F : Poly := [(2, [0, 12]), (2, [0, 67, 241]), (2, [0, 240, 248]), (2, [22, 241]), (2, [232, 240])]
theorem derivative_E_F_H_F :
    normalize (deriv 240 U2_E_F_H) = normalize C2_E_F_H_F := by decide +kernel
theorem original_sign_mismatch_E_F_H_F :
    normalize ([(2, [4])] ++ negate (deriv 240 U2_E_F_H)) ≠
      normalize ([(2, [4])] ++ C2_E_F_H_F) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 44. -/
def C2_E_F_H_H : Poly := [(2, [0, 13]), (2, [0, 67, 240]), (2, [0, 241, 249]), (2, [22, 240]), (2, [233, 241])]
theorem derivative_E_F_H_H :
    normalize (deriv 241 U2_E_F_H) = normalize C2_E_F_H_H := by decide +kernel
theorem original_sign_mismatch_E_F_H_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_E_F_H)) ≠
      normalize ([(2, [5])] ++ C2_E_F_H_H) := by decide +kernel

/-- Twice the restricted C1 potential for E_F_P. -/
def U2_E_F_P : Poly := [(2, [0, 12, 240]), (2, [0, 16, 243]), (2, [0, 69, 240, 243]), (1, [0, 240, 240, 248]), (1, [0, 243, 243, 251]), (2, [24, 240, 243]), (1, [232, 240, 240]), (1, [235, 243, 243])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 48. -/
def C2_E_F_P_F : Poly := [(2, [0, 12]), (2, [0, 69, 243]), (2, [0, 240, 248]), (2, [24, 243]), (2, [232, 240])]
theorem derivative_E_F_P_F :
    normalize (deriv 240 U2_E_F_P) = normalize C2_E_F_P_F := by decide +kernel
theorem original_sign_mismatch_E_F_P_F :
    normalize ([(2, [4])] ++ negate (deriv 240 U2_E_F_P)) ≠
      normalize ([(2, [4])] ++ C2_E_F_P_F) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 49. -/
def C2_E_F_P_P : Poly := [(2, [0, 16]), (2, [0, 69, 240]), (2, [0, 243, 251]), (2, [24, 240]), (2, [235, 243])]
theorem derivative_E_F_P_P :
    normalize (deriv 243 U2_E_F_P) = normalize C2_E_F_P_P := by decide +kernel
theorem original_sign_mismatch_E_F_P_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_E_F_P)) ≠
      normalize ([(2, [7])] ++ C2_E_F_P_P) := by decide +kernel

/-- Twice the restricted C1 potential for E_F_A. -/
def U2_E_F_A : Poly := [(2, [0, 11, 239]), (2, [0, 12, 240]), (2, [0, 66, 239, 240]), (1, [0, 239, 239, 247]), (1, [0, 240, 240, 248]), (2, [21, 239, 240]), (1, [231, 239, 239]), (1, [232, 240, 240])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 53. -/
def C2_E_F_A_F : Poly := [(2, [0, 12]), (2, [0, 66, 239]), (2, [0, 240, 248]), (2, [21, 239]), (2, [232, 240])]
theorem derivative_E_F_A_F :
    normalize (deriv 240 U2_E_F_A) = normalize C2_E_F_A_F := by decide +kernel
theorem original_sign_mismatch_E_F_A_F :
    normalize ([(2, [4])] ++ negate (deriv 240 U2_E_F_A)) ≠
      normalize ([(2, [4])] ++ C2_E_F_A_F) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 54. -/
def C2_E_F_A_A : Poly := [(2, [0, 11]), (2, [0, 66, 240]), (2, [0, 239, 247]), (2, [21, 240]), (2, [231, 239])]
theorem derivative_E_F_A_A :
    normalize (deriv 239 U2_E_F_A) = normalize C2_E_F_A_A := by decide +kernel
theorem original_sign_mismatch_E_F_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_E_F_A)) ≠
      normalize ([(2, [3])] ++ C2_E_F_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for E_M_W. -/
def U2_E_M_W : Poly := [(2, [0, 1, 15]), (2, [0, 1, 87, 246]), (2, [0, 20, 246]), (1, [0, 246, 246, 254]), (2, [1, 42, 246]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 61. -/
def C2_E_M_W_W : Poly := [(2, [0, 1, 87]), (2, [0, 20]), (2, [0, 246, 254]), (2, [1, 42]), (2, [238, 246])]
theorem derivative_E_M_W_W :
    normalize (deriv 246 U2_E_M_W) = normalize C2_E_M_W_W := by decide +kernel
theorem original_sign_mismatch_E_M_W_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_E_M_W)) ≠
      normalize ([(2, [10])] ++ C2_E_M_W_W) := by decide +kernel

/-- Twice the restricted C1 potential for E_M_T. -/
def U2_E_M_T : Poly := [(2, [0, 1, 15]), (2, [0, 1, 86, 245]), (2, [0, 19, 245]), (1, [0, 245, 245, 253]), (2, [1, 41, 245]), (1, [237, 245, 245])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 68. -/
def C2_E_M_T_T : Poly := [(2, [0, 1, 86]), (2, [0, 19]), (2, [0, 245, 253]), (2, [1, 41]), (2, [237, 245])]
theorem derivative_E_M_T_T :
    normalize (deriv 245 U2_E_M_T) = normalize C2_E_M_T_T := by decide +kernel
theorem original_sign_mismatch_E_M_T_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_E_M_T)) ≠
      normalize ([(2, [9])] ++ C2_E_M_T_T) := by decide +kernel

/-- Twice the restricted C1 potential for E_M_I. -/
def U2_E_M_I : Poly := [(2, [0, 1, 15]), (2, [0, 1, 82, 242]), (2, [0, 14, 242]), (1, [0, 242, 242, 250]), (2, [1, 37, 242]), (1, [234, 242, 242])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 75. -/
def C2_E_M_I_I : Poly := [(2, [0, 1, 82]), (2, [0, 14]), (2, [0, 242, 250]), (2, [1, 37]), (2, [234, 242])]
theorem derivative_E_M_I_I :
    normalize (deriv 242 U2_E_M_I) = normalize C2_E_M_I_I := by decide +kernel
theorem original_sign_mismatch_E_M_I_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_E_M_I)) ≠
      normalize ([(2, [6])] ++ C2_E_M_I_I) := by decide +kernel

end EFMWLagrangian
