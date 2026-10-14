import EFMWLagrangian.Core

set_option maxRecDepth 20000
set_option maxHeartbeats 0
namespace EFMWLagrangian

/-- Twice the restricted C1 potential for F_R_H. -/
def U2_F_R_H : Poly := [(1, [0, 240, 240, 248]), (1, [0, 241, 241, 249]), (1, [0, 244, 244, 252]), (2, [22, 240, 241]), (2, [25, 240, 244]), (2, [45, 241, 244]), (2, [119, 240, 241, 244]), (1, [232, 240, 240]), (1, [233, 241, 241]), (1, [236, 244, 244])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 430. -/
def C2_F_R_H_F : Poly := [(2, [0, 240, 248]), (2, [22, 241]), (2, [25, 244]), (2, [119, 241, 244]), (2, [232, 240])]
theorem derivative_F_R_H_F :
    normalize (deriv 240 U2_F_R_H) = normalize C2_F_R_H_F := by decide +kernel
theorem original_sign_mismatch_F_R_H_F :
    normalize ([(2, [4])] ++ negate (deriv 240 U2_F_R_H)) ≠
      normalize ([(2, [4])] ++ C2_F_R_H_F) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 431. -/
def C2_F_R_H_R : Poly := [(2, [0, 244, 252]), (2, [25, 240]), (2, [45, 241]), (2, [119, 240, 241]), (2, [236, 244])]
theorem derivative_F_R_H_R :
    normalize (deriv 244 U2_F_R_H) = normalize C2_F_R_H_R := by decide +kernel
theorem original_sign_mismatch_F_R_H_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_F_R_H)) ≠
      normalize ([(2, [8])] ++ C2_F_R_H_R) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 432. -/
def C2_F_R_H_H : Poly := [(2, [0, 241, 249]), (2, [22, 240]), (2, [45, 244]), (2, [119, 240, 244]), (2, [233, 241])]
theorem derivative_F_R_H_H :
    normalize (deriv 241 U2_F_R_H) = normalize C2_F_R_H_H := by decide +kernel
theorem original_sign_mismatch_F_R_H_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_F_R_H)) ≠
      normalize ([(2, [5])] ++ C2_F_R_H_H) := by decide +kernel

/-- Twice the restricted C1 potential for F_R_P. -/
def U2_F_R_P : Poly := [(1, [0, 240, 240, 248]), (1, [0, 243, 243, 251]), (1, [0, 244, 244, 252]), (2, [24, 240, 243]), (2, [25, 240, 244]), (2, [46, 243, 244]), (2, [120, 240, 243, 244]), (1, [232, 240, 240]), (1, [235, 243, 243]), (1, [236, 244, 244])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 435. -/
def C2_F_R_P_F : Poly := [(2, [0, 240, 248]), (2, [24, 243]), (2, [25, 244]), (2, [120, 243, 244]), (2, [232, 240])]
theorem derivative_F_R_P_F :
    normalize (deriv 240 U2_F_R_P) = normalize C2_F_R_P_F := by decide +kernel
theorem original_sign_mismatch_F_R_P_F :
    normalize ([(2, [4])] ++ negate (deriv 240 U2_F_R_P)) ≠
      normalize ([(2, [4])] ++ C2_F_R_P_F) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 436. -/
def C2_F_R_P_R : Poly := [(2, [0, 244, 252]), (2, [25, 240]), (2, [46, 243]), (2, [120, 240, 243]), (2, [236, 244])]
theorem derivative_F_R_P_R :
    normalize (deriv 244 U2_F_R_P) = normalize C2_F_R_P_R := by decide +kernel
theorem original_sign_mismatch_F_R_P_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_F_R_P)) ≠
      normalize ([(2, [8])] ++ C2_F_R_P_R) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 437. -/
def C2_F_R_P_P : Poly := [(2, [0, 243, 251]), (2, [24, 240]), (2, [46, 244]), (2, [120, 240, 244]), (2, [235, 243])]
theorem derivative_F_R_P_P :
    normalize (deriv 243 U2_F_R_P) = normalize C2_F_R_P_P := by decide +kernel
theorem original_sign_mismatch_F_R_P_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_F_R_P)) ≠
      normalize ([(2, [7])] ++ C2_F_R_P_P) := by decide +kernel

/-- Twice the restricted C1 potential for F_R_A. -/
def U2_F_R_A : Poly := [(1, [0, 239, 239, 247]), (1, [0, 240, 240, 248]), (1, [0, 244, 244, 252]), (2, [21, 239, 240]), (2, [25, 240, 244]), (2, [44, 239, 244]), (2, [118, 239, 240, 244]), (1, [231, 239, 239]), (1, [232, 240, 240]), (1, [236, 244, 244])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 440. -/
def C2_F_R_A_F : Poly := [(2, [0, 240, 248]), (2, [21, 239]), (2, [25, 244]), (2, [118, 239, 244]), (2, [232, 240])]
theorem derivative_F_R_A_F :
    normalize (deriv 240 U2_F_R_A) = normalize C2_F_R_A_F := by decide +kernel
theorem original_sign_mismatch_F_R_A_F :
    normalize ([(2, [4])] ++ negate (deriv 240 U2_F_R_A)) ≠
      normalize ([(2, [4])] ++ C2_F_R_A_F) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 441. -/
def C2_F_R_A_R : Poly := [(2, [0, 244, 252]), (2, [25, 240]), (2, [44, 239]), (2, [118, 239, 240]), (2, [236, 244])]
theorem derivative_F_R_A_R :
    normalize (deriv 244 U2_F_R_A) = normalize C2_F_R_A_R := by decide +kernel
theorem original_sign_mismatch_F_R_A_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_F_R_A)) ≠
      normalize ([(2, [8])] ++ C2_F_R_A_R) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 442. -/
def C2_F_R_A_A : Poly := [(2, [0, 239, 247]), (2, [21, 240]), (2, [44, 244]), (2, [118, 240, 244]), (2, [231, 239])]
theorem derivative_F_R_A_A :
    normalize (deriv 239 U2_F_R_A) = normalize C2_F_R_A_A := by decide +kernel
theorem original_sign_mismatch_F_R_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_F_R_A)) ≠
      normalize ([(2, [3])] ++ C2_F_R_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for F_S_H. -/
def U2_F_S_H : Poly := [(1, [0, 240, 240, 248]), (1, [0, 241, 241, 249]), (2, [2, 48, 240]), (2, [2, 49, 241]), (2, [2, 179, 240, 241]), (2, [22, 240, 241]), (1, [232, 240, 240]), (1, [233, 241, 241])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 448. -/
def C2_F_S_H_F : Poly := [(2, [0, 240, 248]), (2, [2, 48]), (2, [2, 179, 241]), (2, [22, 241]), (2, [232, 240])]
theorem derivative_F_S_H_F :
    normalize (deriv 240 U2_F_S_H) = normalize C2_F_S_H_F := by decide +kernel
theorem original_sign_mismatch_F_S_H_F :
    normalize ([(2, [4])] ++ negate (deriv 240 U2_F_S_H)) ≠
      normalize ([(2, [4])] ++ C2_F_S_H_F) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 449. -/
def C2_F_S_H_H : Poly := [(2, [0, 241, 249]), (2, [2, 49]), (2, [2, 179, 240]), (2, [22, 240]), (2, [233, 241])]
theorem derivative_F_S_H_H :
    normalize (deriv 241 U2_F_S_H) = normalize C2_F_S_H_H := by decide +kernel
theorem original_sign_mismatch_F_S_H_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_F_S_H)) ≠
      normalize ([(2, [5])] ++ C2_F_S_H_H) := by decide +kernel

/-- Twice the restricted C1 potential for F_S_P. -/
def U2_F_S_P : Poly := [(1, [0, 240, 240, 248]), (1, [0, 243, 243, 251]), (2, [2, 48, 240]), (2, [2, 51, 243]), (2, [2, 181, 240, 243]), (2, [24, 240, 243]), (1, [232, 240, 240]), (1, [235, 243, 243])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 455. -/
def C2_F_S_P_F : Poly := [(2, [0, 240, 248]), (2, [2, 48]), (2, [2, 181, 243]), (2, [24, 243]), (2, [232, 240])]
theorem derivative_F_S_P_F :
    normalize (deriv 240 U2_F_S_P) = normalize C2_F_S_P_F := by decide +kernel
theorem original_sign_mismatch_F_S_P_F :
    normalize ([(2, [4])] ++ negate (deriv 240 U2_F_S_P)) ≠
      normalize ([(2, [4])] ++ C2_F_S_P_F) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 456. -/
def C2_F_S_P_P : Poly := [(2, [0, 243, 251]), (2, [2, 51]), (2, [2, 181, 240]), (2, [24, 240]), (2, [235, 243])]
theorem derivative_F_S_P_P :
    normalize (deriv 243 U2_F_S_P) = normalize C2_F_S_P_P := by decide +kernel
theorem original_sign_mismatch_F_S_P_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_F_S_P)) ≠
      normalize ([(2, [7])] ++ C2_F_S_P_P) := by decide +kernel

/-- Twice the restricted C1 potential for F_S_A. -/
def U2_F_S_A : Poly := [(1, [0, 239, 239, 247]), (1, [0, 240, 240, 248]), (2, [2, 47, 239]), (2, [2, 48, 240]), (2, [2, 178, 239, 240]), (2, [21, 239, 240]), (1, [231, 239, 239]), (1, [232, 240, 240])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 462. -/
def C2_F_S_A_F : Poly := [(2, [0, 240, 248]), (2, [2, 48]), (2, [2, 178, 239]), (2, [21, 239]), (2, [232, 240])]
theorem derivative_F_S_A_F :
    normalize (deriv 240 U2_F_S_A) = normalize C2_F_S_A_F := by decide +kernel
theorem original_sign_mismatch_F_S_A_F :
    normalize ([(2, [4])] ++ negate (deriv 240 U2_F_S_A)) ≠
      normalize ([(2, [4])] ++ C2_F_S_A_F) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 463. -/
def C2_F_S_A_A : Poly := [(2, [0, 239, 247]), (2, [2, 47]), (2, [2, 178, 240]), (2, [21, 240]), (2, [231, 239])]
theorem derivative_F_S_A_A :
    normalize (deriv 239 U2_F_S_A) = normalize C2_F_S_A_A := by decide +kernel
theorem original_sign_mismatch_F_S_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_F_S_A)) ≠
      normalize ([(2, [3])] ++ C2_F_S_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for F_H_P. -/
def U2_F_H_P : Poly := [(1, [0, 240, 240, 248]), (1, [0, 241, 241, 249]), (1, [0, 243, 243, 251]), (2, [22, 240, 241]), (2, [24, 240, 243]), (2, [29, 241, 243]), (2, [112, 240, 241, 243]), (1, [232, 240, 240]), (1, [233, 241, 241]), (1, [235, 243, 243])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 466. -/
def C2_F_H_P_F : Poly := [(2, [0, 240, 248]), (2, [22, 241]), (2, [24, 243]), (2, [112, 241, 243]), (2, [232, 240])]
theorem derivative_F_H_P_F :
    normalize (deriv 240 U2_F_H_P) = normalize C2_F_H_P_F := by decide +kernel
theorem original_sign_mismatch_F_H_P_F :
    normalize ([(2, [4])] ++ negate (deriv 240 U2_F_H_P)) ≠
      normalize ([(2, [4])] ++ C2_F_H_P_F) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 467. -/
def C2_F_H_P_H : Poly := [(2, [0, 241, 249]), (2, [22, 240]), (2, [29, 243]), (2, [112, 240, 243]), (2, [233, 241])]
theorem derivative_F_H_P_H :
    normalize (deriv 241 U2_F_H_P) = normalize C2_F_H_P_H := by decide +kernel
theorem original_sign_mismatch_F_H_P_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_F_H_P)) ≠
      normalize ([(2, [5])] ++ C2_F_H_P_H) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 468. -/
def C2_F_H_P_P : Poly := [(2, [0, 243, 251]), (2, [24, 240]), (2, [29, 241]), (2, [112, 240, 241]), (2, [235, 243])]
theorem derivative_F_H_P_P :
    normalize (deriv 243 U2_F_H_P) = normalize C2_F_H_P_P := by decide +kernel
theorem original_sign_mismatch_F_H_P_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_F_H_P)) ≠
      normalize ([(2, [7])] ++ C2_F_H_P_P) := by decide +kernel

/-- Twice the restricted C1 potential for F_H_A. -/
def U2_F_H_A : Poly := [(1, [0, 239, 239, 247]), (1, [0, 240, 240, 248]), (1, [0, 241, 241, 249]), (2, [21, 239, 240]), (2, [22, 240, 241]), (2, [28, 239, 241]), (2, [111, 239, 240, 241]), (1, [231, 239, 239]), (1, [232, 240, 240]), (1, [233, 241, 241])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 471. -/
def C2_F_H_A_F : Poly := [(2, [0, 240, 248]), (2, [21, 239]), (2, [22, 241]), (2, [111, 239, 241]), (2, [232, 240])]
theorem derivative_F_H_A_F :
    normalize (deriv 240 U2_F_H_A) = normalize C2_F_H_A_F := by decide +kernel
theorem original_sign_mismatch_F_H_A_F :
    normalize ([(2, [4])] ++ negate (deriv 240 U2_F_H_A)) ≠
      normalize ([(2, [4])] ++ C2_F_H_A_F) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 472. -/
def C2_F_H_A_H : Poly := [(2, [0, 241, 249]), (2, [22, 240]), (2, [28, 239]), (2, [111, 239, 240]), (2, [233, 241])]
theorem derivative_F_H_A_H :
    normalize (deriv 241 U2_F_H_A) = normalize C2_F_H_A_H := by decide +kernel
theorem original_sign_mismatch_F_H_A_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_F_H_A)) ≠
      normalize ([(2, [5])] ++ C2_F_H_A_H) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 473. -/
def C2_F_H_A_A : Poly := [(2, [0, 239, 247]), (2, [21, 240]), (2, [28, 241]), (2, [111, 240, 241]), (2, [231, 239])]
theorem derivative_F_H_A_A :
    normalize (deriv 239 U2_F_H_A) = normalize C2_F_H_A_A := by decide +kernel
theorem original_sign_mismatch_F_H_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_F_H_A)) ≠
      normalize ([(2, [3])] ++ C2_F_H_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for F_P_A. -/
def U2_F_P_A : Poly := [(1, [0, 239, 239, 247]), (1, [0, 240, 240, 248]), (1, [0, 243, 243, 251]), (2, [21, 239, 240]), (2, [24, 240, 243]), (2, [43, 239, 243]), (2, [117, 239, 240, 243]), (1, [231, 239, 239]), (1, [232, 240, 240]), (1, [235, 243, 243])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 476. -/
def C2_F_P_A_F : Poly := [(2, [0, 240, 248]), (2, [21, 239]), (2, [24, 243]), (2, [117, 239, 243]), (2, [232, 240])]
theorem derivative_F_P_A_F :
    normalize (deriv 240 U2_F_P_A) = normalize C2_F_P_A_F := by decide +kernel
theorem original_sign_mismatch_F_P_A_F :
    normalize ([(2, [4])] ++ negate (deriv 240 U2_F_P_A)) ≠
      normalize ([(2, [4])] ++ C2_F_P_A_F) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 477. -/
def C2_F_P_A_P : Poly := [(2, [0, 243, 251]), (2, [24, 240]), (2, [43, 239]), (2, [117, 239, 240]), (2, [235, 243])]
theorem derivative_F_P_A_P :
    normalize (deriv 243 U2_F_P_A) = normalize C2_F_P_A_P := by decide +kernel
theorem original_sign_mismatch_F_P_A_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_F_P_A)) ≠
      normalize ([(2, [7])] ++ C2_F_P_A_P) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 478. -/
def C2_F_P_A_A : Poly := [(2, [0, 239, 247]), (2, [21, 240]), (2, [43, 243]), (2, [117, 240, 243]), (2, [231, 239])]
theorem derivative_F_P_A_A :
    normalize (deriv 239 U2_F_P_A) = normalize C2_F_P_A_A := by decide +kernel
theorem original_sign_mismatch_F_P_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_F_P_A)) ≠
      normalize ([(2, [3])] ++ C2_F_P_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for M_W_T. -/
def U2_M_W_T : Poly := [(1, [0, 245, 245, 253]), (1, [0, 246, 246, 254]), (2, [1, 41, 245]), (2, [1, 42, 246]), (2, [1, 174, 245, 246]), (2, [65, 245, 246]), (1, [237, 245, 245]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 484. -/
def C2_M_W_T_W : Poly := [(2, [0, 246, 254]), (2, [1, 42]), (2, [1, 174, 245]), (2, [65, 245]), (2, [238, 246])]
theorem derivative_M_W_T_W :
    normalize (deriv 246 U2_M_W_T) = normalize C2_M_W_T_W := by decide +kernel
theorem original_sign_mismatch_M_W_T_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_M_W_T)) ≠
      normalize ([(2, [10])] ++ C2_M_W_T_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 485. -/
def C2_M_W_T_T : Poly := [(2, [0, 245, 253]), (2, [1, 41]), (2, [1, 174, 246]), (2, [65, 246]), (2, [237, 245])]
theorem derivative_M_W_T_T :
    normalize (deriv 245 U2_M_W_T) = normalize C2_M_W_T_T := by decide +kernel
theorem original_sign_mismatch_M_W_T_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_M_W_T)) ≠
      normalize ([(2, [9])] ++ C2_M_W_T_T) := by decide +kernel

/-- Twice the restricted C1 potential for M_W_I. -/
def U2_M_W_I : Poly := [(1, [0, 242, 242, 250]), (1, [0, 246, 246, 254]), (2, [1, 37, 242]), (2, [1, 42, 246]), (2, [1, 171, 242, 246]), (2, [62, 242, 246]), (1, [234, 242, 242]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 491. -/
def C2_M_W_I_W : Poly := [(2, [0, 246, 254]), (2, [1, 42]), (2, [1, 171, 242]), (2, [62, 242]), (2, [238, 246])]
theorem derivative_M_W_I_W :
    normalize (deriv 246 U2_M_W_I) = normalize C2_M_W_I_W := by decide +kernel
theorem original_sign_mismatch_M_W_I_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_M_W_I)) ≠
      normalize ([(2, [10])] ++ C2_M_W_I_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 492. -/
def C2_M_W_I_I : Poly := [(2, [0, 242, 250]), (2, [1, 37]), (2, [1, 171, 246]), (2, [62, 246]), (2, [234, 242])]
theorem derivative_M_W_I_I :
    normalize (deriv 242 U2_M_W_I) = normalize C2_M_W_I_I := by decide +kernel
theorem original_sign_mismatch_M_W_I_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_M_W_I)) ≠
      normalize ([(2, [6])] ++ C2_M_W_I_I) := by decide +kernel

/-- Twice the restricted C1 potential for M_W_R. -/
def U2_M_W_R : Poly := [(1, [0, 244, 244, 252]), (1, [0, 246, 246, 254]), (2, [1, 39, 244]), (2, [1, 42, 246]), (2, [1, 173, 244, 246]), (2, [64, 244, 246]), (1, [236, 244, 244]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 498. -/
def C2_M_W_R_W : Poly := [(2, [0, 246, 254]), (2, [1, 42]), (2, [1, 173, 244]), (2, [64, 244]), (2, [238, 246])]
theorem derivative_M_W_R_W :
    normalize (deriv 246 U2_M_W_R) = normalize C2_M_W_R_W := by decide +kernel
theorem original_sign_mismatch_M_W_R_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_M_W_R)) ≠
      normalize ([(2, [10])] ++ C2_M_W_R_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 499. -/
def C2_M_W_R_R : Poly := [(2, [0, 244, 252]), (2, [1, 39]), (2, [1, 173, 246]), (2, [64, 246]), (2, [236, 244])]
theorem derivative_M_W_R_R :
    normalize (deriv 244 U2_M_W_R) = normalize C2_M_W_R_R := by decide +kernel
theorem original_sign_mismatch_M_W_R_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_M_W_R)) ≠
      normalize ([(2, [8])] ++ C2_M_W_R_R) := by decide +kernel

end EFMWLagrangian
