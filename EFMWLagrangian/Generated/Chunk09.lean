import EFMWLagrangian.Core

set_option maxRecDepth 20000
set_option maxHeartbeats 0
namespace EFMWLagrangian

/-- Twice the restricted C1 potential for M_P_A. -/
def U2_M_P_A : Poly := [(1, [0, 239, 239, 247]), (1, [0, 243, 243, 251]), (2, [1, 34, 239]), (2, [1, 38, 243]), (2, [1, 152, 239, 243]), (2, [43, 239, 243]), (1, [231, 239, 239]), (1, [235, 243, 243])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 687. -/
def C2_M_P_A_P : Poly := [(2, [0, 243, 251]), (2, [1, 38]), (2, [1, 152, 239]), (2, [43, 239]), (2, [235, 243])]
theorem derivative_M_P_A_P :
    normalize (deriv 243 U2_M_P_A) = normalize C2_M_P_A_P := by decide +kernel
theorem original_sign_mismatch_M_P_A_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_M_P_A)) ≠
      normalize ([(2, [7])] ++ C2_M_P_A_P) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 688. -/
def C2_M_P_A_A : Poly := [(2, [0, 239, 247]), (2, [1, 34]), (2, [1, 152, 243]), (2, [43, 243]), (2, [231, 239])]
theorem derivative_M_P_A_A :
    normalize (deriv 239 U2_M_P_A) = normalize C2_M_P_A_A := by decide +kernel
theorem original_sign_mismatch_M_P_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_M_P_A)) ≠
      normalize ([(2, [3])] ++ C2_M_P_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for W_T_I. -/
def U2_W_T_I : Poly := [(1, [0, 242, 242, 250]), (1, [0, 245, 245, 253]), (1, [0, 246, 246, 254]), (2, [57, 242, 245]), (2, [62, 242, 246]), (2, [65, 245, 246]), (2, [228, 242, 245, 246]), (1, [234, 242, 242]), (1, [237, 245, 245]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 691. -/
def C2_W_T_I_W : Poly := [(2, [0, 246, 254]), (2, [62, 242]), (2, [65, 245]), (2, [228, 242, 245]), (2, [238, 246])]
theorem derivative_W_T_I_W :
    normalize (deriv 246 U2_W_T_I) = normalize C2_W_T_I_W := by decide +kernel
theorem original_sign_mismatch_W_T_I_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_W_T_I)) ≠
      normalize ([(2, [10])] ++ C2_W_T_I_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 692. -/
def C2_W_T_I_T : Poly := [(2, [0, 245, 253]), (2, [57, 242]), (2, [65, 246]), (2, [228, 242, 246]), (2, [237, 245])]
theorem derivative_W_T_I_T :
    normalize (deriv 245 U2_W_T_I) = normalize C2_W_T_I_T := by decide +kernel
theorem original_sign_mismatch_W_T_I_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_W_T_I)) ≠
      normalize ([(2, [9])] ++ C2_W_T_I_T) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 693. -/
def C2_W_T_I_I : Poly := [(2, [0, 242, 250]), (2, [57, 245]), (2, [62, 246]), (2, [228, 245, 246]), (2, [234, 242])]
theorem derivative_W_T_I_I :
    normalize (deriv 242 U2_W_T_I) = normalize C2_W_T_I_I := by decide +kernel
theorem original_sign_mismatch_W_T_I_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_W_T_I)) ≠
      normalize ([(2, [6])] ++ C2_W_T_I_I) := by decide +kernel

/-- Twice the restricted C1 potential for W_T_R. -/
def U2_W_T_R : Poly := [(1, [0, 244, 244, 252]), (1, [0, 245, 245, 253]), (1, [0, 246, 246, 254]), (2, [59, 244, 245]), (2, [64, 244, 246]), (2, [65, 245, 246]), (2, [230, 244, 245, 246]), (1, [236, 244, 244]), (1, [237, 245, 245]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 696. -/
def C2_W_T_R_W : Poly := [(2, [0, 246, 254]), (2, [64, 244]), (2, [65, 245]), (2, [230, 244, 245]), (2, [238, 246])]
theorem derivative_W_T_R_W :
    normalize (deriv 246 U2_W_T_R) = normalize C2_W_T_R_W := by decide +kernel
theorem original_sign_mismatch_W_T_R_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_W_T_R)) ≠
      normalize ([(2, [10])] ++ C2_W_T_R_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 697. -/
def C2_W_T_R_T : Poly := [(2, [0, 245, 253]), (2, [59, 244]), (2, [65, 246]), (2, [230, 244, 246]), (2, [237, 245])]
theorem derivative_W_T_R_T :
    normalize (deriv 245 U2_W_T_R) = normalize C2_W_T_R_T := by decide +kernel
theorem original_sign_mismatch_W_T_R_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_W_T_R)) ≠
      normalize ([(2, [9])] ++ C2_W_T_R_T) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 698. -/
def C2_W_T_R_R : Poly := [(2, [0, 244, 252]), (2, [59, 245]), (2, [64, 246]), (2, [230, 245, 246]), (2, [236, 244])]
theorem derivative_W_T_R_R :
    normalize (deriv 244 U2_W_T_R) = normalize C2_W_T_R_R := by decide +kernel
theorem original_sign_mismatch_W_T_R_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_W_T_R)) ≠
      normalize ([(2, [8])] ++ C2_W_T_R_R) := by decide +kernel

/-- Twice the restricted C1 potential for W_T_S. -/
def U2_W_T_S : Poly := [(1, [0, 245, 245, 253]), (1, [0, 246, 246, 254]), (2, [2, 53, 245]), (2, [2, 54, 246]), (2, [2, 205, 245, 246]), (2, [65, 245, 246]), (1, [237, 245, 245]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 704. -/
def C2_W_T_S_W : Poly := [(2, [0, 246, 254]), (2, [2, 54]), (2, [2, 205, 245]), (2, [65, 245]), (2, [238, 246])]
theorem derivative_W_T_S_W :
    normalize (deriv 246 U2_W_T_S) = normalize C2_W_T_S_W := by decide +kernel
theorem original_sign_mismatch_W_T_S_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_W_T_S)) ≠
      normalize ([(2, [10])] ++ C2_W_T_S_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 705. -/
def C2_W_T_S_T : Poly := [(2, [0, 245, 253]), (2, [2, 53]), (2, [2, 205, 246]), (2, [65, 246]), (2, [237, 245])]
theorem derivative_W_T_S_T :
    normalize (deriv 245 U2_W_T_S) = normalize C2_W_T_S_T := by decide +kernel
theorem original_sign_mismatch_W_T_S_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_W_T_S)) ≠
      normalize ([(2, [9])] ++ C2_W_T_S_T) := by decide +kernel

/-- Twice the restricted C1 potential for W_T_H. -/
def U2_W_T_H : Poly := [(1, [0, 241, 241, 249]), (1, [0, 245, 245, 253]), (1, [0, 246, 246, 254]), (2, [56, 241, 245]), (2, [61, 241, 246]), (2, [65, 245, 246]), (2, [227, 241, 245, 246]), (1, [233, 241, 241]), (1, [237, 245, 245]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 708. -/
def C2_W_T_H_W : Poly := [(2, [0, 246, 254]), (2, [61, 241]), (2, [65, 245]), (2, [227, 241, 245]), (2, [238, 246])]
theorem derivative_W_T_H_W :
    normalize (deriv 246 U2_W_T_H) = normalize C2_W_T_H_W := by decide +kernel
theorem original_sign_mismatch_W_T_H_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_W_T_H)) ≠
      normalize ([(2, [10])] ++ C2_W_T_H_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 709. -/
def C2_W_T_H_T : Poly := [(2, [0, 245, 253]), (2, [56, 241]), (2, [65, 246]), (2, [227, 241, 246]), (2, [237, 245])]
theorem derivative_W_T_H_T :
    normalize (deriv 245 U2_W_T_H) = normalize C2_W_T_H_T := by decide +kernel
theorem original_sign_mismatch_W_T_H_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_W_T_H)) ≠
      normalize ([(2, [9])] ++ C2_W_T_H_T) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 710. -/
def C2_W_T_H_H : Poly := [(2, [0, 241, 249]), (2, [56, 245]), (2, [61, 246]), (2, [227, 245, 246]), (2, [233, 241])]
theorem derivative_W_T_H_H :
    normalize (deriv 241 U2_W_T_H) = normalize C2_W_T_H_H := by decide +kernel
theorem original_sign_mismatch_W_T_H_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_W_T_H)) ≠
      normalize ([(2, [5])] ++ C2_W_T_H_H) := by decide +kernel

/-- Twice the restricted C1 potential for W_T_P. -/
def U2_W_T_P : Poly := [(1, [0, 243, 243, 251]), (1, [0, 245, 245, 253]), (1, [0, 246, 246, 254]), (2, [58, 243, 245]), (2, [63, 243, 246]), (2, [65, 245, 246]), (2, [229, 243, 245, 246]), (1, [235, 243, 243]), (1, [237, 245, 245]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 713. -/
def C2_W_T_P_W : Poly := [(2, [0, 246, 254]), (2, [63, 243]), (2, [65, 245]), (2, [229, 243, 245]), (2, [238, 246])]
theorem derivative_W_T_P_W :
    normalize (deriv 246 U2_W_T_P) = normalize C2_W_T_P_W := by decide +kernel
theorem original_sign_mismatch_W_T_P_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_W_T_P)) ≠
      normalize ([(2, [10])] ++ C2_W_T_P_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 714. -/
def C2_W_T_P_T : Poly := [(2, [0, 245, 253]), (2, [58, 243]), (2, [65, 246]), (2, [229, 243, 246]), (2, [237, 245])]
theorem derivative_W_T_P_T :
    normalize (deriv 245 U2_W_T_P) = normalize C2_W_T_P_T := by decide +kernel
theorem original_sign_mismatch_W_T_P_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_W_T_P)) ≠
      normalize ([(2, [9])] ++ C2_W_T_P_T) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 715. -/
def C2_W_T_P_P : Poly := [(2, [0, 243, 251]), (2, [58, 245]), (2, [63, 246]), (2, [229, 245, 246]), (2, [235, 243])]
theorem derivative_W_T_P_P :
    normalize (deriv 243 U2_W_T_P) = normalize C2_W_T_P_P := by decide +kernel
theorem original_sign_mismatch_W_T_P_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_W_T_P)) ≠
      normalize ([(2, [7])] ++ C2_W_T_P_P) := by decide +kernel

/-- Twice the restricted C1 potential for W_T_A. -/
def U2_W_T_A : Poly := [(1, [0, 239, 239, 247]), (1, [0, 245, 245, 253]), (1, [0, 246, 246, 254]), (2, [55, 239, 245]), (2, [60, 239, 246]), (2, [65, 245, 246]), (2, [226, 239, 245, 246]), (1, [231, 239, 239]), (1, [237, 245, 245]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 718. -/
def C2_W_T_A_W : Poly := [(2, [0, 246, 254]), (2, [60, 239]), (2, [65, 245]), (2, [226, 239, 245]), (2, [238, 246])]
theorem derivative_W_T_A_W :
    normalize (deriv 246 U2_W_T_A) = normalize C2_W_T_A_W := by decide +kernel
theorem original_sign_mismatch_W_T_A_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_W_T_A)) ≠
      normalize ([(2, [10])] ++ C2_W_T_A_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 719. -/
def C2_W_T_A_T : Poly := [(2, [0, 245, 253]), (2, [55, 239]), (2, [65, 246]), (2, [226, 239, 246]), (2, [237, 245])]
theorem derivative_W_T_A_T :
    normalize (deriv 245 U2_W_T_A) = normalize C2_W_T_A_T := by decide +kernel
theorem original_sign_mismatch_W_T_A_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_W_T_A)) ≠
      normalize ([(2, [9])] ++ C2_W_T_A_T) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 720. -/
def C2_W_T_A_A : Poly := [(2, [0, 239, 247]), (2, [55, 245]), (2, [60, 246]), (2, [226, 245, 246]), (2, [231, 239])]
theorem derivative_W_T_A_A :
    normalize (deriv 239 U2_W_T_A) = normalize C2_W_T_A_A := by decide +kernel
theorem original_sign_mismatch_W_T_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_W_T_A)) ≠
      normalize ([(2, [3])] ++ C2_W_T_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for W_I_R. -/
def U2_W_I_R : Poly := [(1, [0, 242, 242, 250]), (1, [0, 244, 244, 252]), (1, [0, 246, 246, 254]), (2, [33, 242, 244]), (2, [62, 242, 246]), (2, [64, 244, 246]), (2, [221, 242, 244, 246]), (1, [234, 242, 242]), (1, [236, 244, 244]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 723. -/
def C2_W_I_R_W : Poly := [(2, [0, 246, 254]), (2, [62, 242]), (2, [64, 244]), (2, [221, 242, 244]), (2, [238, 246])]
theorem derivative_W_I_R_W :
    normalize (deriv 246 U2_W_I_R) = normalize C2_W_I_R_W := by decide +kernel
theorem original_sign_mismatch_W_I_R_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_W_I_R)) ≠
      normalize ([(2, [10])] ++ C2_W_I_R_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 724. -/
def C2_W_I_R_I : Poly := [(2, [0, 242, 250]), (2, [33, 244]), (2, [62, 246]), (2, [221, 244, 246]), (2, [234, 242])]
theorem derivative_W_I_R_I :
    normalize (deriv 242 U2_W_I_R) = normalize C2_W_I_R_I := by decide +kernel
theorem original_sign_mismatch_W_I_R_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_W_I_R)) ≠
      normalize ([(2, [6])] ++ C2_W_I_R_I) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 725. -/
def C2_W_I_R_R : Poly := [(2, [0, 244, 252]), (2, [33, 242]), (2, [64, 246]), (2, [221, 242, 246]), (2, [236, 244])]
theorem derivative_W_I_R_R :
    normalize (deriv 244 U2_W_I_R) = normalize C2_W_I_R_R := by decide +kernel
theorem original_sign_mismatch_W_I_R_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_W_I_R)) ≠
      normalize ([(2, [8])] ++ C2_W_I_R_R) := by decide +kernel

/-- Twice the restricted C1 potential for W_I_S. -/
def U2_W_I_S : Poly := [(1, [0, 242, 242, 250]), (1, [0, 246, 246, 254]), (2, [2, 50, 242]), (2, [2, 54, 246]), (2, [2, 202, 242, 246]), (2, [62, 242, 246]), (1, [234, 242, 242]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 731. -/
def C2_W_I_S_W : Poly := [(2, [0, 246, 254]), (2, [2, 54]), (2, [2, 202, 242]), (2, [62, 242]), (2, [238, 246])]
theorem derivative_W_I_S_W :
    normalize (deriv 246 U2_W_I_S) = normalize C2_W_I_S_W := by decide +kernel
theorem original_sign_mismatch_W_I_S_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_W_I_S)) ≠
      normalize ([(2, [10])] ++ C2_W_I_S_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 732. -/
def C2_W_I_S_I : Poly := [(2, [0, 242, 250]), (2, [2, 50]), (2, [2, 202, 246]), (2, [62, 246]), (2, [234, 242])]
theorem derivative_W_I_S_I :
    normalize (deriv 242 U2_W_I_S) = normalize C2_W_I_S_I := by decide +kernel
theorem original_sign_mismatch_W_I_S_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_W_I_S)) ≠
      normalize ([(2, [6])] ++ C2_W_I_S_I) := by decide +kernel

/-- Twice the restricted C1 potential for W_I_H. -/
def U2_W_I_H : Poly := [(1, [0, 241, 241, 249]), (1, [0, 242, 242, 250]), (1, [0, 246, 246, 254]), (2, [31, 241, 242]), (2, [61, 241, 246]), (2, [62, 242, 246]), (2, [219, 241, 242, 246]), (1, [233, 241, 241]), (1, [234, 242, 242]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 735. -/
def C2_W_I_H_W : Poly := [(2, [0, 246, 254]), (2, [61, 241]), (2, [62, 242]), (2, [219, 241, 242]), (2, [238, 246])]
theorem derivative_W_I_H_W :
    normalize (deriv 246 U2_W_I_H) = normalize C2_W_I_H_W := by decide +kernel
theorem original_sign_mismatch_W_I_H_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_W_I_H)) ≠
      normalize ([(2, [10])] ++ C2_W_I_H_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 736. -/
def C2_W_I_H_I : Poly := [(2, [0, 242, 250]), (2, [31, 241]), (2, [62, 246]), (2, [219, 241, 246]), (2, [234, 242])]
theorem derivative_W_I_H_I :
    normalize (deriv 242 U2_W_I_H) = normalize C2_W_I_H_I := by decide +kernel
theorem original_sign_mismatch_W_I_H_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_W_I_H)) ≠
      normalize ([(2, [6])] ++ C2_W_I_H_I) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 737. -/
def C2_W_I_H_H : Poly := [(2, [0, 241, 249]), (2, [31, 242]), (2, [61, 246]), (2, [219, 242, 246]), (2, [233, 241])]
theorem derivative_W_I_H_H :
    normalize (deriv 241 U2_W_I_H) = normalize C2_W_I_H_H := by decide +kernel
theorem original_sign_mismatch_W_I_H_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_W_I_H)) ≠
      normalize ([(2, [5])] ++ C2_W_I_H_H) := by decide +kernel

/-- Twice the restricted C1 potential for W_I_P. -/
def U2_W_I_P : Poly := [(1, [0, 242, 242, 250]), (1, [0, 243, 243, 251]), (1, [0, 246, 246, 254]), (2, [32, 242, 243]), (2, [62, 242, 246]), (2, [63, 243, 246]), (2, [220, 242, 243, 246]), (1, [234, 242, 242]), (1, [235, 243, 243]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 740. -/
def C2_W_I_P_W : Poly := [(2, [0, 246, 254]), (2, [62, 242]), (2, [63, 243]), (2, [220, 242, 243]), (2, [238, 246])]
theorem derivative_W_I_P_W :
    normalize (deriv 246 U2_W_I_P) = normalize C2_W_I_P_W := by decide +kernel
theorem original_sign_mismatch_W_I_P_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_W_I_P)) ≠
      normalize ([(2, [10])] ++ C2_W_I_P_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 741. -/
def C2_W_I_P_I : Poly := [(2, [0, 242, 250]), (2, [32, 243]), (2, [62, 246]), (2, [220, 243, 246]), (2, [234, 242])]
theorem derivative_W_I_P_I :
    normalize (deriv 242 U2_W_I_P) = normalize C2_W_I_P_I := by decide +kernel
theorem original_sign_mismatch_W_I_P_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_W_I_P)) ≠
      normalize ([(2, [6])] ++ C2_W_I_P_I) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 742. -/
def C2_W_I_P_P : Poly := [(2, [0, 243, 251]), (2, [32, 242]), (2, [63, 246]), (2, [220, 242, 246]), (2, [235, 243])]
theorem derivative_W_I_P_P :
    normalize (deriv 243 U2_W_I_P) = normalize C2_W_I_P_P := by decide +kernel
theorem original_sign_mismatch_W_I_P_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_W_I_P)) ≠
      normalize ([(2, [7])] ++ C2_W_I_P_P) := by decide +kernel

/-- Twice the restricted C1 potential for W_I_A. -/
def U2_W_I_A : Poly := [(1, [0, 239, 239, 247]), (1, [0, 242, 242, 250]), (1, [0, 246, 246, 254]), (2, [30, 239, 242]), (2, [60, 239, 246]), (2, [62, 242, 246]), (2, [218, 239, 242, 246]), (1, [231, 239, 239]), (1, [234, 242, 242]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 745. -/
def C2_W_I_A_W : Poly := [(2, [0, 246, 254]), (2, [60, 239]), (2, [62, 242]), (2, [218, 239, 242]), (2, [238, 246])]
theorem derivative_W_I_A_W :
    normalize (deriv 246 U2_W_I_A) = normalize C2_W_I_A_W := by decide +kernel
theorem original_sign_mismatch_W_I_A_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_W_I_A)) ≠
      normalize ([(2, [10])] ++ C2_W_I_A_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 746. -/
def C2_W_I_A_I : Poly := [(2, [0, 242, 250]), (2, [30, 239]), (2, [62, 246]), (2, [218, 239, 246]), (2, [234, 242])]
theorem derivative_W_I_A_I :
    normalize (deriv 242 U2_W_I_A) = normalize C2_W_I_A_I := by decide +kernel
theorem original_sign_mismatch_W_I_A_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_W_I_A)) ≠
      normalize ([(2, [6])] ++ C2_W_I_A_I) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 747. -/
def C2_W_I_A_A : Poly := [(2, [0, 239, 247]), (2, [30, 242]), (2, [60, 246]), (2, [218, 242, 246]), (2, [231, 239])]
theorem derivative_W_I_A_A :
    normalize (deriv 239 U2_W_I_A) = normalize C2_W_I_A_A := by decide +kernel
theorem original_sign_mismatch_W_I_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_W_I_A)) ≠
      normalize ([(2, [3])] ++ C2_W_I_A_A) := by decide +kernel

end EFMWLagrangian
