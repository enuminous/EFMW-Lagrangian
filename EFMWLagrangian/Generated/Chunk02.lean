import EFMWLagrangian.Core

set_option maxRecDepth 20000
set_option maxHeartbeats 0
namespace EFMWLagrangian

/-- Twice the restricted C1 potential for E_T_I. -/
def U2_E_T_I : Poly := [(2, [0, 14, 242]), (2, [0, 19, 245]), (2, [0, 102, 242, 245]), (1, [0, 242, 242, 250]), (1, [0, 245, 245, 253]), (2, [57, 242, 245]), (1, [234, 242, 242]), (1, [237, 245, 245])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 153. -/
def C2_E_T_I_T : Poly := [(2, [0, 19]), (2, [0, 102, 242]), (2, [0, 245, 253]), (2, [57, 242]), (2, [237, 245])]
theorem derivative_E_T_I_T :
    normalize (deriv 245 U2_E_T_I) = normalize C2_E_T_I_T := by decide +kernel
theorem original_sign_mismatch_E_T_I_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_E_T_I)) ≠
      normalize ([(2, [9])] ++ C2_E_T_I_T) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 154. -/
def C2_E_T_I_I : Poly := [(2, [0, 14]), (2, [0, 102, 245]), (2, [0, 242, 250]), (2, [57, 245]), (2, [234, 242])]
theorem derivative_E_T_I_I :
    normalize (deriv 242 U2_E_T_I) = normalize C2_E_T_I_I := by decide +kernel
theorem original_sign_mismatch_E_T_I_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_E_T_I)) ≠
      normalize ([(2, [6])] ++ C2_E_T_I_I) := by decide +kernel

/-- Twice the restricted C1 potential for E_T_R. -/
def U2_E_T_R : Poly := [(2, [0, 17, 244]), (2, [0, 19, 245]), (2, [0, 104, 244, 245]), (1, [0, 244, 244, 252]), (1, [0, 245, 245, 253]), (2, [59, 244, 245]), (1, [236, 244, 244]), (1, [237, 245, 245])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 158. -/
def C2_E_T_R_T : Poly := [(2, [0, 19]), (2, [0, 104, 244]), (2, [0, 245, 253]), (2, [59, 244]), (2, [237, 245])]
theorem derivative_E_T_R_T :
    normalize (deriv 245 U2_E_T_R) = normalize C2_E_T_R_T := by decide +kernel
theorem original_sign_mismatch_E_T_R_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_E_T_R)) ≠
      normalize ([(2, [9])] ++ C2_E_T_R_T) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 159. -/
def C2_E_T_R_R : Poly := [(2, [0, 17]), (2, [0, 104, 245]), (2, [0, 244, 252]), (2, [59, 245]), (2, [236, 244])]
theorem derivative_E_T_R_R :
    normalize (deriv 244 U2_E_T_R) = normalize C2_E_T_R_R := by decide +kernel
theorem original_sign_mismatch_E_T_R_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_E_T_R)) ≠
      normalize ([(2, [8])] ++ C2_E_T_R_R) := by decide +kernel

/-- Twice the restricted C1 potential for E_T_S. -/
def U2_E_T_S : Poly := [(2, [0, 2, 18]), (2, [0, 2, 98, 245]), (2, [0, 19, 245]), (1, [0, 245, 245, 253]), (2, [2, 53, 245]), (1, [237, 245, 245])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 166. -/
def C2_E_T_S_T : Poly := [(2, [0, 2, 98]), (2, [0, 19]), (2, [0, 245, 253]), (2, [2, 53]), (2, [237, 245])]
theorem derivative_E_T_S_T :
    normalize (deriv 245 U2_E_T_S) = normalize C2_E_T_S_T := by decide +kernel
theorem original_sign_mismatch_E_T_S_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_E_T_S)) ≠
      normalize ([(2, [9])] ++ C2_E_T_S_T) := by decide +kernel

/-- Twice the restricted C1 potential for E_T_H. -/
def U2_E_T_H : Poly := [(2, [0, 13, 241]), (2, [0, 19, 245]), (2, [0, 101, 241, 245]), (1, [0, 241, 241, 249]), (1, [0, 245, 245, 253]), (2, [56, 241, 245]), (1, [233, 241, 241]), (1, [237, 245, 245])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 170. -/
def C2_E_T_H_T : Poly := [(2, [0, 19]), (2, [0, 101, 241]), (2, [0, 245, 253]), (2, [56, 241]), (2, [237, 245])]
theorem derivative_E_T_H_T :
    normalize (deriv 245 U2_E_T_H) = normalize C2_E_T_H_T := by decide +kernel
theorem original_sign_mismatch_E_T_H_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_E_T_H)) ≠
      normalize ([(2, [9])] ++ C2_E_T_H_T) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 171. -/
def C2_E_T_H_H : Poly := [(2, [0, 13]), (2, [0, 101, 245]), (2, [0, 241, 249]), (2, [56, 245]), (2, [233, 241])]
theorem derivative_E_T_H_H :
    normalize (deriv 241 U2_E_T_H) = normalize C2_E_T_H_H := by decide +kernel
theorem original_sign_mismatch_E_T_H_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_E_T_H)) ≠
      normalize ([(2, [5])] ++ C2_E_T_H_H) := by decide +kernel

/-- Twice the restricted C1 potential for E_T_P. -/
def U2_E_T_P : Poly := [(2, [0, 16, 243]), (2, [0, 19, 245]), (2, [0, 103, 243, 245]), (1, [0, 243, 243, 251]), (1, [0, 245, 245, 253]), (2, [58, 243, 245]), (1, [235, 243, 243]), (1, [237, 245, 245])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 175. -/
def C2_E_T_P_T : Poly := [(2, [0, 19]), (2, [0, 103, 243]), (2, [0, 245, 253]), (2, [58, 243]), (2, [237, 245])]
theorem derivative_E_T_P_T :
    normalize (deriv 245 U2_E_T_P) = normalize C2_E_T_P_T := by decide +kernel
theorem original_sign_mismatch_E_T_P_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_E_T_P)) ≠
      normalize ([(2, [9])] ++ C2_E_T_P_T) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 176. -/
def C2_E_T_P_P : Poly := [(2, [0, 16]), (2, [0, 103, 245]), (2, [0, 243, 251]), (2, [58, 245]), (2, [235, 243])]
theorem derivative_E_T_P_P :
    normalize (deriv 243 U2_E_T_P) = normalize C2_E_T_P_P := by decide +kernel
theorem original_sign_mismatch_E_T_P_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_E_T_P)) ≠
      normalize ([(2, [7])] ++ C2_E_T_P_P) := by decide +kernel

/-- Twice the restricted C1 potential for E_T_A. -/
def U2_E_T_A : Poly := [(2, [0, 11, 239]), (2, [0, 19, 245]), (2, [0, 100, 239, 245]), (1, [0, 239, 239, 247]), (1, [0, 245, 245, 253]), (2, [55, 239, 245]), (1, [231, 239, 239]), (1, [237, 245, 245])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 180. -/
def C2_E_T_A_T : Poly := [(2, [0, 19]), (2, [0, 100, 239]), (2, [0, 245, 253]), (2, [55, 239]), (2, [237, 245])]
theorem derivative_E_T_A_T :
    normalize (deriv 245 U2_E_T_A) = normalize C2_E_T_A_T := by decide +kernel
theorem original_sign_mismatch_E_T_A_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_E_T_A)) ≠
      normalize ([(2, [9])] ++ C2_E_T_A_T) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 181. -/
def C2_E_T_A_A : Poly := [(2, [0, 11]), (2, [0, 100, 245]), (2, [0, 239, 247]), (2, [55, 245]), (2, [231, 239])]
theorem derivative_E_T_A_A :
    normalize (deriv 239 U2_E_T_A) = normalize C2_E_T_A_A := by decide +kernel
theorem original_sign_mismatch_E_T_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_E_T_A)) ≠
      normalize ([(2, [3])] ++ C2_E_T_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for E_I_R. -/
def U2_E_I_R : Poly := [(2, [0, 14, 242]), (2, [0, 17, 244]), (2, [0, 78, 242, 244]), (1, [0, 242, 242, 250]), (1, [0, 244, 244, 252]), (2, [33, 242, 244]), (1, [234, 242, 242]), (1, [236, 244, 244])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 185. -/
def C2_E_I_R_I : Poly := [(2, [0, 14]), (2, [0, 78, 244]), (2, [0, 242, 250]), (2, [33, 244]), (2, [234, 242])]
theorem derivative_E_I_R_I :
    normalize (deriv 242 U2_E_I_R) = normalize C2_E_I_R_I := by decide +kernel
theorem original_sign_mismatch_E_I_R_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_E_I_R)) ≠
      normalize ([(2, [6])] ++ C2_E_I_R_I) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 186. -/
def C2_E_I_R_R : Poly := [(2, [0, 17]), (2, [0, 78, 242]), (2, [0, 244, 252]), (2, [33, 242]), (2, [236, 244])]
theorem derivative_E_I_R_R :
    normalize (deriv 244 U2_E_I_R) = normalize C2_E_I_R_R := by decide +kernel
theorem original_sign_mismatch_E_I_R_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_E_I_R)) ≠
      normalize ([(2, [8])] ++ C2_E_I_R_R) := by decide +kernel

/-- Twice the restricted C1 potential for E_I_S. -/
def U2_E_I_S : Poly := [(2, [0, 2, 18]), (2, [0, 2, 95, 242]), (2, [0, 14, 242]), (1, [0, 242, 242, 250]), (2, [2, 50, 242]), (1, [234, 242, 242])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 193. -/
def C2_E_I_S_I : Poly := [(2, [0, 2, 95]), (2, [0, 14]), (2, [0, 242, 250]), (2, [2, 50]), (2, [234, 242])]
theorem derivative_E_I_S_I :
    normalize (deriv 242 U2_E_I_S) = normalize C2_E_I_S_I := by decide +kernel
theorem original_sign_mismatch_E_I_S_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_E_I_S)) ≠
      normalize ([(2, [6])] ++ C2_E_I_S_I) := by decide +kernel

/-- Twice the restricted C1 potential for E_I_H. -/
def U2_E_I_H : Poly := [(2, [0, 13, 241]), (2, [0, 14, 242]), (2, [0, 76, 241, 242]), (1, [0, 241, 241, 249]), (1, [0, 242, 242, 250]), (2, [31, 241, 242]), (1, [233, 241, 241]), (1, [234, 242, 242])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 197. -/
def C2_E_I_H_I : Poly := [(2, [0, 14]), (2, [0, 76, 241]), (2, [0, 242, 250]), (2, [31, 241]), (2, [234, 242])]
theorem derivative_E_I_H_I :
    normalize (deriv 242 U2_E_I_H) = normalize C2_E_I_H_I := by decide +kernel
theorem original_sign_mismatch_E_I_H_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_E_I_H)) ≠
      normalize ([(2, [6])] ++ C2_E_I_H_I) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 198. -/
def C2_E_I_H_H : Poly := [(2, [0, 13]), (2, [0, 76, 242]), (2, [0, 241, 249]), (2, [31, 242]), (2, [233, 241])]
theorem derivative_E_I_H_H :
    normalize (deriv 241 U2_E_I_H) = normalize C2_E_I_H_H := by decide +kernel
theorem original_sign_mismatch_E_I_H_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_E_I_H)) ≠
      normalize ([(2, [5])] ++ C2_E_I_H_H) := by decide +kernel

/-- Twice the restricted C1 potential for E_I_P. -/
def U2_E_I_P : Poly := [(2, [0, 14, 242]), (2, [0, 16, 243]), (2, [0, 77, 242, 243]), (1, [0, 242, 242, 250]), (1, [0, 243, 243, 251]), (2, [32, 242, 243]), (1, [234, 242, 242]), (1, [235, 243, 243])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 202. -/
def C2_E_I_P_I : Poly := [(2, [0, 14]), (2, [0, 77, 243]), (2, [0, 242, 250]), (2, [32, 243]), (2, [234, 242])]
theorem derivative_E_I_P_I :
    normalize (deriv 242 U2_E_I_P) = normalize C2_E_I_P_I := by decide +kernel
theorem original_sign_mismatch_E_I_P_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_E_I_P)) ≠
      normalize ([(2, [6])] ++ C2_E_I_P_I) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 203. -/
def C2_E_I_P_P : Poly := [(2, [0, 16]), (2, [0, 77, 242]), (2, [0, 243, 251]), (2, [32, 242]), (2, [235, 243])]
theorem derivative_E_I_P_P :
    normalize (deriv 243 U2_E_I_P) = normalize C2_E_I_P_P := by decide +kernel
theorem original_sign_mismatch_E_I_P_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_E_I_P)) ≠
      normalize ([(2, [7])] ++ C2_E_I_P_P) := by decide +kernel

/-- Twice the restricted C1 potential for E_I_A. -/
def U2_E_I_A : Poly := [(2, [0, 11, 239]), (2, [0, 14, 242]), (2, [0, 75, 239, 242]), (1, [0, 239, 239, 247]), (1, [0, 242, 242, 250]), (2, [30, 239, 242]), (1, [231, 239, 239]), (1, [234, 242, 242])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 207. -/
def C2_E_I_A_I : Poly := [(2, [0, 14]), (2, [0, 75, 239]), (2, [0, 242, 250]), (2, [30, 239]), (2, [234, 242])]
theorem derivative_E_I_A_I :
    normalize (deriv 242 U2_E_I_A) = normalize C2_E_I_A_I := by decide +kernel
theorem original_sign_mismatch_E_I_A_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_E_I_A)) ≠
      normalize ([(2, [6])] ++ C2_E_I_A_I) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 208. -/
def C2_E_I_A_A : Poly := [(2, [0, 11]), (2, [0, 75, 242]), (2, [0, 239, 247]), (2, [30, 242]), (2, [231, 239])]
theorem derivative_E_I_A_A :
    normalize (deriv 239 U2_E_I_A) = normalize C2_E_I_A_A := by decide +kernel
theorem original_sign_mismatch_E_I_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_E_I_A)) ≠
      normalize ([(2, [3])] ++ C2_E_I_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for E_R_S. -/
def U2_E_R_S : Poly := [(2, [0, 2, 18]), (2, [0, 2, 97, 244]), (2, [0, 17, 244]), (1, [0, 244, 244, 252]), (2, [2, 52, 244]), (1, [236, 244, 244])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 215. -/
def C2_E_R_S_R : Poly := [(2, [0, 2, 97]), (2, [0, 17]), (2, [0, 244, 252]), (2, [2, 52]), (2, [236, 244])]
theorem derivative_E_R_S_R :
    normalize (deriv 244 U2_E_R_S) = normalize C2_E_R_S_R := by decide +kernel
theorem original_sign_mismatch_E_R_S_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_E_R_S)) ≠
      normalize ([(2, [8])] ++ C2_E_R_S_R) := by decide +kernel

end EFMWLagrangian
