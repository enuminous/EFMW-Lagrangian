import EFMWLagrangian.Core

set_option maxRecDepth 20000
set_option maxHeartbeats 0
namespace EFMWLagrangian

/-- Twice the restricted C1 potential for T_I_H. -/
def U2_T_I_H : Poly := [(1, [0, 241, 241, 249]), (1, [0, 242, 242, 250]), (1, [0, 245, 245, 253]), (2, [31, 241, 242]), (2, [56, 241, 245]), (2, [57, 242, 245]), (2, [209, 241, 242, 245]), (1, [233, 241, 241]), (1, [234, 242, 242]), (1, [237, 245, 245])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 820. -/
def C2_T_I_H_T : Poly := [(2, [0, 245, 253]), (2, [56, 241]), (2, [57, 242]), (2, [209, 241, 242]), (2, [237, 245])]
theorem derivative_T_I_H_T :
    normalize (deriv 245 U2_T_I_H) = normalize C2_T_I_H_T := by decide +kernel
theorem original_sign_mismatch_T_I_H_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_T_I_H)) ≠
      normalize ([(2, [9])] ++ C2_T_I_H_T) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 821. -/
def C2_T_I_H_I : Poly := [(2, [0, 242, 250]), (2, [31, 241]), (2, [57, 245]), (2, [209, 241, 245]), (2, [234, 242])]
theorem derivative_T_I_H_I :
    normalize (deriv 242 U2_T_I_H) = normalize C2_T_I_H_I := by decide +kernel
theorem original_sign_mismatch_T_I_H_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_T_I_H)) ≠
      normalize ([(2, [6])] ++ C2_T_I_H_I) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 822. -/
def C2_T_I_H_H : Poly := [(2, [0, 241, 249]), (2, [31, 242]), (2, [56, 245]), (2, [209, 242, 245]), (2, [233, 241])]
theorem derivative_T_I_H_H :
    normalize (deriv 241 U2_T_I_H) = normalize C2_T_I_H_H := by decide +kernel
theorem original_sign_mismatch_T_I_H_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_T_I_H)) ≠
      normalize ([(2, [5])] ++ C2_T_I_H_H) := by decide +kernel

/-- Twice the restricted C1 potential for T_I_P. -/
def U2_T_I_P : Poly := [(1, [0, 242, 242, 250]), (1, [0, 243, 243, 251]), (1, [0, 245, 245, 253]), (2, [32, 242, 243]), (2, [57, 242, 245]), (2, [58, 243, 245]), (2, [210, 242, 243, 245]), (1, [234, 242, 242]), (1, [235, 243, 243]), (1, [237, 245, 245])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 825. -/
def C2_T_I_P_T : Poly := [(2, [0, 245, 253]), (2, [57, 242]), (2, [58, 243]), (2, [210, 242, 243]), (2, [237, 245])]
theorem derivative_T_I_P_T :
    normalize (deriv 245 U2_T_I_P) = normalize C2_T_I_P_T := by decide +kernel
theorem original_sign_mismatch_T_I_P_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_T_I_P)) ≠
      normalize ([(2, [9])] ++ C2_T_I_P_T) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 826. -/
def C2_T_I_P_I : Poly := [(2, [0, 242, 250]), (2, [32, 243]), (2, [57, 245]), (2, [210, 243, 245]), (2, [234, 242])]
theorem derivative_T_I_P_I :
    normalize (deriv 242 U2_T_I_P) = normalize C2_T_I_P_I := by decide +kernel
theorem original_sign_mismatch_T_I_P_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_T_I_P)) ≠
      normalize ([(2, [6])] ++ C2_T_I_P_I) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 827. -/
def C2_T_I_P_P : Poly := [(2, [0, 243, 251]), (2, [32, 242]), (2, [58, 245]), (2, [210, 242, 245]), (2, [235, 243])]
theorem derivative_T_I_P_P :
    normalize (deriv 243 U2_T_I_P) = normalize C2_T_I_P_P := by decide +kernel
theorem original_sign_mismatch_T_I_P_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_T_I_P)) ≠
      normalize ([(2, [7])] ++ C2_T_I_P_P) := by decide +kernel

/-- Twice the restricted C1 potential for T_I_A. -/
def U2_T_I_A : Poly := [(1, [0, 239, 239, 247]), (1, [0, 242, 242, 250]), (1, [0, 245, 245, 253]), (2, [30, 239, 242]), (2, [55, 239, 245]), (2, [57, 242, 245]), (2, [208, 239, 242, 245]), (1, [231, 239, 239]), (1, [234, 242, 242]), (1, [237, 245, 245])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 830. -/
def C2_T_I_A_T : Poly := [(2, [0, 245, 253]), (2, [55, 239]), (2, [57, 242]), (2, [208, 239, 242]), (2, [237, 245])]
theorem derivative_T_I_A_T :
    normalize (deriv 245 U2_T_I_A) = normalize C2_T_I_A_T := by decide +kernel
theorem original_sign_mismatch_T_I_A_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_T_I_A)) ≠
      normalize ([(2, [9])] ++ C2_T_I_A_T) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 831. -/
def C2_T_I_A_I : Poly := [(2, [0, 242, 250]), (2, [30, 239]), (2, [57, 245]), (2, [208, 239, 245]), (2, [234, 242])]
theorem derivative_T_I_A_I :
    normalize (deriv 242 U2_T_I_A) = normalize C2_T_I_A_I := by decide +kernel
theorem original_sign_mismatch_T_I_A_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_T_I_A)) ≠
      normalize ([(2, [6])] ++ C2_T_I_A_I) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 832. -/
def C2_T_I_A_A : Poly := [(2, [0, 239, 247]), (2, [30, 242]), (2, [55, 245]), (2, [208, 242, 245]), (2, [231, 239])]
theorem derivative_T_I_A_A :
    normalize (deriv 239 U2_T_I_A) = normalize C2_T_I_A_A := by decide +kernel
theorem original_sign_mismatch_T_I_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_T_I_A)) ≠
      normalize ([(2, [3])] ++ C2_T_I_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for T_R_S. -/
def U2_T_R_S : Poly := [(1, [0, 244, 244, 252]), (1, [0, 245, 245, 253]), (2, [2, 52, 244]), (2, [2, 53, 245]), (2, [2, 199, 244, 245]), (2, [59, 244, 245]), (1, [236, 244, 244]), (1, [237, 245, 245])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 838. -/
def C2_T_R_S_T : Poly := [(2, [0, 245, 253]), (2, [2, 53]), (2, [2, 199, 244]), (2, [59, 244]), (2, [237, 245])]
theorem derivative_T_R_S_T :
    normalize (deriv 245 U2_T_R_S) = normalize C2_T_R_S_T := by decide +kernel
theorem original_sign_mismatch_T_R_S_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_T_R_S)) ≠
      normalize ([(2, [9])] ++ C2_T_R_S_T) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 839. -/
def C2_T_R_S_R : Poly := [(2, [0, 244, 252]), (2, [2, 52]), (2, [2, 199, 245]), (2, [59, 245]), (2, [236, 244])]
theorem derivative_T_R_S_R :
    normalize (deriv 244 U2_T_R_S) = normalize C2_T_R_S_R := by decide +kernel
theorem original_sign_mismatch_T_R_S_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_T_R_S)) ≠
      normalize ([(2, [8])] ++ C2_T_R_S_R) := by decide +kernel

/-- Twice the restricted C1 potential for T_R_H. -/
def U2_T_R_H : Poly := [(1, [0, 241, 241, 249]), (1, [0, 244, 244, 252]), (1, [0, 245, 245, 253]), (2, [45, 241, 244]), (2, [56, 241, 245]), (2, [59, 244, 245]), (2, [214, 241, 244, 245]), (1, [233, 241, 241]), (1, [236, 244, 244]), (1, [237, 245, 245])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 842. -/
def C2_T_R_H_T : Poly := [(2, [0, 245, 253]), (2, [56, 241]), (2, [59, 244]), (2, [214, 241, 244]), (2, [237, 245])]
theorem derivative_T_R_H_T :
    normalize (deriv 245 U2_T_R_H) = normalize C2_T_R_H_T := by decide +kernel
theorem original_sign_mismatch_T_R_H_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_T_R_H)) ≠
      normalize ([(2, [9])] ++ C2_T_R_H_T) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 843. -/
def C2_T_R_H_R : Poly := [(2, [0, 244, 252]), (2, [45, 241]), (2, [59, 245]), (2, [214, 241, 245]), (2, [236, 244])]
theorem derivative_T_R_H_R :
    normalize (deriv 244 U2_T_R_H) = normalize C2_T_R_H_R := by decide +kernel
theorem original_sign_mismatch_T_R_H_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_T_R_H)) ≠
      normalize ([(2, [8])] ++ C2_T_R_H_R) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 844. -/
def C2_T_R_H_H : Poly := [(2, [0, 241, 249]), (2, [45, 244]), (2, [56, 245]), (2, [214, 244, 245]), (2, [233, 241])]
theorem derivative_T_R_H_H :
    normalize (deriv 241 U2_T_R_H) = normalize C2_T_R_H_H := by decide +kernel
theorem original_sign_mismatch_T_R_H_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_T_R_H)) ≠
      normalize ([(2, [5])] ++ C2_T_R_H_H) := by decide +kernel

/-- Twice the restricted C1 potential for T_R_P. -/
def U2_T_R_P : Poly := [(1, [0, 243, 243, 251]), (1, [0, 244, 244, 252]), (1, [0, 245, 245, 253]), (2, [46, 243, 244]), (2, [58, 243, 245]), (2, [59, 244, 245]), (2, [215, 243, 244, 245]), (1, [235, 243, 243]), (1, [236, 244, 244]), (1, [237, 245, 245])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 847. -/
def C2_T_R_P_T : Poly := [(2, [0, 245, 253]), (2, [58, 243]), (2, [59, 244]), (2, [215, 243, 244]), (2, [237, 245])]
theorem derivative_T_R_P_T :
    normalize (deriv 245 U2_T_R_P) = normalize C2_T_R_P_T := by decide +kernel
theorem original_sign_mismatch_T_R_P_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_T_R_P)) ≠
      normalize ([(2, [9])] ++ C2_T_R_P_T) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 848. -/
def C2_T_R_P_R : Poly := [(2, [0, 244, 252]), (2, [46, 243]), (2, [59, 245]), (2, [215, 243, 245]), (2, [236, 244])]
theorem derivative_T_R_P_R :
    normalize (deriv 244 U2_T_R_P) = normalize C2_T_R_P_R := by decide +kernel
theorem original_sign_mismatch_T_R_P_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_T_R_P)) ≠
      normalize ([(2, [8])] ++ C2_T_R_P_R) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 849. -/
def C2_T_R_P_P : Poly := [(2, [0, 243, 251]), (2, [46, 244]), (2, [58, 245]), (2, [215, 244, 245]), (2, [235, 243])]
theorem derivative_T_R_P_P :
    normalize (deriv 243 U2_T_R_P) = normalize C2_T_R_P_P := by decide +kernel
theorem original_sign_mismatch_T_R_P_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_T_R_P)) ≠
      normalize ([(2, [7])] ++ C2_T_R_P_P) := by decide +kernel

/-- Twice the restricted C1 potential for T_R_A. -/
def U2_T_R_A : Poly := [(1, [0, 239, 239, 247]), (1, [0, 244, 244, 252]), (1, [0, 245, 245, 253]), (2, [44, 239, 244]), (2, [55, 239, 245]), (2, [59, 244, 245]), (2, [213, 239, 244, 245]), (1, [231, 239, 239]), (1, [236, 244, 244]), (1, [237, 245, 245])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 852. -/
def C2_T_R_A_T : Poly := [(2, [0, 245, 253]), (2, [55, 239]), (2, [59, 244]), (2, [213, 239, 244]), (2, [237, 245])]
theorem derivative_T_R_A_T :
    normalize (deriv 245 U2_T_R_A) = normalize C2_T_R_A_T := by decide +kernel
theorem original_sign_mismatch_T_R_A_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_T_R_A)) ≠
      normalize ([(2, [9])] ++ C2_T_R_A_T) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 853. -/
def C2_T_R_A_R : Poly := [(2, [0, 244, 252]), (2, [44, 239]), (2, [59, 245]), (2, [213, 239, 245]), (2, [236, 244])]
theorem derivative_T_R_A_R :
    normalize (deriv 244 U2_T_R_A) = normalize C2_T_R_A_R := by decide +kernel
theorem original_sign_mismatch_T_R_A_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_T_R_A)) ≠
      normalize ([(2, [8])] ++ C2_T_R_A_R) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 854. -/
def C2_T_R_A_A : Poly := [(2, [0, 239, 247]), (2, [44, 244]), (2, [55, 245]), (2, [213, 244, 245]), (2, [231, 239])]
theorem derivative_T_R_A_A :
    normalize (deriv 239 U2_T_R_A) = normalize C2_T_R_A_A := by decide +kernel
theorem original_sign_mismatch_T_R_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_T_R_A)) ≠
      normalize ([(2, [3])] ++ C2_T_R_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for T_S_H. -/
def U2_T_S_H : Poly := [(1, [0, 241, 241, 249]), (1, [0, 245, 245, 253]), (2, [2, 49, 241]), (2, [2, 53, 245]), (2, [2, 196, 241, 245]), (2, [56, 241, 245]), (1, [233, 241, 241]), (1, [237, 245, 245])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 860. -/
def C2_T_S_H_T : Poly := [(2, [0, 245, 253]), (2, [2, 53]), (2, [2, 196, 241]), (2, [56, 241]), (2, [237, 245])]
theorem derivative_T_S_H_T :
    normalize (deriv 245 U2_T_S_H) = normalize C2_T_S_H_T := by decide +kernel
theorem original_sign_mismatch_T_S_H_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_T_S_H)) ≠
      normalize ([(2, [9])] ++ C2_T_S_H_T) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 861. -/
def C2_T_S_H_H : Poly := [(2, [0, 241, 249]), (2, [2, 49]), (2, [2, 196, 245]), (2, [56, 245]), (2, [233, 241])]
theorem derivative_T_S_H_H :
    normalize (deriv 241 U2_T_S_H) = normalize C2_T_S_H_H := by decide +kernel
theorem original_sign_mismatch_T_S_H_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_T_S_H)) ≠
      normalize ([(2, [5])] ++ C2_T_S_H_H) := by decide +kernel

/-- Twice the restricted C1 potential for T_S_P. -/
def U2_T_S_P : Poly := [(1, [0, 243, 243, 251]), (1, [0, 245, 245, 253]), (2, [2, 51, 243]), (2, [2, 53, 245]), (2, [2, 198, 243, 245]), (2, [58, 243, 245]), (1, [235, 243, 243]), (1, [237, 245, 245])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 867. -/
def C2_T_S_P_T : Poly := [(2, [0, 245, 253]), (2, [2, 53]), (2, [2, 198, 243]), (2, [58, 243]), (2, [237, 245])]
theorem derivative_T_S_P_T :
    normalize (deriv 245 U2_T_S_P) = normalize C2_T_S_P_T := by decide +kernel
theorem original_sign_mismatch_T_S_P_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_T_S_P)) ≠
      normalize ([(2, [9])] ++ C2_T_S_P_T) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 868. -/
def C2_T_S_P_P : Poly := [(2, [0, 243, 251]), (2, [2, 51]), (2, [2, 198, 245]), (2, [58, 245]), (2, [235, 243])]
theorem derivative_T_S_P_P :
    normalize (deriv 243 U2_T_S_P) = normalize C2_T_S_P_P := by decide +kernel
theorem original_sign_mismatch_T_S_P_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_T_S_P)) ≠
      normalize ([(2, [7])] ++ C2_T_S_P_P) := by decide +kernel

/-- Twice the restricted C1 potential for T_S_A. -/
def U2_T_S_A : Poly := [(1, [0, 239, 239, 247]), (1, [0, 245, 245, 253]), (2, [2, 47, 239]), (2, [2, 53, 245]), (2, [2, 195, 239, 245]), (2, [55, 239, 245]), (1, [231, 239, 239]), (1, [237, 245, 245])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 874. -/
def C2_T_S_A_T : Poly := [(2, [0, 245, 253]), (2, [2, 53]), (2, [2, 195, 239]), (2, [55, 239]), (2, [237, 245])]
theorem derivative_T_S_A_T :
    normalize (deriv 245 U2_T_S_A) = normalize C2_T_S_A_T := by decide +kernel
theorem original_sign_mismatch_T_S_A_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_T_S_A)) ≠
      normalize ([(2, [9])] ++ C2_T_S_A_T) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 875. -/
def C2_T_S_A_A : Poly := [(2, [0, 239, 247]), (2, [2, 47]), (2, [2, 195, 245]), (2, [55, 245]), (2, [231, 239])]
theorem derivative_T_S_A_A :
    normalize (deriv 239 U2_T_S_A) = normalize C2_T_S_A_A := by decide +kernel
theorem original_sign_mismatch_T_S_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_T_S_A)) ≠
      normalize ([(2, [3])] ++ C2_T_S_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for T_H_P. -/
def U2_T_H_P : Poly := [(1, [0, 241, 241, 249]), (1, [0, 243, 243, 251]), (1, [0, 245, 245, 253]), (2, [29, 241, 243]), (2, [56, 241, 245]), (2, [58, 243, 245]), (2, [207, 241, 243, 245]), (1, [233, 241, 241]), (1, [235, 243, 243]), (1, [237, 245, 245])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 878. -/
def C2_T_H_P_T : Poly := [(2, [0, 245, 253]), (2, [56, 241]), (2, [58, 243]), (2, [207, 241, 243]), (2, [237, 245])]
theorem derivative_T_H_P_T :
    normalize (deriv 245 U2_T_H_P) = normalize C2_T_H_P_T := by decide +kernel
theorem original_sign_mismatch_T_H_P_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_T_H_P)) ≠
      normalize ([(2, [9])] ++ C2_T_H_P_T) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 879. -/
def C2_T_H_P_H : Poly := [(2, [0, 241, 249]), (2, [29, 243]), (2, [56, 245]), (2, [207, 243, 245]), (2, [233, 241])]
theorem derivative_T_H_P_H :
    normalize (deriv 241 U2_T_H_P) = normalize C2_T_H_P_H := by decide +kernel
theorem original_sign_mismatch_T_H_P_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_T_H_P)) ≠
      normalize ([(2, [5])] ++ C2_T_H_P_H) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 880. -/
def C2_T_H_P_P : Poly := [(2, [0, 243, 251]), (2, [29, 241]), (2, [58, 245]), (2, [207, 241, 245]), (2, [235, 243])]
theorem derivative_T_H_P_P :
    normalize (deriv 243 U2_T_H_P) = normalize C2_T_H_P_P := by decide +kernel
theorem original_sign_mismatch_T_H_P_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_T_H_P)) ≠
      normalize ([(2, [7])] ++ C2_T_H_P_P) := by decide +kernel

/-- Twice the restricted C1 potential for T_H_A. -/
def U2_T_H_A : Poly := [(1, [0, 239, 239, 247]), (1, [0, 241, 241, 249]), (1, [0, 245, 245, 253]), (2, [28, 239, 241]), (2, [55, 239, 245]), (2, [56, 241, 245]), (2, [206, 239, 241, 245]), (1, [231, 239, 239]), (1, [233, 241, 241]), (1, [237, 245, 245])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 883. -/
def C2_T_H_A_T : Poly := [(2, [0, 245, 253]), (2, [55, 239]), (2, [56, 241]), (2, [206, 239, 241]), (2, [237, 245])]
theorem derivative_T_H_A_T :
    normalize (deriv 245 U2_T_H_A) = normalize C2_T_H_A_T := by decide +kernel
theorem original_sign_mismatch_T_H_A_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_T_H_A)) ≠
      normalize ([(2, [9])] ++ C2_T_H_A_T) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 884. -/
def C2_T_H_A_H : Poly := [(2, [0, 241, 249]), (2, [28, 239]), (2, [56, 245]), (2, [206, 239, 245]), (2, [233, 241])]
theorem derivative_T_H_A_H :
    normalize (deriv 241 U2_T_H_A) = normalize C2_T_H_A_H := by decide +kernel
theorem original_sign_mismatch_T_H_A_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_T_H_A)) ≠
      normalize ([(2, [5])] ++ C2_T_H_A_H) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 885. -/
def C2_T_H_A_A : Poly := [(2, [0, 239, 247]), (2, [28, 241]), (2, [55, 245]), (2, [206, 241, 245]), (2, [231, 239])]
theorem derivative_T_H_A_A :
    normalize (deriv 239 U2_T_H_A) = normalize C2_T_H_A_A := by decide +kernel
theorem original_sign_mismatch_T_H_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_T_H_A)) ≠
      normalize ([(2, [3])] ++ C2_T_H_A_A) := by decide +kernel

end EFMWLagrangian
