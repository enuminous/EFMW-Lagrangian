import EFMWLagrangian.Core

set_option maxRecDepth 20000
set_option maxHeartbeats 0
namespace EFMWLagrangian

/-- Twice the restricted C1 potential for T_P_A. -/
def U2_T_P_A : Poly := [(1, [0, 239, 239, 247]), (1, [0, 243, 243, 251]), (1, [0, 245, 245, 253]), (2, [43, 239, 243]), (2, [55, 239, 245]), (2, [58, 243, 245]), (2, [212, 239, 243, 245]), (1, [231, 239, 239]), (1, [235, 243, 243]), (1, [237, 245, 245])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 888. -/
def C2_T_P_A_T : Poly := [(2, [0, 245, 253]), (2, [55, 239]), (2, [58, 243]), (2, [212, 239, 243]), (2, [237, 245])]
theorem derivative_T_P_A_T :
    normalize (deriv 245 U2_T_P_A) = normalize C2_T_P_A_T := by decide +kernel
theorem original_sign_mismatch_T_P_A_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_T_P_A)) ≠
      normalize ([(2, [9])] ++ C2_T_P_A_T) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 889. -/
def C2_T_P_A_P : Poly := [(2, [0, 243, 251]), (2, [43, 239]), (2, [58, 245]), (2, [212, 239, 245]), (2, [235, 243])]
theorem derivative_T_P_A_P :
    normalize (deriv 243 U2_T_P_A) = normalize C2_T_P_A_P := by decide +kernel
theorem original_sign_mismatch_T_P_A_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_T_P_A)) ≠
      normalize ([(2, [7])] ++ C2_T_P_A_P) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 890. -/
def C2_T_P_A_A : Poly := [(2, [0, 239, 247]), (2, [43, 243]), (2, [55, 245]), (2, [212, 243, 245]), (2, [231, 239])]
theorem derivative_T_P_A_A :
    normalize (deriv 239 U2_T_P_A) = normalize C2_T_P_A_A := by decide +kernel
theorem original_sign_mismatch_T_P_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_T_P_A)) ≠
      normalize ([(2, [3])] ++ C2_T_P_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for I_R_S. -/
def U2_I_R_S : Poly := [(1, [0, 242, 242, 250]), (1, [0, 244, 244, 252]), (2, [2, 50, 242]), (2, [2, 52, 244]), (2, [2, 190, 242, 244]), (2, [33, 242, 244]), (1, [234, 242, 242]), (1, [236, 244, 244])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 896. -/
def C2_I_R_S_I : Poly := [(2, [0, 242, 250]), (2, [2, 50]), (2, [2, 190, 244]), (2, [33, 244]), (2, [234, 242])]
theorem derivative_I_R_S_I :
    normalize (deriv 242 U2_I_R_S) = normalize C2_I_R_S_I := by decide +kernel
theorem original_sign_mismatch_I_R_S_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_I_R_S)) ≠
      normalize ([(2, [6])] ++ C2_I_R_S_I) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 897. -/
def C2_I_R_S_R : Poly := [(2, [0, 244, 252]), (2, [2, 52]), (2, [2, 190, 242]), (2, [33, 242]), (2, [236, 244])]
theorem derivative_I_R_S_R :
    normalize (deriv 244 U2_I_R_S) = normalize C2_I_R_S_R := by decide +kernel
theorem original_sign_mismatch_I_R_S_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_I_R_S)) ≠
      normalize ([(2, [8])] ++ C2_I_R_S_R) := by decide +kernel

/-- Twice the restricted C1 potential for I_R_H. -/
def U2_I_R_H : Poly := [(1, [0, 241, 241, 249]), (1, [0, 242, 242, 250]), (1, [0, 244, 244, 252]), (2, [31, 241, 242]), (2, [33, 242, 244]), (2, [45, 241, 244]), (2, [137, 241, 242, 244]), (1, [233, 241, 241]), (1, [234, 242, 242]), (1, [236, 244, 244])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 900. -/
def C2_I_R_H_I : Poly := [(2, [0, 242, 250]), (2, [31, 241]), (2, [33, 244]), (2, [137, 241, 244]), (2, [234, 242])]
theorem derivative_I_R_H_I :
    normalize (deriv 242 U2_I_R_H) = normalize C2_I_R_H_I := by decide +kernel
theorem original_sign_mismatch_I_R_H_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_I_R_H)) ≠
      normalize ([(2, [6])] ++ C2_I_R_H_I) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 901. -/
def C2_I_R_H_R : Poly := [(2, [0, 244, 252]), (2, [33, 242]), (2, [45, 241]), (2, [137, 241, 242]), (2, [236, 244])]
theorem derivative_I_R_H_R :
    normalize (deriv 244 U2_I_R_H) = normalize C2_I_R_H_R := by decide +kernel
theorem original_sign_mismatch_I_R_H_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_I_R_H)) ≠
      normalize ([(2, [8])] ++ C2_I_R_H_R) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 902. -/
def C2_I_R_H_H : Poly := [(2, [0, 241, 249]), (2, [31, 242]), (2, [45, 244]), (2, [137, 242, 244]), (2, [233, 241])]
theorem derivative_I_R_H_H :
    normalize (deriv 241 U2_I_R_H) = normalize C2_I_R_H_H := by decide +kernel
theorem original_sign_mismatch_I_R_H_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_I_R_H)) ≠
      normalize ([(2, [5])] ++ C2_I_R_H_H) := by decide +kernel

/-- Twice the restricted C1 potential for I_R_P. -/
def U2_I_R_P : Poly := [(1, [0, 242, 242, 250]), (1, [0, 243, 243, 251]), (1, [0, 244, 244, 252]), (2, [32, 242, 243]), (2, [33, 242, 244]), (2, [46, 243, 244]), (2, [138, 242, 243, 244]), (1, [234, 242, 242]), (1, [235, 243, 243]), (1, [236, 244, 244])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 905. -/
def C2_I_R_P_I : Poly := [(2, [0, 242, 250]), (2, [32, 243]), (2, [33, 244]), (2, [138, 243, 244]), (2, [234, 242])]
theorem derivative_I_R_P_I :
    normalize (deriv 242 U2_I_R_P) = normalize C2_I_R_P_I := by decide +kernel
theorem original_sign_mismatch_I_R_P_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_I_R_P)) ≠
      normalize ([(2, [6])] ++ C2_I_R_P_I) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 906. -/
def C2_I_R_P_R : Poly := [(2, [0, 244, 252]), (2, [33, 242]), (2, [46, 243]), (2, [138, 242, 243]), (2, [236, 244])]
theorem derivative_I_R_P_R :
    normalize (deriv 244 U2_I_R_P) = normalize C2_I_R_P_R := by decide +kernel
theorem original_sign_mismatch_I_R_P_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_I_R_P)) ≠
      normalize ([(2, [8])] ++ C2_I_R_P_R) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 907. -/
def C2_I_R_P_P : Poly := [(2, [0, 243, 251]), (2, [32, 242]), (2, [46, 244]), (2, [138, 242, 244]), (2, [235, 243])]
theorem derivative_I_R_P_P :
    normalize (deriv 243 U2_I_R_P) = normalize C2_I_R_P_P := by decide +kernel
theorem original_sign_mismatch_I_R_P_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_I_R_P)) ≠
      normalize ([(2, [7])] ++ C2_I_R_P_P) := by decide +kernel

/-- Twice the restricted C1 potential for I_R_A. -/
def U2_I_R_A : Poly := [(1, [0, 239, 239, 247]), (1, [0, 242, 242, 250]), (1, [0, 244, 244, 252]), (2, [30, 239, 242]), (2, [33, 242, 244]), (2, [44, 239, 244]), (2, [136, 239, 242, 244]), (1, [231, 239, 239]), (1, [234, 242, 242]), (1, [236, 244, 244])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 910. -/
def C2_I_R_A_I : Poly := [(2, [0, 242, 250]), (2, [30, 239]), (2, [33, 244]), (2, [136, 239, 244]), (2, [234, 242])]
theorem derivative_I_R_A_I :
    normalize (deriv 242 U2_I_R_A) = normalize C2_I_R_A_I := by decide +kernel
theorem original_sign_mismatch_I_R_A_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_I_R_A)) ≠
      normalize ([(2, [6])] ++ C2_I_R_A_I) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 911. -/
def C2_I_R_A_R : Poly := [(2, [0, 244, 252]), (2, [33, 242]), (2, [44, 239]), (2, [136, 239, 242]), (2, [236, 244])]
theorem derivative_I_R_A_R :
    normalize (deriv 244 U2_I_R_A) = normalize C2_I_R_A_R := by decide +kernel
theorem original_sign_mismatch_I_R_A_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_I_R_A)) ≠
      normalize ([(2, [8])] ++ C2_I_R_A_R) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 912. -/
def C2_I_R_A_A : Poly := [(2, [0, 239, 247]), (2, [30, 242]), (2, [44, 244]), (2, [136, 242, 244]), (2, [231, 239])]
theorem derivative_I_R_A_A :
    normalize (deriv 239 U2_I_R_A) = normalize C2_I_R_A_A := by decide +kernel
theorem original_sign_mismatch_I_R_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_I_R_A)) ≠
      normalize ([(2, [3])] ++ C2_I_R_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for I_S_H. -/
def U2_I_S_H : Poly := [(1, [0, 241, 241, 249]), (1, [0, 242, 242, 250]), (2, [2, 49, 241]), (2, [2, 50, 242]), (2, [2, 188, 241, 242]), (2, [31, 241, 242]), (1, [233, 241, 241]), (1, [234, 242, 242])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 918. -/
def C2_I_S_H_I : Poly := [(2, [0, 242, 250]), (2, [2, 50]), (2, [2, 188, 241]), (2, [31, 241]), (2, [234, 242])]
theorem derivative_I_S_H_I :
    normalize (deriv 242 U2_I_S_H) = normalize C2_I_S_H_I := by decide +kernel
theorem original_sign_mismatch_I_S_H_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_I_S_H)) ≠
      normalize ([(2, [6])] ++ C2_I_S_H_I) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 919. -/
def C2_I_S_H_H : Poly := [(2, [0, 241, 249]), (2, [2, 49]), (2, [2, 188, 242]), (2, [31, 242]), (2, [233, 241])]
theorem derivative_I_S_H_H :
    normalize (deriv 241 U2_I_S_H) = normalize C2_I_S_H_H := by decide +kernel
theorem original_sign_mismatch_I_S_H_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_I_S_H)) ≠
      normalize ([(2, [5])] ++ C2_I_S_H_H) := by decide +kernel

/-- Twice the restricted C1 potential for I_S_P. -/
def U2_I_S_P : Poly := [(1, [0, 242, 242, 250]), (1, [0, 243, 243, 251]), (2, [2, 50, 242]), (2, [2, 51, 243]), (2, [2, 189, 242, 243]), (2, [32, 242, 243]), (1, [234, 242, 242]), (1, [235, 243, 243])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 925. -/
def C2_I_S_P_I : Poly := [(2, [0, 242, 250]), (2, [2, 50]), (2, [2, 189, 243]), (2, [32, 243]), (2, [234, 242])]
theorem derivative_I_S_P_I :
    normalize (deriv 242 U2_I_S_P) = normalize C2_I_S_P_I := by decide +kernel
theorem original_sign_mismatch_I_S_P_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_I_S_P)) ≠
      normalize ([(2, [6])] ++ C2_I_S_P_I) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 926. -/
def C2_I_S_P_P : Poly := [(2, [0, 243, 251]), (2, [2, 51]), (2, [2, 189, 242]), (2, [32, 242]), (2, [235, 243])]
theorem derivative_I_S_P_P :
    normalize (deriv 243 U2_I_S_P) = normalize C2_I_S_P_P := by decide +kernel
theorem original_sign_mismatch_I_S_P_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_I_S_P)) ≠
      normalize ([(2, [7])] ++ C2_I_S_P_P) := by decide +kernel

/-- Twice the restricted C1 potential for I_S_A. -/
def U2_I_S_A : Poly := [(1, [0, 239, 239, 247]), (1, [0, 242, 242, 250]), (2, [2, 47, 239]), (2, [2, 50, 242]), (2, [2, 187, 239, 242]), (2, [30, 239, 242]), (1, [231, 239, 239]), (1, [234, 242, 242])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 932. -/
def C2_I_S_A_I : Poly := [(2, [0, 242, 250]), (2, [2, 50]), (2, [2, 187, 239]), (2, [30, 239]), (2, [234, 242])]
theorem derivative_I_S_A_I :
    normalize (deriv 242 U2_I_S_A) = normalize C2_I_S_A_I := by decide +kernel
theorem original_sign_mismatch_I_S_A_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_I_S_A)) ≠
      normalize ([(2, [6])] ++ C2_I_S_A_I) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 933. -/
def C2_I_S_A_A : Poly := [(2, [0, 239, 247]), (2, [2, 47]), (2, [2, 187, 242]), (2, [30, 242]), (2, [231, 239])]
theorem derivative_I_S_A_A :
    normalize (deriv 239 U2_I_S_A) = normalize C2_I_S_A_A := by decide +kernel
theorem original_sign_mismatch_I_S_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_I_S_A)) ≠
      normalize ([(2, [3])] ++ C2_I_S_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for I_H_P. -/
def U2_I_H_P : Poly := [(1, [0, 241, 241, 249]), (1, [0, 242, 242, 250]), (1, [0, 243, 243, 251]), (2, [29, 241, 243]), (2, [31, 241, 242]), (2, [32, 242, 243]), (2, [134, 241, 242, 243]), (1, [233, 241, 241]), (1, [234, 242, 242]), (1, [235, 243, 243])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 936. -/
def C2_I_H_P_I : Poly := [(2, [0, 242, 250]), (2, [31, 241]), (2, [32, 243]), (2, [134, 241, 243]), (2, [234, 242])]
theorem derivative_I_H_P_I :
    normalize (deriv 242 U2_I_H_P) = normalize C2_I_H_P_I := by decide +kernel
theorem original_sign_mismatch_I_H_P_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_I_H_P)) ≠
      normalize ([(2, [6])] ++ C2_I_H_P_I) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 937. -/
def C2_I_H_P_H : Poly := [(2, [0, 241, 249]), (2, [29, 243]), (2, [31, 242]), (2, [134, 242, 243]), (2, [233, 241])]
theorem derivative_I_H_P_H :
    normalize (deriv 241 U2_I_H_P) = normalize C2_I_H_P_H := by decide +kernel
theorem original_sign_mismatch_I_H_P_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_I_H_P)) ≠
      normalize ([(2, [5])] ++ C2_I_H_P_H) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 938. -/
def C2_I_H_P_P : Poly := [(2, [0, 243, 251]), (2, [29, 241]), (2, [32, 242]), (2, [134, 241, 242]), (2, [235, 243])]
theorem derivative_I_H_P_P :
    normalize (deriv 243 U2_I_H_P) = normalize C2_I_H_P_P := by decide +kernel
theorem original_sign_mismatch_I_H_P_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_I_H_P)) ≠
      normalize ([(2, [7])] ++ C2_I_H_P_P) := by decide +kernel

/-- Twice the restricted C1 potential for I_H_A. -/
def U2_I_H_A : Poly := [(1, [0, 239, 239, 247]), (1, [0, 241, 241, 249]), (1, [0, 242, 242, 250]), (2, [28, 239, 241]), (2, [30, 239, 242]), (2, [31, 241, 242]), (2, [133, 239, 241, 242]), (1, [231, 239, 239]), (1, [233, 241, 241]), (1, [234, 242, 242])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 941. -/
def C2_I_H_A_I : Poly := [(2, [0, 242, 250]), (2, [30, 239]), (2, [31, 241]), (2, [133, 239, 241]), (2, [234, 242])]
theorem derivative_I_H_A_I :
    normalize (deriv 242 U2_I_H_A) = normalize C2_I_H_A_I := by decide +kernel
theorem original_sign_mismatch_I_H_A_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_I_H_A)) ≠
      normalize ([(2, [6])] ++ C2_I_H_A_I) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 942. -/
def C2_I_H_A_H : Poly := [(2, [0, 241, 249]), (2, [28, 239]), (2, [31, 242]), (2, [133, 239, 242]), (2, [233, 241])]
theorem derivative_I_H_A_H :
    normalize (deriv 241 U2_I_H_A) = normalize C2_I_H_A_H := by decide +kernel
theorem original_sign_mismatch_I_H_A_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_I_H_A)) ≠
      normalize ([(2, [5])] ++ C2_I_H_A_H) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 943. -/
def C2_I_H_A_A : Poly := [(2, [0, 239, 247]), (2, [28, 241]), (2, [30, 242]), (2, [133, 241, 242]), (2, [231, 239])]
theorem derivative_I_H_A_A :
    normalize (deriv 239 U2_I_H_A) = normalize C2_I_H_A_A := by decide +kernel
theorem original_sign_mismatch_I_H_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_I_H_A)) ≠
      normalize ([(2, [3])] ++ C2_I_H_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for I_P_A. -/
def U2_I_P_A : Poly := [(1, [0, 239, 239, 247]), (1, [0, 242, 242, 250]), (1, [0, 243, 243, 251]), (2, [30, 239, 242]), (2, [32, 242, 243]), (2, [43, 239, 243]), (2, [135, 239, 242, 243]), (1, [231, 239, 239]), (1, [234, 242, 242]), (1, [235, 243, 243])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 946. -/
def C2_I_P_A_I : Poly := [(2, [0, 242, 250]), (2, [30, 239]), (2, [32, 243]), (2, [135, 239, 243]), (2, [234, 242])]
theorem derivative_I_P_A_I :
    normalize (deriv 242 U2_I_P_A) = normalize C2_I_P_A_I := by decide +kernel
theorem original_sign_mismatch_I_P_A_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_I_P_A)) ≠
      normalize ([(2, [6])] ++ C2_I_P_A_I) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 947. -/
def C2_I_P_A_P : Poly := [(2, [0, 243, 251]), (2, [32, 242]), (2, [43, 239]), (2, [135, 239, 242]), (2, [235, 243])]
theorem derivative_I_P_A_P :
    normalize (deriv 243 U2_I_P_A) = normalize C2_I_P_A_P := by decide +kernel
theorem original_sign_mismatch_I_P_A_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_I_P_A)) ≠
      normalize ([(2, [7])] ++ C2_I_P_A_P) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 948. -/
def C2_I_P_A_A : Poly := [(2, [0, 239, 247]), (2, [30, 242]), (2, [43, 243]), (2, [135, 242, 243]), (2, [231, 239])]
theorem derivative_I_P_A_A :
    normalize (deriv 239 U2_I_P_A) = normalize C2_I_P_A_A := by decide +kernel
theorem original_sign_mismatch_I_P_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_I_P_A)) ≠
      normalize ([(2, [3])] ++ C2_I_P_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for R_S_H. -/
def U2_R_S_H : Poly := [(1, [0, 241, 241, 249]), (1, [0, 244, 244, 252]), (2, [2, 49, 241]), (2, [2, 52, 244]), (2, [2, 193, 241, 244]), (2, [45, 241, 244]), (1, [233, 241, 241]), (1, [236, 244, 244])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 954. -/
def C2_R_S_H_R : Poly := [(2, [0, 244, 252]), (2, [2, 52]), (2, [2, 193, 241]), (2, [45, 241]), (2, [236, 244])]
theorem derivative_R_S_H_R :
    normalize (deriv 244 U2_R_S_H) = normalize C2_R_S_H_R := by decide +kernel
theorem original_sign_mismatch_R_S_H_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_R_S_H)) ≠
      normalize ([(2, [8])] ++ C2_R_S_H_R) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 955. -/
def C2_R_S_H_H : Poly := [(2, [0, 241, 249]), (2, [2, 49]), (2, [2, 193, 244]), (2, [45, 244]), (2, [233, 241])]
theorem derivative_R_S_H_H :
    normalize (deriv 241 U2_R_S_H) = normalize C2_R_S_H_H := by decide +kernel
theorem original_sign_mismatch_R_S_H_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_R_S_H)) ≠
      normalize ([(2, [5])] ++ C2_R_S_H_H) := by decide +kernel

end EFMWLagrangian
