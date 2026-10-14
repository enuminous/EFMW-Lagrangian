import EFMWLagrangian.Core

set_option maxRecDepth 20000
set_option maxHeartbeats 0
namespace EFMWLagrangian

/-- Twice the restricted C1 potential for M_W_S. -/
def U2_M_W_S : Poly := [(1, [0, 246, 246, 254]), (2, [1, 2, 40]), (2, [1, 2, 163, 246]), (2, [1, 42, 246]), (2, [2, 54, 246]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 508. -/
def C2_M_W_S_W : Poly := [(2, [0, 246, 254]), (2, [1, 2, 163]), (2, [1, 42]), (2, [2, 54]), (2, [238, 246])]
theorem derivative_M_W_S_W :
    normalize (deriv 246 U2_M_W_S) = normalize C2_M_W_S_W := by decide +kernel
theorem original_sign_mismatch_M_W_S_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_M_W_S)) ≠
      normalize ([(2, [10])] ++ C2_M_W_S_W) := by decide +kernel

/-- Twice the restricted C1 potential for M_W_H. -/
def U2_M_W_H : Poly := [(1, [0, 241, 241, 249]), (1, [0, 246, 246, 254]), (2, [1, 36, 241]), (2, [1, 42, 246]), (2, [1, 170, 241, 246]), (2, [61, 241, 246]), (1, [233, 241, 241]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 514. -/
def C2_M_W_H_W : Poly := [(2, [0, 246, 254]), (2, [1, 42]), (2, [1, 170, 241]), (2, [61, 241]), (2, [238, 246])]
theorem derivative_M_W_H_W :
    normalize (deriv 246 U2_M_W_H) = normalize C2_M_W_H_W := by decide +kernel
theorem original_sign_mismatch_M_W_H_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_M_W_H)) ≠
      normalize ([(2, [10])] ++ C2_M_W_H_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 515. -/
def C2_M_W_H_H : Poly := [(2, [0, 241, 249]), (2, [1, 36]), (2, [1, 170, 246]), (2, [61, 246]), (2, [233, 241])]
theorem derivative_M_W_H_H :
    normalize (deriv 241 U2_M_W_H) = normalize C2_M_W_H_H := by decide +kernel
theorem original_sign_mismatch_M_W_H_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_M_W_H)) ≠
      normalize ([(2, [5])] ++ C2_M_W_H_H) := by decide +kernel

/-- Twice the restricted C1 potential for M_W_P. -/
def U2_M_W_P : Poly := [(1, [0, 243, 243, 251]), (1, [0, 246, 246, 254]), (2, [1, 38, 243]), (2, [1, 42, 246]), (2, [1, 172, 243, 246]), (2, [63, 243, 246]), (1, [235, 243, 243]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 521. -/
def C2_M_W_P_W : Poly := [(2, [0, 246, 254]), (2, [1, 42]), (2, [1, 172, 243]), (2, [63, 243]), (2, [238, 246])]
theorem derivative_M_W_P_W :
    normalize (deriv 246 U2_M_W_P) = normalize C2_M_W_P_W := by decide +kernel
theorem original_sign_mismatch_M_W_P_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_M_W_P)) ≠
      normalize ([(2, [10])] ++ C2_M_W_P_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 522. -/
def C2_M_W_P_P : Poly := [(2, [0, 243, 251]), (2, [1, 38]), (2, [1, 172, 246]), (2, [63, 246]), (2, [235, 243])]
theorem derivative_M_W_P_P :
    normalize (deriv 243 U2_M_W_P) = normalize C2_M_W_P_P := by decide +kernel
theorem original_sign_mismatch_M_W_P_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_M_W_P)) ≠
      normalize ([(2, [7])] ++ C2_M_W_P_P) := by decide +kernel

/-- Twice the restricted C1 potential for M_W_A. -/
def U2_M_W_A : Poly := [(1, [0, 239, 239, 247]), (1, [0, 246, 246, 254]), (2, [1, 34, 239]), (2, [1, 42, 246]), (2, [1, 169, 239, 246]), (2, [60, 239, 246]), (1, [231, 239, 239]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 528. -/
def C2_M_W_A_W : Poly := [(2, [0, 246, 254]), (2, [1, 42]), (2, [1, 169, 239]), (2, [60, 239]), (2, [238, 246])]
theorem derivative_M_W_A_W :
    normalize (deriv 246 U2_M_W_A) = normalize C2_M_W_A_W := by decide +kernel
theorem original_sign_mismatch_M_W_A_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_M_W_A)) ≠
      normalize ([(2, [10])] ++ C2_M_W_A_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 529. -/
def C2_M_W_A_A : Poly := [(2, [0, 239, 247]), (2, [1, 34]), (2, [1, 169, 246]), (2, [60, 246]), (2, [231, 239])]
theorem derivative_M_W_A_A :
    normalize (deriv 239 U2_M_W_A) = normalize C2_M_W_A_A := by decide +kernel
theorem original_sign_mismatch_M_W_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_M_W_A)) ≠
      normalize ([(2, [3])] ++ C2_M_W_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for M_T_I. -/
def U2_M_T_I : Poly := [(1, [0, 242, 242, 250]), (1, [0, 245, 245, 253]), (2, [1, 37, 242]), (2, [1, 41, 245]), (2, [1, 166, 242, 245]), (2, [57, 242, 245]), (1, [234, 242, 242]), (1, [237, 245, 245])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 535. -/
def C2_M_T_I_T : Poly := [(2, [0, 245, 253]), (2, [1, 41]), (2, [1, 166, 242]), (2, [57, 242]), (2, [237, 245])]
theorem derivative_M_T_I_T :
    normalize (deriv 245 U2_M_T_I) = normalize C2_M_T_I_T := by decide +kernel
theorem original_sign_mismatch_M_T_I_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_M_T_I)) ≠
      normalize ([(2, [9])] ++ C2_M_T_I_T) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 536. -/
def C2_M_T_I_I : Poly := [(2, [0, 242, 250]), (2, [1, 37]), (2, [1, 166, 245]), (2, [57, 245]), (2, [234, 242])]
theorem derivative_M_T_I_I :
    normalize (deriv 242 U2_M_T_I) = normalize C2_M_T_I_I := by decide +kernel
theorem original_sign_mismatch_M_T_I_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_M_T_I)) ≠
      normalize ([(2, [6])] ++ C2_M_T_I_I) := by decide +kernel

/-- Twice the restricted C1 potential for M_T_R. -/
def U2_M_T_R : Poly := [(1, [0, 244, 244, 252]), (1, [0, 245, 245, 253]), (2, [1, 39, 244]), (2, [1, 41, 245]), (2, [1, 168, 244, 245]), (2, [59, 244, 245]), (1, [236, 244, 244]), (1, [237, 245, 245])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 542. -/
def C2_M_T_R_T : Poly := [(2, [0, 245, 253]), (2, [1, 41]), (2, [1, 168, 244]), (2, [59, 244]), (2, [237, 245])]
theorem derivative_M_T_R_T :
    normalize (deriv 245 U2_M_T_R) = normalize C2_M_T_R_T := by decide +kernel
theorem original_sign_mismatch_M_T_R_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_M_T_R)) ≠
      normalize ([(2, [9])] ++ C2_M_T_R_T) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 543. -/
def C2_M_T_R_R : Poly := [(2, [0, 244, 252]), (2, [1, 39]), (2, [1, 168, 245]), (2, [59, 245]), (2, [236, 244])]
theorem derivative_M_T_R_R :
    normalize (deriv 244 U2_M_T_R) = normalize C2_M_T_R_R := by decide +kernel
theorem original_sign_mismatch_M_T_R_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_M_T_R)) ≠
      normalize ([(2, [8])] ++ C2_M_T_R_R) := by decide +kernel

/-- Twice the restricted C1 potential for M_T_S. -/
def U2_M_T_S : Poly := [(1, [0, 245, 245, 253]), (2, [1, 2, 40]), (2, [1, 2, 162, 245]), (2, [1, 41, 245]), (2, [2, 53, 245]), (1, [237, 245, 245])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 552. -/
def C2_M_T_S_T : Poly := [(2, [0, 245, 253]), (2, [1, 2, 162]), (2, [1, 41]), (2, [2, 53]), (2, [237, 245])]
theorem derivative_M_T_S_T :
    normalize (deriv 245 U2_M_T_S) = normalize C2_M_T_S_T := by decide +kernel
theorem original_sign_mismatch_M_T_S_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_M_T_S)) ≠
      normalize ([(2, [9])] ++ C2_M_T_S_T) := by decide +kernel

/-- Twice the restricted C1 potential for M_T_H. -/
def U2_M_T_H : Poly := [(1, [0, 241, 241, 249]), (1, [0, 245, 245, 253]), (2, [1, 36, 241]), (2, [1, 41, 245]), (2, [1, 165, 241, 245]), (2, [56, 241, 245]), (1, [233, 241, 241]), (1, [237, 245, 245])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 558. -/
def C2_M_T_H_T : Poly := [(2, [0, 245, 253]), (2, [1, 41]), (2, [1, 165, 241]), (2, [56, 241]), (2, [237, 245])]
theorem derivative_M_T_H_T :
    normalize (deriv 245 U2_M_T_H) = normalize C2_M_T_H_T := by decide +kernel
theorem original_sign_mismatch_M_T_H_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_M_T_H)) ≠
      normalize ([(2, [9])] ++ C2_M_T_H_T) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 559. -/
def C2_M_T_H_H : Poly := [(2, [0, 241, 249]), (2, [1, 36]), (2, [1, 165, 245]), (2, [56, 245]), (2, [233, 241])]
theorem derivative_M_T_H_H :
    normalize (deriv 241 U2_M_T_H) = normalize C2_M_T_H_H := by decide +kernel
theorem original_sign_mismatch_M_T_H_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_M_T_H)) ≠
      normalize ([(2, [5])] ++ C2_M_T_H_H) := by decide +kernel

/-- Twice the restricted C1 potential for M_T_P. -/
def U2_M_T_P : Poly := [(1, [0, 243, 243, 251]), (1, [0, 245, 245, 253]), (2, [1, 38, 243]), (2, [1, 41, 245]), (2, [1, 167, 243, 245]), (2, [58, 243, 245]), (1, [235, 243, 243]), (1, [237, 245, 245])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 565. -/
def C2_M_T_P_T : Poly := [(2, [0, 245, 253]), (2, [1, 41]), (2, [1, 167, 243]), (2, [58, 243]), (2, [237, 245])]
theorem derivative_M_T_P_T :
    normalize (deriv 245 U2_M_T_P) = normalize C2_M_T_P_T := by decide +kernel
theorem original_sign_mismatch_M_T_P_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_M_T_P)) ≠
      normalize ([(2, [9])] ++ C2_M_T_P_T) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 566. -/
def C2_M_T_P_P : Poly := [(2, [0, 243, 251]), (2, [1, 38]), (2, [1, 167, 245]), (2, [58, 245]), (2, [235, 243])]
theorem derivative_M_T_P_P :
    normalize (deriv 243 U2_M_T_P) = normalize C2_M_T_P_P := by decide +kernel
theorem original_sign_mismatch_M_T_P_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_M_T_P)) ≠
      normalize ([(2, [7])] ++ C2_M_T_P_P) := by decide +kernel

/-- Twice the restricted C1 potential for M_T_A. -/
def U2_M_T_A : Poly := [(1, [0, 239, 239, 247]), (1, [0, 245, 245, 253]), (2, [1, 34, 239]), (2, [1, 41, 245]), (2, [1, 164, 239, 245]), (2, [55, 239, 245]), (1, [231, 239, 239]), (1, [237, 245, 245])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 572. -/
def C2_M_T_A_T : Poly := [(2, [0, 245, 253]), (2, [1, 41]), (2, [1, 164, 239]), (2, [55, 239]), (2, [237, 245])]
theorem derivative_M_T_A_T :
    normalize (deriv 245 U2_M_T_A) = normalize C2_M_T_A_T := by decide +kernel
theorem original_sign_mismatch_M_T_A_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_M_T_A)) ≠
      normalize ([(2, [9])] ++ C2_M_T_A_T) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 573. -/
def C2_M_T_A_A : Poly := [(2, [0, 239, 247]), (2, [1, 34]), (2, [1, 164, 245]), (2, [55, 245]), (2, [231, 239])]
theorem derivative_M_T_A_A :
    normalize (deriv 239 U2_M_T_A) = normalize C2_M_T_A_A := by decide +kernel
theorem original_sign_mismatch_M_T_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_M_T_A)) ≠
      normalize ([(2, [3])] ++ C2_M_T_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for M_I_R. -/
def U2_M_I_R : Poly := [(1, [0, 242, 242, 250]), (1, [0, 244, 244, 252]), (2, [1, 37, 242]), (2, [1, 39, 244]), (2, [1, 151, 242, 244]), (2, [33, 242, 244]), (1, [234, 242, 242]), (1, [236, 244, 244])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 579. -/
def C2_M_I_R_I : Poly := [(2, [0, 242, 250]), (2, [1, 37]), (2, [1, 151, 244]), (2, [33, 244]), (2, [234, 242])]
theorem derivative_M_I_R_I :
    normalize (deriv 242 U2_M_I_R) = normalize C2_M_I_R_I := by decide +kernel
theorem original_sign_mismatch_M_I_R_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_M_I_R)) ≠
      normalize ([(2, [6])] ++ C2_M_I_R_I) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 580. -/
def C2_M_I_R_R : Poly := [(2, [0, 244, 252]), (2, [1, 39]), (2, [1, 151, 242]), (2, [33, 242]), (2, [236, 244])]
theorem derivative_M_I_R_R :
    normalize (deriv 244 U2_M_I_R) = normalize C2_M_I_R_R := by decide +kernel
theorem original_sign_mismatch_M_I_R_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_M_I_R)) ≠
      normalize ([(2, [8])] ++ C2_M_I_R_R) := by decide +kernel

/-- Twice the restricted C1 potential for M_I_S. -/
def U2_M_I_S : Poly := [(1, [0, 242, 242, 250]), (2, [1, 2, 40]), (2, [1, 2, 159, 242]), (2, [1, 37, 242]), (2, [2, 50, 242]), (1, [234, 242, 242])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 589. -/
def C2_M_I_S_I : Poly := [(2, [0, 242, 250]), (2, [1, 2, 159]), (2, [1, 37]), (2, [2, 50]), (2, [234, 242])]
theorem derivative_M_I_S_I :
    normalize (deriv 242 U2_M_I_S) = normalize C2_M_I_S_I := by decide +kernel
theorem original_sign_mismatch_M_I_S_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_M_I_S)) ≠
      normalize ([(2, [6])] ++ C2_M_I_S_I) := by decide +kernel

end EFMWLagrangian
