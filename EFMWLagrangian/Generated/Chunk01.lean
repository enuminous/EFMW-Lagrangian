import EFMWLagrangian.Core

set_option maxRecDepth 20000
set_option maxHeartbeats 0
namespace EFMWLagrangian

/-- Twice the restricted C1 potential for E_M_R. -/
def U2_E_M_R : Poly := [(2, [0, 1, 15]), (2, [0, 1, 84, 244]), (2, [0, 17, 244]), (1, [0, 244, 244, 252]), (2, [1, 39, 244]), (1, [236, 244, 244])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 82. -/
def C2_E_M_R_R : Poly := [(2, [0, 1, 84]), (2, [0, 17]), (2, [0, 244, 252]), (2, [1, 39]), (2, [236, 244])]
theorem derivative_E_M_R_R :
    normalize (deriv 244 U2_E_M_R) = normalize C2_E_M_R_R := by decide +kernel
theorem original_sign_mismatch_E_M_R_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_E_M_R)) ≠
      normalize ([(2, [8])] ++ C2_E_M_R_R) := by decide +kernel

/-- Twice the restricted C1 potential for E_M_S. -/
def U2_E_M_S : Poly := [(2, [0, 1, 2, 85]), (2, [0, 1, 15]), (2, [0, 2, 18]), (2, [1, 2, 40])]
/-- Twice the restricted C1 potential for E_M_H. -/
def U2_E_M_H : Poly := [(2, [0, 1, 15]), (2, [0, 1, 81, 241]), (2, [0, 13, 241]), (1, [0, 241, 241, 249]), (2, [1, 36, 241]), (1, [233, 241, 241])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 98. -/
def C2_E_M_H_H : Poly := [(2, [0, 1, 81]), (2, [0, 13]), (2, [0, 241, 249]), (2, [1, 36]), (2, [233, 241])]
theorem derivative_E_M_H_H :
    normalize (deriv 241 U2_E_M_H) = normalize C2_E_M_H_H := by decide +kernel
theorem original_sign_mismatch_E_M_H_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_E_M_H)) ≠
      normalize ([(2, [5])] ++ C2_E_M_H_H) := by decide +kernel

/-- Twice the restricted C1 potential for E_M_P. -/
def U2_E_M_P : Poly := [(2, [0, 1, 15]), (2, [0, 1, 83, 243]), (2, [0, 16, 243]), (1, [0, 243, 243, 251]), (2, [1, 38, 243]), (1, [235, 243, 243])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 105. -/
def C2_E_M_P_P : Poly := [(2, [0, 1, 83]), (2, [0, 16]), (2, [0, 243, 251]), (2, [1, 38]), (2, [235, 243])]
theorem derivative_E_M_P_P :
    normalize (deriv 243 U2_E_M_P) = normalize C2_E_M_P_P := by decide +kernel
theorem original_sign_mismatch_E_M_P_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_E_M_P)) ≠
      normalize ([(2, [7])] ++ C2_E_M_P_P) := by decide +kernel

/-- Twice the restricted C1 potential for E_M_A. -/
def U2_E_M_A : Poly := [(2, [0, 1, 15]), (2, [0, 1, 79, 239]), (2, [0, 11, 239]), (1, [0, 239, 239, 247]), (2, [1, 34, 239]), (1, [231, 239, 239])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 112. -/
def C2_E_M_A_A : Poly := [(2, [0, 1, 79]), (2, [0, 11]), (2, [0, 239, 247]), (2, [1, 34]), (2, [231, 239])]
theorem derivative_E_M_A_A :
    normalize (deriv 239 U2_E_M_A) = normalize C2_E_M_A_A := by decide +kernel
theorem original_sign_mismatch_E_M_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_E_M_A)) ≠
      normalize ([(2, [3])] ++ C2_E_M_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for E_W_T. -/
def U2_E_W_T : Poly := [(2, [0, 19, 245]), (2, [0, 20, 246]), (2, [0, 110, 245, 246]), (1, [0, 245, 245, 253]), (1, [0, 246, 246, 254]), (2, [65, 245, 246]), (1, [237, 245, 245]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 116. -/
def C2_E_W_T_W : Poly := [(2, [0, 20]), (2, [0, 110, 245]), (2, [0, 246, 254]), (2, [65, 245]), (2, [238, 246])]
theorem derivative_E_W_T_W :
    normalize (deriv 246 U2_E_W_T) = normalize C2_E_W_T_W := by decide +kernel
theorem original_sign_mismatch_E_W_T_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_E_W_T)) ≠
      normalize ([(2, [10])] ++ C2_E_W_T_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 117. -/
def C2_E_W_T_T : Poly := [(2, [0, 19]), (2, [0, 110, 246]), (2, [0, 245, 253]), (2, [65, 246]), (2, [237, 245])]
theorem derivative_E_W_T_T :
    normalize (deriv 245 U2_E_W_T) = normalize C2_E_W_T_T := by decide +kernel
theorem original_sign_mismatch_E_W_T_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_E_W_T)) ≠
      normalize ([(2, [9])] ++ C2_E_W_T_T) := by decide +kernel

/-- Twice the restricted C1 potential for E_W_I. -/
def U2_E_W_I : Poly := [(2, [0, 14, 242]), (2, [0, 20, 246]), (2, [0, 107, 242, 246]), (1, [0, 242, 242, 250]), (1, [0, 246, 246, 254]), (2, [62, 242, 246]), (1, [234, 242, 242]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 121. -/
def C2_E_W_I_W : Poly := [(2, [0, 20]), (2, [0, 107, 242]), (2, [0, 246, 254]), (2, [62, 242]), (2, [238, 246])]
theorem derivative_E_W_I_W :
    normalize (deriv 246 U2_E_W_I) = normalize C2_E_W_I_W := by decide +kernel
theorem original_sign_mismatch_E_W_I_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_E_W_I)) ≠
      normalize ([(2, [10])] ++ C2_E_W_I_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 122. -/
def C2_E_W_I_I : Poly := [(2, [0, 14]), (2, [0, 107, 246]), (2, [0, 242, 250]), (2, [62, 246]), (2, [234, 242])]
theorem derivative_E_W_I_I :
    normalize (deriv 242 U2_E_W_I) = normalize C2_E_W_I_I := by decide +kernel
theorem original_sign_mismatch_E_W_I_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_E_W_I)) ≠
      normalize ([(2, [6])] ++ C2_E_W_I_I) := by decide +kernel

/-- Twice the restricted C1 potential for E_W_R. -/
def U2_E_W_R : Poly := [(2, [0, 17, 244]), (2, [0, 20, 246]), (2, [0, 109, 244, 246]), (1, [0, 244, 244, 252]), (1, [0, 246, 246, 254]), (2, [64, 244, 246]), (1, [236, 244, 244]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 126. -/
def C2_E_W_R_W : Poly := [(2, [0, 20]), (2, [0, 109, 244]), (2, [0, 246, 254]), (2, [64, 244]), (2, [238, 246])]
theorem derivative_E_W_R_W :
    normalize (deriv 246 U2_E_W_R) = normalize C2_E_W_R_W := by decide +kernel
theorem original_sign_mismatch_E_W_R_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_E_W_R)) ≠
      normalize ([(2, [10])] ++ C2_E_W_R_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 127. -/
def C2_E_W_R_R : Poly := [(2, [0, 17]), (2, [0, 109, 246]), (2, [0, 244, 252]), (2, [64, 246]), (2, [236, 244])]
theorem derivative_E_W_R_R :
    normalize (deriv 244 U2_E_W_R) = normalize C2_E_W_R_R := by decide +kernel
theorem original_sign_mismatch_E_W_R_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_E_W_R)) ≠
      normalize ([(2, [8])] ++ C2_E_W_R_R) := by decide +kernel

/-- Twice the restricted C1 potential for E_W_S. -/
def U2_E_W_S : Poly := [(2, [0, 2, 18]), (2, [0, 2, 99, 246]), (2, [0, 20, 246]), (1, [0, 246, 246, 254]), (2, [2, 54, 246]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 134. -/
def C2_E_W_S_W : Poly := [(2, [0, 2, 99]), (2, [0, 20]), (2, [0, 246, 254]), (2, [2, 54]), (2, [238, 246])]
theorem derivative_E_W_S_W :
    normalize (deriv 246 U2_E_W_S) = normalize C2_E_W_S_W := by decide +kernel
theorem original_sign_mismatch_E_W_S_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_E_W_S)) ≠
      normalize ([(2, [10])] ++ C2_E_W_S_W) := by decide +kernel

/-- Twice the restricted C1 potential for E_W_H. -/
def U2_E_W_H : Poly := [(2, [0, 13, 241]), (2, [0, 20, 246]), (2, [0, 106, 241, 246]), (1, [0, 241, 241, 249]), (1, [0, 246, 246, 254]), (2, [61, 241, 246]), (1, [233, 241, 241]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 138. -/
def C2_E_W_H_W : Poly := [(2, [0, 20]), (2, [0, 106, 241]), (2, [0, 246, 254]), (2, [61, 241]), (2, [238, 246])]
theorem derivative_E_W_H_W :
    normalize (deriv 246 U2_E_W_H) = normalize C2_E_W_H_W := by decide +kernel
theorem original_sign_mismatch_E_W_H_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_E_W_H)) ≠
      normalize ([(2, [10])] ++ C2_E_W_H_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 139. -/
def C2_E_W_H_H : Poly := [(2, [0, 13]), (2, [0, 106, 246]), (2, [0, 241, 249]), (2, [61, 246]), (2, [233, 241])]
theorem derivative_E_W_H_H :
    normalize (deriv 241 U2_E_W_H) = normalize C2_E_W_H_H := by decide +kernel
theorem original_sign_mismatch_E_W_H_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_E_W_H)) ≠
      normalize ([(2, [5])] ++ C2_E_W_H_H) := by decide +kernel

/-- Twice the restricted C1 potential for E_W_P. -/
def U2_E_W_P : Poly := [(2, [0, 16, 243]), (2, [0, 20, 246]), (2, [0, 108, 243, 246]), (1, [0, 243, 243, 251]), (1, [0, 246, 246, 254]), (2, [63, 243, 246]), (1, [235, 243, 243]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 143. -/
def C2_E_W_P_W : Poly := [(2, [0, 20]), (2, [0, 108, 243]), (2, [0, 246, 254]), (2, [63, 243]), (2, [238, 246])]
theorem derivative_E_W_P_W :
    normalize (deriv 246 U2_E_W_P) = normalize C2_E_W_P_W := by decide +kernel
theorem original_sign_mismatch_E_W_P_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_E_W_P)) ≠
      normalize ([(2, [10])] ++ C2_E_W_P_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 144. -/
def C2_E_W_P_P : Poly := [(2, [0, 16]), (2, [0, 108, 246]), (2, [0, 243, 251]), (2, [63, 246]), (2, [235, 243])]
theorem derivative_E_W_P_P :
    normalize (deriv 243 U2_E_W_P) = normalize C2_E_W_P_P := by decide +kernel
theorem original_sign_mismatch_E_W_P_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_E_W_P)) ≠
      normalize ([(2, [7])] ++ C2_E_W_P_P) := by decide +kernel

/-- Twice the restricted C1 potential for E_W_A. -/
def U2_E_W_A : Poly := [(2, [0, 11, 239]), (2, [0, 20, 246]), (2, [0, 105, 239, 246]), (1, [0, 239, 239, 247]), (1, [0, 246, 246, 254]), (2, [60, 239, 246]), (1, [231, 239, 239]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 148. -/
def C2_E_W_A_W : Poly := [(2, [0, 20]), (2, [0, 105, 239]), (2, [0, 246, 254]), (2, [60, 239]), (2, [238, 246])]
theorem derivative_E_W_A_W :
    normalize (deriv 246 U2_E_W_A) = normalize C2_E_W_A_W := by decide +kernel
theorem original_sign_mismatch_E_W_A_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_E_W_A)) ≠
      normalize ([(2, [10])] ++ C2_E_W_A_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 149. -/
def C2_E_W_A_A : Poly := [(2, [0, 11]), (2, [0, 105, 246]), (2, [0, 239, 247]), (2, [60, 246]), (2, [231, 239])]
theorem derivative_E_W_A_A :
    normalize (deriv 239 U2_E_W_A) = normalize C2_E_W_A_A := by decide +kernel
theorem original_sign_mismatch_E_W_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_E_W_A)) ≠
      normalize ([(2, [3])] ++ C2_E_W_A_A) := by decide +kernel

end EFMWLagrangian
