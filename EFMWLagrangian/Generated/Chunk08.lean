import EFMWLagrangian.Core

set_option maxRecDepth 20000
set_option maxHeartbeats 0
namespace EFMWLagrangian

/-- Twice the restricted C1 potential for M_I_H. -/
def U2_M_I_H : Poly := [(1, [0, 241, 241, 249]), (1, [0, 242, 242, 250]), (2, [1, 36, 241]), (2, [1, 37, 242]), (2, [1, 149, 241, 242]), (2, [31, 241, 242]), (1, [233, 241, 241]), (1, [234, 242, 242])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 595. -/
def C2_M_I_H_I : Poly := [(2, [0, 242, 250]), (2, [1, 37]), (2, [1, 149, 241]), (2, [31, 241]), (2, [234, 242])]
theorem derivative_M_I_H_I :
    normalize (deriv 242 U2_M_I_H) = normalize C2_M_I_H_I := by decide +kernel
theorem original_sign_mismatch_M_I_H_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_M_I_H)) ≠
      normalize ([(2, [6])] ++ C2_M_I_H_I) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 596. -/
def C2_M_I_H_H : Poly := [(2, [0, 241, 249]), (2, [1, 36]), (2, [1, 149, 242]), (2, [31, 242]), (2, [233, 241])]
theorem derivative_M_I_H_H :
    normalize (deriv 241 U2_M_I_H) = normalize C2_M_I_H_H := by decide +kernel
theorem original_sign_mismatch_M_I_H_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_M_I_H)) ≠
      normalize ([(2, [5])] ++ C2_M_I_H_H) := by decide +kernel

/-- Twice the restricted C1 potential for M_I_P. -/
def U2_M_I_P : Poly := [(1, [0, 242, 242, 250]), (1, [0, 243, 243, 251]), (2, [1, 37, 242]), (2, [1, 38, 243]), (2, [1, 150, 242, 243]), (2, [32, 242, 243]), (1, [234, 242, 242]), (1, [235, 243, 243])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 602. -/
def C2_M_I_P_I : Poly := [(2, [0, 242, 250]), (2, [1, 37]), (2, [1, 150, 243]), (2, [32, 243]), (2, [234, 242])]
theorem derivative_M_I_P_I :
    normalize (deriv 242 U2_M_I_P) = normalize C2_M_I_P_I := by decide +kernel
theorem original_sign_mismatch_M_I_P_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_M_I_P)) ≠
      normalize ([(2, [6])] ++ C2_M_I_P_I) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 603. -/
def C2_M_I_P_P : Poly := [(2, [0, 243, 251]), (2, [1, 38]), (2, [1, 150, 242]), (2, [32, 242]), (2, [235, 243])]
theorem derivative_M_I_P_P :
    normalize (deriv 243 U2_M_I_P) = normalize C2_M_I_P_P := by decide +kernel
theorem original_sign_mismatch_M_I_P_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_M_I_P)) ≠
      normalize ([(2, [7])] ++ C2_M_I_P_P) := by decide +kernel

/-- Twice the restricted C1 potential for M_I_A. -/
def U2_M_I_A : Poly := [(1, [0, 239, 239, 247]), (1, [0, 242, 242, 250]), (2, [1, 34, 239]), (2, [1, 37, 242]), (2, [1, 148, 239, 242]), (2, [30, 239, 242]), (1, [231, 239, 239]), (1, [234, 242, 242])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 609. -/
def C2_M_I_A_I : Poly := [(2, [0, 242, 250]), (2, [1, 37]), (2, [1, 148, 239]), (2, [30, 239]), (2, [234, 242])]
theorem derivative_M_I_A_I :
    normalize (deriv 242 U2_M_I_A) = normalize C2_M_I_A_I := by decide +kernel
theorem original_sign_mismatch_M_I_A_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_M_I_A)) ≠
      normalize ([(2, [6])] ++ C2_M_I_A_I) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 610. -/
def C2_M_I_A_A : Poly := [(2, [0, 239, 247]), (2, [1, 34]), (2, [1, 148, 242]), (2, [30, 242]), (2, [231, 239])]
theorem derivative_M_I_A_A :
    normalize (deriv 239 U2_M_I_A) = normalize C2_M_I_A_A := by decide +kernel
theorem original_sign_mismatch_M_I_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_M_I_A)) ≠
      normalize ([(2, [3])] ++ C2_M_I_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for M_R_S. -/
def U2_M_R_S : Poly := [(1, [0, 244, 244, 252]), (2, [1, 2, 40]), (2, [1, 2, 161, 244]), (2, [1, 39, 244]), (2, [2, 52, 244]), (1, [236, 244, 244])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 619. -/
def C2_M_R_S_R : Poly := [(2, [0, 244, 252]), (2, [1, 2, 161]), (2, [1, 39]), (2, [2, 52]), (2, [236, 244])]
theorem derivative_M_R_S_R :
    normalize (deriv 244 U2_M_R_S) = normalize C2_M_R_S_R := by decide +kernel
theorem original_sign_mismatch_M_R_S_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_M_R_S)) ≠
      normalize ([(2, [8])] ++ C2_M_R_S_R) := by decide +kernel

/-- Twice the restricted C1 potential for M_R_H. -/
def U2_M_R_H : Poly := [(1, [0, 241, 241, 249]), (1, [0, 244, 244, 252]), (2, [1, 36, 241]), (2, [1, 39, 244]), (2, [1, 154, 241, 244]), (2, [45, 241, 244]), (1, [233, 241, 241]), (1, [236, 244, 244])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 625. -/
def C2_M_R_H_R : Poly := [(2, [0, 244, 252]), (2, [1, 39]), (2, [1, 154, 241]), (2, [45, 241]), (2, [236, 244])]
theorem derivative_M_R_H_R :
    normalize (deriv 244 U2_M_R_H) = normalize C2_M_R_H_R := by decide +kernel
theorem original_sign_mismatch_M_R_H_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_M_R_H)) ≠
      normalize ([(2, [8])] ++ C2_M_R_H_R) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 626. -/
def C2_M_R_H_H : Poly := [(2, [0, 241, 249]), (2, [1, 36]), (2, [1, 154, 244]), (2, [45, 244]), (2, [233, 241])]
theorem derivative_M_R_H_H :
    normalize (deriv 241 U2_M_R_H) = normalize C2_M_R_H_H := by decide +kernel
theorem original_sign_mismatch_M_R_H_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_M_R_H)) ≠
      normalize ([(2, [5])] ++ C2_M_R_H_H) := by decide +kernel

/-- Twice the restricted C1 potential for M_R_P. -/
def U2_M_R_P : Poly := [(1, [0, 243, 243, 251]), (1, [0, 244, 244, 252]), (2, [1, 38, 243]), (2, [1, 39, 244]), (2, [1, 155, 243, 244]), (2, [46, 243, 244]), (1, [235, 243, 243]), (1, [236, 244, 244])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 632. -/
def C2_M_R_P_R : Poly := [(2, [0, 244, 252]), (2, [1, 39]), (2, [1, 155, 243]), (2, [46, 243]), (2, [236, 244])]
theorem derivative_M_R_P_R :
    normalize (deriv 244 U2_M_R_P) = normalize C2_M_R_P_R := by decide +kernel
theorem original_sign_mismatch_M_R_P_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_M_R_P)) ≠
      normalize ([(2, [8])] ++ C2_M_R_P_R) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 633. -/
def C2_M_R_P_P : Poly := [(2, [0, 243, 251]), (2, [1, 38]), (2, [1, 155, 244]), (2, [46, 244]), (2, [235, 243])]
theorem derivative_M_R_P_P :
    normalize (deriv 243 U2_M_R_P) = normalize C2_M_R_P_P := by decide +kernel
theorem original_sign_mismatch_M_R_P_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_M_R_P)) ≠
      normalize ([(2, [7])] ++ C2_M_R_P_P) := by decide +kernel

/-- Twice the restricted C1 potential for M_R_A. -/
def U2_M_R_A : Poly := [(1, [0, 239, 239, 247]), (1, [0, 244, 244, 252]), (2, [1, 34, 239]), (2, [1, 39, 244]), (2, [1, 153, 239, 244]), (2, [44, 239, 244]), (1, [231, 239, 239]), (1, [236, 244, 244])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 639. -/
def C2_M_R_A_R : Poly := [(2, [0, 244, 252]), (2, [1, 39]), (2, [1, 153, 239]), (2, [44, 239]), (2, [236, 244])]
theorem derivative_M_R_A_R :
    normalize (deriv 244 U2_M_R_A) = normalize C2_M_R_A_R := by decide +kernel
theorem original_sign_mismatch_M_R_A_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_M_R_A)) ≠
      normalize ([(2, [8])] ++ C2_M_R_A_R) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 640. -/
def C2_M_R_A_A : Poly := [(2, [0, 239, 247]), (2, [1, 34]), (2, [1, 153, 244]), (2, [44, 244]), (2, [231, 239])]
theorem derivative_M_R_A_A :
    normalize (deriv 239 U2_M_R_A) = normalize C2_M_R_A_A := by decide +kernel
theorem original_sign_mismatch_M_R_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_M_R_A)) ≠
      normalize ([(2, [3])] ++ C2_M_R_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for M_S_H. -/
def U2_M_S_H : Poly := [(1, [0, 241, 241, 249]), (2, [1, 2, 40]), (2, [1, 2, 158, 241]), (2, [1, 36, 241]), (2, [2, 49, 241]), (1, [233, 241, 241])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 649. -/
def C2_M_S_H_H : Poly := [(2, [0, 241, 249]), (2, [1, 2, 158]), (2, [1, 36]), (2, [2, 49]), (2, [233, 241])]
theorem derivative_M_S_H_H :
    normalize (deriv 241 U2_M_S_H) = normalize C2_M_S_H_H := by decide +kernel
theorem original_sign_mismatch_M_S_H_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_M_S_H)) ≠
      normalize ([(2, [5])] ++ C2_M_S_H_H) := by decide +kernel

/-- Twice the restricted C1 potential for M_S_P. -/
def U2_M_S_P : Poly := [(1, [0, 243, 243, 251]), (2, [1, 2, 40]), (2, [1, 2, 160, 243]), (2, [1, 38, 243]), (2, [2, 51, 243]), (1, [235, 243, 243])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 658. -/
def C2_M_S_P_P : Poly := [(2, [0, 243, 251]), (2, [1, 2, 160]), (2, [1, 38]), (2, [2, 51]), (2, [235, 243])]
theorem derivative_M_S_P_P :
    normalize (deriv 243 U2_M_S_P) = normalize C2_M_S_P_P := by decide +kernel
theorem original_sign_mismatch_M_S_P_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_M_S_P)) ≠
      normalize ([(2, [7])] ++ C2_M_S_P_P) := by decide +kernel

/-- Twice the restricted C1 potential for M_S_A. -/
def U2_M_S_A : Poly := [(1, [0, 239, 239, 247]), (2, [1, 2, 40]), (2, [1, 2, 156, 239]), (2, [1, 34, 239]), (2, [2, 47, 239]), (1, [231, 239, 239])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 667. -/
def C2_M_S_A_A : Poly := [(2, [0, 239, 247]), (2, [1, 2, 156]), (2, [1, 34]), (2, [2, 47]), (2, [231, 239])]
theorem derivative_M_S_A_A :
    normalize (deriv 239 U2_M_S_A) = normalize C2_M_S_A_A := by decide +kernel
theorem original_sign_mismatch_M_S_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_M_S_A)) ≠
      normalize ([(2, [3])] ++ C2_M_S_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for M_H_P. -/
def U2_M_H_P : Poly := [(1, [0, 241, 241, 249]), (1, [0, 243, 243, 251]), (2, [1, 36, 241]), (2, [1, 38, 243]), (2, [1, 147, 241, 243]), (2, [29, 241, 243]), (1, [233, 241, 241]), (1, [235, 243, 243])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 673. -/
def C2_M_H_P_H : Poly := [(2, [0, 241, 249]), (2, [1, 36]), (2, [1, 147, 243]), (2, [29, 243]), (2, [233, 241])]
theorem derivative_M_H_P_H :
    normalize (deriv 241 U2_M_H_P) = normalize C2_M_H_P_H := by decide +kernel
theorem original_sign_mismatch_M_H_P_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_M_H_P)) ≠
      normalize ([(2, [5])] ++ C2_M_H_P_H) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 674. -/
def C2_M_H_P_P : Poly := [(2, [0, 243, 251]), (2, [1, 38]), (2, [1, 147, 241]), (2, [29, 241]), (2, [235, 243])]
theorem derivative_M_H_P_P :
    normalize (deriv 243 U2_M_H_P) = normalize C2_M_H_P_P := by decide +kernel
theorem original_sign_mismatch_M_H_P_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_M_H_P)) ≠
      normalize ([(2, [7])] ++ C2_M_H_P_P) := by decide +kernel

/-- Twice the restricted C1 potential for M_H_A. -/
def U2_M_H_A : Poly := [(1, [0, 239, 239, 247]), (1, [0, 241, 241, 249]), (2, [1, 34, 239]), (2, [1, 36, 241]), (2, [1, 146, 239, 241]), (2, [28, 239, 241]), (1, [231, 239, 239]), (1, [233, 241, 241])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 680. -/
def C2_M_H_A_H : Poly := [(2, [0, 241, 249]), (2, [1, 36]), (2, [1, 146, 239]), (2, [28, 239]), (2, [233, 241])]
theorem derivative_M_H_A_H :
    normalize (deriv 241 U2_M_H_A) = normalize C2_M_H_A_H := by decide +kernel
theorem original_sign_mismatch_M_H_A_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_M_H_A)) ≠
      normalize ([(2, [5])] ++ C2_M_H_A_H) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 681. -/
def C2_M_H_A_A : Poly := [(2, [0, 239, 247]), (2, [1, 34]), (2, [1, 146, 241]), (2, [28, 241]), (2, [231, 239])]
theorem derivative_M_H_A_A :
    normalize (deriv 239 U2_M_H_A) = normalize C2_M_H_A_A := by decide +kernel
theorem original_sign_mismatch_M_H_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_M_H_A)) ≠
      normalize ([(2, [3])] ++ C2_M_H_A_A) := by decide +kernel

end EFMWLagrangian
