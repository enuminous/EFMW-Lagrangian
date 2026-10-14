import EFMWLagrangian.Core

set_option maxRecDepth 20000
set_option maxHeartbeats 0
namespace EFMWLagrangian

/-- Twice the restricted C1 potential for R_S_P. -/
def U2_R_S_P : Poly := [(1, [0, 243, 243, 251]), (1, [0, 244, 244, 252]), (2, [2, 51, 243]), (2, [2, 52, 244]), (2, [2, 194, 243, 244]), (2, [46, 243, 244]), (1, [235, 243, 243]), (1, [236, 244, 244])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 961. -/
def C2_R_S_P_R : Poly := [(2, [0, 244, 252]), (2, [2, 52]), (2, [2, 194, 243]), (2, [46, 243]), (2, [236, 244])]
theorem derivative_R_S_P_R :
    normalize (deriv 244 U2_R_S_P) = normalize C2_R_S_P_R := by decide +kernel
theorem original_sign_mismatch_R_S_P_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_R_S_P)) ≠
      normalize ([(2, [8])] ++ C2_R_S_P_R) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 962. -/
def C2_R_S_P_P : Poly := [(2, [0, 243, 251]), (2, [2, 51]), (2, [2, 194, 244]), (2, [46, 244]), (2, [235, 243])]
theorem derivative_R_S_P_P :
    normalize (deriv 243 U2_R_S_P) = normalize C2_R_S_P_P := by decide +kernel
theorem original_sign_mismatch_R_S_P_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_R_S_P)) ≠
      normalize ([(2, [7])] ++ C2_R_S_P_P) := by decide +kernel

/-- Twice the restricted C1 potential for R_S_A. -/
def U2_R_S_A : Poly := [(1, [0, 239, 239, 247]), (1, [0, 244, 244, 252]), (2, [2, 47, 239]), (2, [2, 52, 244]), (2, [2, 192, 239, 244]), (2, [44, 239, 244]), (1, [231, 239, 239]), (1, [236, 244, 244])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 968. -/
def C2_R_S_A_R : Poly := [(2, [0, 244, 252]), (2, [2, 52]), (2, [2, 192, 239]), (2, [44, 239]), (2, [236, 244])]
theorem derivative_R_S_A_R :
    normalize (deriv 244 U2_R_S_A) = normalize C2_R_S_A_R := by decide +kernel
theorem original_sign_mismatch_R_S_A_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_R_S_A)) ≠
      normalize ([(2, [8])] ++ C2_R_S_A_R) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 969. -/
def C2_R_S_A_A : Poly := [(2, [0, 239, 247]), (2, [2, 47]), (2, [2, 192, 244]), (2, [44, 244]), (2, [231, 239])]
theorem derivative_R_S_A_A :
    normalize (deriv 239 U2_R_S_A) = normalize C2_R_S_A_A := by decide +kernel
theorem original_sign_mismatch_R_S_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_R_S_A)) ≠
      normalize ([(2, [3])] ++ C2_R_S_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for R_H_P. -/
def U2_R_H_P : Poly := [(1, [0, 241, 241, 249]), (1, [0, 243, 243, 251]), (1, [0, 244, 244, 252]), (2, [29, 241, 243]), (2, [45, 241, 244]), (2, [46, 243, 244]), (2, [176, 241, 243, 244]), (1, [233, 241, 241]), (1, [235, 243, 243]), (1, [236, 244, 244])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 972. -/
def C2_R_H_P_R : Poly := [(2, [0, 244, 252]), (2, [45, 241]), (2, [46, 243]), (2, [176, 241, 243]), (2, [236, 244])]
theorem derivative_R_H_P_R :
    normalize (deriv 244 U2_R_H_P) = normalize C2_R_H_P_R := by decide +kernel
theorem original_sign_mismatch_R_H_P_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_R_H_P)) ≠
      normalize ([(2, [8])] ++ C2_R_H_P_R) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 973. -/
def C2_R_H_P_H : Poly := [(2, [0, 241, 249]), (2, [29, 243]), (2, [45, 244]), (2, [176, 243, 244]), (2, [233, 241])]
theorem derivative_R_H_P_H :
    normalize (deriv 241 U2_R_H_P) = normalize C2_R_H_P_H := by decide +kernel
theorem original_sign_mismatch_R_H_P_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_R_H_P)) ≠
      normalize ([(2, [5])] ++ C2_R_H_P_H) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 974. -/
def C2_R_H_P_P : Poly := [(2, [0, 243, 251]), (2, [29, 241]), (2, [46, 244]), (2, [176, 241, 244]), (2, [235, 243])]
theorem derivative_R_H_P_P :
    normalize (deriv 243 U2_R_H_P) = normalize C2_R_H_P_P := by decide +kernel
theorem original_sign_mismatch_R_H_P_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_R_H_P)) ≠
      normalize ([(2, [7])] ++ C2_R_H_P_P) := by decide +kernel

/-- Twice the restricted C1 potential for R_H_A. -/
def U2_R_H_A : Poly := [(1, [0, 239, 239, 247]), (1, [0, 241, 241, 249]), (1, [0, 244, 244, 252]), (2, [28, 239, 241]), (2, [44, 239, 244]), (2, [45, 241, 244]), (2, [175, 239, 241, 244]), (1, [231, 239, 239]), (1, [233, 241, 241]), (1, [236, 244, 244])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 977. -/
def C2_R_H_A_R : Poly := [(2, [0, 244, 252]), (2, [44, 239]), (2, [45, 241]), (2, [175, 239, 241]), (2, [236, 244])]
theorem derivative_R_H_A_R :
    normalize (deriv 244 U2_R_H_A) = normalize C2_R_H_A_R := by decide +kernel
theorem original_sign_mismatch_R_H_A_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_R_H_A)) ≠
      normalize ([(2, [8])] ++ C2_R_H_A_R) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 978. -/
def C2_R_H_A_H : Poly := [(2, [0, 241, 249]), (2, [28, 239]), (2, [45, 244]), (2, [175, 239, 244]), (2, [233, 241])]
theorem derivative_R_H_A_H :
    normalize (deriv 241 U2_R_H_A) = normalize C2_R_H_A_H := by decide +kernel
theorem original_sign_mismatch_R_H_A_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_R_H_A)) ≠
      normalize ([(2, [5])] ++ C2_R_H_A_H) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 979. -/
def C2_R_H_A_A : Poly := [(2, [0, 239, 247]), (2, [28, 241]), (2, [44, 244]), (2, [175, 241, 244]), (2, [231, 239])]
theorem derivative_R_H_A_A :
    normalize (deriv 239 U2_R_H_A) = normalize C2_R_H_A_A := by decide +kernel
theorem original_sign_mismatch_R_H_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_R_H_A)) ≠
      normalize ([(2, [3])] ++ C2_R_H_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for R_P_A. -/
def U2_R_P_A : Poly := [(1, [0, 239, 239, 247]), (1, [0, 243, 243, 251]), (1, [0, 244, 244, 252]), (2, [43, 239, 243]), (2, [44, 239, 244]), (2, [46, 243, 244]), (2, [177, 239, 243, 244]), (1, [231, 239, 239]), (1, [235, 243, 243]), (1, [236, 244, 244])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 982. -/
def C2_R_P_A_R : Poly := [(2, [0, 244, 252]), (2, [44, 239]), (2, [46, 243]), (2, [177, 239, 243]), (2, [236, 244])]
theorem derivative_R_P_A_R :
    normalize (deriv 244 U2_R_P_A) = normalize C2_R_P_A_R := by decide +kernel
theorem original_sign_mismatch_R_P_A_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_R_P_A)) ≠
      normalize ([(2, [8])] ++ C2_R_P_A_R) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 983. -/
def C2_R_P_A_P : Poly := [(2, [0, 243, 251]), (2, [43, 239]), (2, [46, 244]), (2, [177, 239, 244]), (2, [235, 243])]
theorem derivative_R_P_A_P :
    normalize (deriv 243 U2_R_P_A) = normalize C2_R_P_A_P := by decide +kernel
theorem original_sign_mismatch_R_P_A_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_R_P_A)) ≠
      normalize ([(2, [7])] ++ C2_R_P_A_P) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 984. -/
def C2_R_P_A_A : Poly := [(2, [0, 239, 247]), (2, [43, 243]), (2, [44, 244]), (2, [177, 243, 244]), (2, [231, 239])]
theorem derivative_R_P_A_A :
    normalize (deriv 239 U2_R_P_A) = normalize C2_R_P_A_A := by decide +kernel
theorem original_sign_mismatch_R_P_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_R_P_A)) ≠
      normalize ([(2, [3])] ++ C2_R_P_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for S_H_P. -/
def U2_S_H_P : Poly := [(1, [0, 241, 241, 249]), (1, [0, 243, 243, 251]), (2, [2, 49, 241]), (2, [2, 51, 243]), (2, [2, 186, 241, 243]), (2, [29, 241, 243]), (1, [233, 241, 241]), (1, [235, 243, 243])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 990. -/
def C2_S_H_P_H : Poly := [(2, [0, 241, 249]), (2, [2, 49]), (2, [2, 186, 243]), (2, [29, 243]), (2, [233, 241])]
theorem derivative_S_H_P_H :
    normalize (deriv 241 U2_S_H_P) = normalize C2_S_H_P_H := by decide +kernel
theorem original_sign_mismatch_S_H_P_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_S_H_P)) ≠
      normalize ([(2, [5])] ++ C2_S_H_P_H) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 991. -/
def C2_S_H_P_P : Poly := [(2, [0, 243, 251]), (2, [2, 51]), (2, [2, 186, 241]), (2, [29, 241]), (2, [235, 243])]
theorem derivative_S_H_P_P :
    normalize (deriv 243 U2_S_H_P) = normalize C2_S_H_P_P := by decide +kernel
theorem original_sign_mismatch_S_H_P_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_S_H_P)) ≠
      normalize ([(2, [7])] ++ C2_S_H_P_P) := by decide +kernel

/-- Twice the restricted C1 potential for S_H_A. -/
def U2_S_H_A : Poly := [(1, [0, 239, 239, 247]), (1, [0, 241, 241, 249]), (2, [2, 47, 239]), (2, [2, 49, 241]), (2, [2, 185, 239, 241]), (2, [28, 239, 241]), (1, [231, 239, 239]), (1, [233, 241, 241])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 997. -/
def C2_S_H_A_H : Poly := [(2, [0, 241, 249]), (2, [2, 49]), (2, [2, 185, 239]), (2, [28, 239]), (2, [233, 241])]
theorem derivative_S_H_A_H :
    normalize (deriv 241 U2_S_H_A) = normalize C2_S_H_A_H := by decide +kernel
theorem original_sign_mismatch_S_H_A_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_S_H_A)) ≠
      normalize ([(2, [5])] ++ C2_S_H_A_H) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 998. -/
def C2_S_H_A_A : Poly := [(2, [0, 239, 247]), (2, [2, 47]), (2, [2, 185, 241]), (2, [28, 241]), (2, [231, 239])]
theorem derivative_S_H_A_A :
    normalize (deriv 239 U2_S_H_A) = normalize C2_S_H_A_A := by decide +kernel
theorem original_sign_mismatch_S_H_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_S_H_A)) ≠
      normalize ([(2, [3])] ++ C2_S_H_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for S_P_A. -/
def U2_S_P_A : Poly := [(1, [0, 239, 239, 247]), (1, [0, 243, 243, 251]), (2, [2, 47, 239]), (2, [2, 51, 243]), (2, [2, 191, 239, 243]), (2, [43, 239, 243]), (1, [231, 239, 239]), (1, [235, 243, 243])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 1004. -/
def C2_S_P_A_P : Poly := [(2, [0, 243, 251]), (2, [2, 51]), (2, [2, 191, 239]), (2, [43, 239]), (2, [235, 243])]
theorem derivative_S_P_A_P :
    normalize (deriv 243 U2_S_P_A) = normalize C2_S_P_A_P := by decide +kernel
theorem original_sign_mismatch_S_P_A_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_S_P_A)) ≠
      normalize ([(2, [7])] ++ C2_S_P_A_P) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 1005. -/
def C2_S_P_A_A : Poly := [(2, [0, 239, 247]), (2, [2, 47]), (2, [2, 191, 243]), (2, [43, 243]), (2, [231, 239])]
theorem derivative_S_P_A_A :
    normalize (deriv 239 U2_S_P_A) = normalize C2_S_P_A_A := by decide +kernel
theorem original_sign_mismatch_S_P_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_S_P_A)) ≠
      normalize ([(2, [3])] ++ C2_S_P_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for H_P_A. -/
def U2_H_P_A : Poly := [(1, [0, 239, 239, 247]), (1, [0, 241, 241, 249]), (1, [0, 243, 243, 251]), (2, [28, 239, 241]), (2, [29, 241, 243]), (2, [43, 239, 243]), (2, [132, 239, 241, 243]), (1, [231, 239, 239]), (1, [233, 241, 241]), (1, [235, 243, 243])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 1008. -/
def C2_H_P_A_H : Poly := [(2, [0, 241, 249]), (2, [28, 239]), (2, [29, 243]), (2, [132, 239, 243]), (2, [233, 241])]
theorem derivative_H_P_A_H :
    normalize (deriv 241 U2_H_P_A) = normalize C2_H_P_A_H := by decide +kernel
theorem original_sign_mismatch_H_P_A_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_H_P_A)) ≠
      normalize ([(2, [5])] ++ C2_H_P_A_H) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 1009. -/
def C2_H_P_A_P : Poly := [(2, [0, 243, 251]), (2, [29, 241]), (2, [43, 239]), (2, [132, 239, 241]), (2, [235, 243])]
theorem derivative_H_P_A_P :
    normalize (deriv 243 U2_H_P_A) = normalize C2_H_P_A_P := by decide +kernel
theorem original_sign_mismatch_H_P_A_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_H_P_A)) ≠
      normalize ([(2, [7])] ++ C2_H_P_A_P) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 1010. -/
def C2_H_P_A_A : Poly := [(2, [0, 239, 247]), (2, [28, 241]), (2, [43, 243]), (2, [132, 241, 243]), (2, [231, 239])]
theorem derivative_H_P_A_A :
    normalize (deriv 239 U2_H_P_A) = normalize C2_H_P_A_A := by decide +kernel
theorem original_sign_mismatch_H_P_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_H_P_A)) ≠
      normalize ([(2, [3])] ++ C2_H_P_A_A) := by decide +kernel

end EFMWLagrangian
