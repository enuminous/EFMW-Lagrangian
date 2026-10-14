import EFMWLagrangian.Core

set_option maxRecDepth 20000
set_option maxHeartbeats 0
namespace EFMWLagrangian

/-- Twice the restricted C1 potential for E_R_H. -/
def U2_E_R_H : Poly := [(2, [0, 13, 241]), (2, [0, 17, 244]), (2, [0, 90, 241, 244]), (1, [0, 241, 241, 249]), (1, [0, 244, 244, 252]), (2, [45, 241, 244]), (1, [233, 241, 241]), (1, [236, 244, 244])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 219. -/
def C2_E_R_H_R : Poly := [(2, [0, 17]), (2, [0, 90, 241]), (2, [0, 244, 252]), (2, [45, 241]), (2, [236, 244])]
theorem derivative_E_R_H_R :
    normalize (deriv 244 U2_E_R_H) = normalize C2_E_R_H_R := by decide +kernel
theorem original_sign_mismatch_E_R_H_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_E_R_H)) ≠
      normalize ([(2, [8])] ++ C2_E_R_H_R) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 220. -/
def C2_E_R_H_H : Poly := [(2, [0, 13]), (2, [0, 90, 244]), (2, [0, 241, 249]), (2, [45, 244]), (2, [233, 241])]
theorem derivative_E_R_H_H :
    normalize (deriv 241 U2_E_R_H) = normalize C2_E_R_H_H := by decide +kernel
theorem original_sign_mismatch_E_R_H_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_E_R_H)) ≠
      normalize ([(2, [5])] ++ C2_E_R_H_H) := by decide +kernel

/-- Twice the restricted C1 potential for E_R_P. -/
def U2_E_R_P : Poly := [(2, [0, 16, 243]), (2, [0, 17, 244]), (2, [0, 91, 243, 244]), (1, [0, 243, 243, 251]), (1, [0, 244, 244, 252]), (2, [46, 243, 244]), (1, [235, 243, 243]), (1, [236, 244, 244])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 224. -/
def C2_E_R_P_R : Poly := [(2, [0, 17]), (2, [0, 91, 243]), (2, [0, 244, 252]), (2, [46, 243]), (2, [236, 244])]
theorem derivative_E_R_P_R :
    normalize (deriv 244 U2_E_R_P) = normalize C2_E_R_P_R := by decide +kernel
theorem original_sign_mismatch_E_R_P_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_E_R_P)) ≠
      normalize ([(2, [8])] ++ C2_E_R_P_R) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 225. -/
def C2_E_R_P_P : Poly := [(2, [0, 16]), (2, [0, 91, 244]), (2, [0, 243, 251]), (2, [46, 244]), (2, [235, 243])]
theorem derivative_E_R_P_P :
    normalize (deriv 243 U2_E_R_P) = normalize C2_E_R_P_P := by decide +kernel
theorem original_sign_mismatch_E_R_P_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_E_R_P)) ≠
      normalize ([(2, [7])] ++ C2_E_R_P_P) := by decide +kernel

/-- Twice the restricted C1 potential for E_R_A. -/
def U2_E_R_A : Poly := [(2, [0, 11, 239]), (2, [0, 17, 244]), (2, [0, 89, 239, 244]), (1, [0, 239, 239, 247]), (1, [0, 244, 244, 252]), (2, [44, 239, 244]), (1, [231, 239, 239]), (1, [236, 244, 244])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 229. -/
def C2_E_R_A_R : Poly := [(2, [0, 17]), (2, [0, 89, 239]), (2, [0, 244, 252]), (2, [44, 239]), (2, [236, 244])]
theorem derivative_E_R_A_R :
    normalize (deriv 244 U2_E_R_A) = normalize C2_E_R_A_R := by decide +kernel
theorem original_sign_mismatch_E_R_A_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_E_R_A)) ≠
      normalize ([(2, [8])] ++ C2_E_R_A_R) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 230. -/
def C2_E_R_A_A : Poly := [(2, [0, 11]), (2, [0, 89, 244]), (2, [0, 239, 247]), (2, [44, 244]), (2, [231, 239])]
theorem derivative_E_R_A_A :
    normalize (deriv 239 U2_E_R_A) = normalize C2_E_R_A_A := by decide +kernel
theorem original_sign_mismatch_E_R_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_E_R_A)) ≠
      normalize ([(2, [3])] ++ C2_E_R_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for E_S_H. -/
def U2_E_S_H : Poly := [(2, [0, 2, 18]), (2, [0, 2, 94, 241]), (2, [0, 13, 241]), (1, [0, 241, 241, 249]), (2, [2, 49, 241]), (1, [233, 241, 241])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 237. -/
def C2_E_S_H_H : Poly := [(2, [0, 2, 94]), (2, [0, 13]), (2, [0, 241, 249]), (2, [2, 49]), (2, [233, 241])]
theorem derivative_E_S_H_H :
    normalize (deriv 241 U2_E_S_H) = normalize C2_E_S_H_H := by decide +kernel
theorem original_sign_mismatch_E_S_H_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_E_S_H)) ≠
      normalize ([(2, [5])] ++ C2_E_S_H_H) := by decide +kernel

/-- Twice the restricted C1 potential for E_S_P. -/
def U2_E_S_P : Poly := [(2, [0, 2, 18]), (2, [0, 2, 96, 243]), (2, [0, 16, 243]), (1, [0, 243, 243, 251]), (2, [2, 51, 243]), (1, [235, 243, 243])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 244. -/
def C2_E_S_P_P : Poly := [(2, [0, 2, 96]), (2, [0, 16]), (2, [0, 243, 251]), (2, [2, 51]), (2, [235, 243])]
theorem derivative_E_S_P_P :
    normalize (deriv 243 U2_E_S_P) = normalize C2_E_S_P_P := by decide +kernel
theorem original_sign_mismatch_E_S_P_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_E_S_P)) ≠
      normalize ([(2, [7])] ++ C2_E_S_P_P) := by decide +kernel

/-- Twice the restricted C1 potential for E_S_A. -/
def U2_E_S_A : Poly := [(2, [0, 2, 18]), (2, [0, 2, 92, 239]), (2, [0, 11, 239]), (1, [0, 239, 239, 247]), (2, [2, 47, 239]), (1, [231, 239, 239])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 251. -/
def C2_E_S_A_A : Poly := [(2, [0, 2, 92]), (2, [0, 11]), (2, [0, 239, 247]), (2, [2, 47]), (2, [231, 239])]
theorem derivative_E_S_A_A :
    normalize (deriv 239 U2_E_S_A) = normalize C2_E_S_A_A := by decide +kernel
theorem original_sign_mismatch_E_S_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_E_S_A)) ≠
      normalize ([(2, [3])] ++ C2_E_S_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for E_H_P. -/
def U2_E_H_P : Poly := [(2, [0, 13, 241]), (2, [0, 16, 243]), (2, [0, 74, 241, 243]), (1, [0, 241, 241, 249]), (1, [0, 243, 243, 251]), (2, [29, 241, 243]), (1, [233, 241, 241]), (1, [235, 243, 243])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 255. -/
def C2_E_H_P_H : Poly := [(2, [0, 13]), (2, [0, 74, 243]), (2, [0, 241, 249]), (2, [29, 243]), (2, [233, 241])]
theorem derivative_E_H_P_H :
    normalize (deriv 241 U2_E_H_P) = normalize C2_E_H_P_H := by decide +kernel
theorem original_sign_mismatch_E_H_P_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_E_H_P)) ≠
      normalize ([(2, [5])] ++ C2_E_H_P_H) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 256. -/
def C2_E_H_P_P : Poly := [(2, [0, 16]), (2, [0, 74, 241]), (2, [0, 243, 251]), (2, [29, 241]), (2, [235, 243])]
theorem derivative_E_H_P_P :
    normalize (deriv 243 U2_E_H_P) = normalize C2_E_H_P_P := by decide +kernel
theorem original_sign_mismatch_E_H_P_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_E_H_P)) ≠
      normalize ([(2, [7])] ++ C2_E_H_P_P) := by decide +kernel

/-- Twice the restricted C1 potential for E_H_A. -/
def U2_E_H_A : Poly := [(2, [0, 11, 239]), (2, [0, 13, 241]), (2, [0, 73, 239, 241]), (1, [0, 239, 239, 247]), (1, [0, 241, 241, 249]), (2, [28, 239, 241]), (1, [231, 239, 239]), (1, [233, 241, 241])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 260. -/
def C2_E_H_A_H : Poly := [(2, [0, 13]), (2, [0, 73, 239]), (2, [0, 241, 249]), (2, [28, 239]), (2, [233, 241])]
theorem derivative_E_H_A_H :
    normalize (deriv 241 U2_E_H_A) = normalize C2_E_H_A_H := by decide +kernel
theorem original_sign_mismatch_E_H_A_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_E_H_A)) ≠
      normalize ([(2, [5])] ++ C2_E_H_A_H) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 261. -/
def C2_E_H_A_A : Poly := [(2, [0, 11]), (2, [0, 73, 241]), (2, [0, 239, 247]), (2, [28, 241]), (2, [231, 239])]
theorem derivative_E_H_A_A :
    normalize (deriv 239 U2_E_H_A) = normalize C2_E_H_A_A := by decide +kernel
theorem original_sign_mismatch_E_H_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_E_H_A)) ≠
      normalize ([(2, [3])] ++ C2_E_H_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for E_P_A. -/
def U2_E_P_A : Poly := [(2, [0, 11, 239]), (2, [0, 16, 243]), (2, [0, 88, 239, 243]), (1, [0, 239, 239, 247]), (1, [0, 243, 243, 251]), (2, [43, 239, 243]), (1, [231, 239, 239]), (1, [235, 243, 243])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 265. -/
def C2_E_P_A_P : Poly := [(2, [0, 16]), (2, [0, 88, 239]), (2, [0, 243, 251]), (2, [43, 239]), (2, [235, 243])]
theorem derivative_E_P_A_P :
    normalize (deriv 243 U2_E_P_A) = normalize C2_E_P_A_P := by decide +kernel
theorem original_sign_mismatch_E_P_A_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_E_P_A)) ≠
      normalize ([(2, [7])] ++ C2_E_P_A_P) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 266. -/
def C2_E_P_A_A : Poly := [(2, [0, 11]), (2, [0, 88, 243]), (2, [0, 239, 247]), (2, [43, 243]), (2, [231, 239])]
theorem derivative_E_P_A_A :
    normalize (deriv 239 U2_E_P_A) = normalize C2_E_P_A_A := by decide +kernel
theorem original_sign_mismatch_E_P_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_E_P_A)) ≠
      normalize ([(2, [3])] ++ C2_E_P_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for F_M_W. -/
def U2_F_M_W : Poly := [(1, [0, 240, 240, 248]), (1, [0, 246, 246, 254]), (2, [1, 35, 240]), (2, [1, 42, 246]), (2, [1, 145, 240, 246]), (2, [27, 240, 246]), (1, [232, 240, 240]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 272. -/
def C2_F_M_W_F : Poly := [(2, [0, 240, 248]), (2, [1, 35]), (2, [1, 145, 246]), (2, [27, 246]), (2, [232, 240])]
theorem derivative_F_M_W_F :
    normalize (deriv 240 U2_F_M_W) = normalize C2_F_M_W_F := by decide +kernel
theorem original_sign_mismatch_F_M_W_F :
    normalize ([(2, [4])] ++ negate (deriv 240 U2_F_M_W)) ≠
      normalize ([(2, [4])] ++ C2_F_M_W_F) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 273. -/
def C2_F_M_W_W : Poly := [(2, [0, 246, 254]), (2, [1, 42]), (2, [1, 145, 240]), (2, [27, 240]), (2, [238, 246])]
theorem derivative_F_M_W_W :
    normalize (deriv 246 U2_F_M_W) = normalize C2_F_M_W_W := by decide +kernel
theorem original_sign_mismatch_F_M_W_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_F_M_W)) ≠
      normalize ([(2, [10])] ++ C2_F_M_W_W) := by decide +kernel

/-- Twice the restricted C1 potential for F_M_T. -/
def U2_F_M_T : Poly := [(1, [0, 240, 240, 248]), (1, [0, 245, 245, 253]), (2, [1, 35, 240]), (2, [1, 41, 245]), (2, [1, 144, 240, 245]), (2, [26, 240, 245]), (1, [232, 240, 240]), (1, [237, 245, 245])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 279. -/
def C2_F_M_T_F : Poly := [(2, [0, 240, 248]), (2, [1, 35]), (2, [1, 144, 245]), (2, [26, 245]), (2, [232, 240])]
theorem derivative_F_M_T_F :
    normalize (deriv 240 U2_F_M_T) = normalize C2_F_M_T_F := by decide +kernel
theorem original_sign_mismatch_F_M_T_F :
    normalize ([(2, [4])] ++ negate (deriv 240 U2_F_M_T)) ≠
      normalize ([(2, [4])] ++ C2_F_M_T_F) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 280. -/
def C2_F_M_T_T : Poly := [(2, [0, 245, 253]), (2, [1, 41]), (2, [1, 144, 240]), (2, [26, 240]), (2, [237, 245])]
theorem derivative_F_M_T_T :
    normalize (deriv 245 U2_F_M_T) = normalize C2_F_M_T_T := by decide +kernel
theorem original_sign_mismatch_F_M_T_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_F_M_T)) ≠
      normalize ([(2, [9])] ++ C2_F_M_T_T) := by decide +kernel

/-- Twice the restricted C1 potential for F_M_I. -/
def U2_F_M_I : Poly := [(1, [0, 240, 240, 248]), (1, [0, 242, 242, 250]), (2, [1, 35, 240]), (2, [1, 37, 242]), (2, [1, 141, 240, 242]), (2, [23, 240, 242]), (1, [232, 240, 240]), (1, [234, 242, 242])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 286. -/
def C2_F_M_I_F : Poly := [(2, [0, 240, 248]), (2, [1, 35]), (2, [1, 141, 242]), (2, [23, 242]), (2, [232, 240])]
theorem derivative_F_M_I_F :
    normalize (deriv 240 U2_F_M_I) = normalize C2_F_M_I_F := by decide +kernel
theorem original_sign_mismatch_F_M_I_F :
    normalize ([(2, [4])] ++ negate (deriv 240 U2_F_M_I)) ≠
      normalize ([(2, [4])] ++ C2_F_M_I_F) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 287. -/
def C2_F_M_I_I : Poly := [(2, [0, 242, 250]), (2, [1, 37]), (2, [1, 141, 240]), (2, [23, 240]), (2, [234, 242])]
theorem derivative_F_M_I_I :
    normalize (deriv 242 U2_F_M_I) = normalize C2_F_M_I_I := by decide +kernel
theorem original_sign_mismatch_F_M_I_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_F_M_I)) ≠
      normalize ([(2, [6])] ++ C2_F_M_I_I) := by decide +kernel

end EFMWLagrangian
