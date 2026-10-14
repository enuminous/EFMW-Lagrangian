import EFMWLagrangian.Core

set_option maxRecDepth 20000
set_option maxHeartbeats 0
namespace EFMWLagrangian

/-- Twice the restricted C1 potential for F_M_R. -/
def U2_F_M_R : Poly := [(1, [0, 240, 240, 248]), (1, [0, 244, 244, 252]), (2, [1, 35, 240]), (2, [1, 39, 244]), (2, [1, 143, 240, 244]), (2, [25, 240, 244]), (1, [232, 240, 240]), (1, [236, 244, 244])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 293. -/
def C2_F_M_R_F : Poly := [(2, [0, 240, 248]), (2, [1, 35]), (2, [1, 143, 244]), (2, [25, 244]), (2, [232, 240])]
theorem derivative_F_M_R_F :
    normalize (deriv 240 U2_F_M_R) = normalize C2_F_M_R_F := by decide +kernel
theorem original_sign_mismatch_F_M_R_F :
    normalize ([(2, [4])] ++ negate (deriv 240 U2_F_M_R)) ≠
      normalize ([(2, [4])] ++ C2_F_M_R_F) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 294. -/
def C2_F_M_R_R : Poly := [(2, [0, 244, 252]), (2, [1, 39]), (2, [1, 143, 240]), (2, [25, 240]), (2, [236, 244])]
theorem derivative_F_M_R_R :
    normalize (deriv 244 U2_F_M_R) = normalize C2_F_M_R_R := by decide +kernel
theorem original_sign_mismatch_F_M_R_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_F_M_R)) ≠
      normalize ([(2, [8])] ++ C2_F_M_R_R) := by decide +kernel

/-- Twice the restricted C1 potential for F_M_S. -/
def U2_F_M_S : Poly := [(1, [0, 240, 240, 248]), (2, [1, 2, 40]), (2, [1, 2, 157, 240]), (2, [1, 35, 240]), (2, [2, 48, 240]), (1, [232, 240, 240])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 303. -/
def C2_F_M_S_F : Poly := [(2, [0, 240, 248]), (2, [1, 2, 157]), (2, [1, 35]), (2, [2, 48]), (2, [232, 240])]
theorem derivative_F_M_S_F :
    normalize (deriv 240 U2_F_M_S) = normalize C2_F_M_S_F := by decide +kernel
theorem original_sign_mismatch_F_M_S_F :
    normalize ([(2, [4])] ++ negate (deriv 240 U2_F_M_S)) ≠
      normalize ([(2, [4])] ++ C2_F_M_S_F) := by decide +kernel

/-- Twice the restricted C1 potential for F_M_H. -/
def U2_F_M_H : Poly := [(1, [0, 240, 240, 248]), (1, [0, 241, 241, 249]), (2, [1, 35, 240]), (2, [1, 36, 241]), (2, [1, 140, 240, 241]), (2, [22, 240, 241]), (1, [232, 240, 240]), (1, [233, 241, 241])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 309. -/
def C2_F_M_H_F : Poly := [(2, [0, 240, 248]), (2, [1, 35]), (2, [1, 140, 241]), (2, [22, 241]), (2, [232, 240])]
theorem derivative_F_M_H_F :
    normalize (deriv 240 U2_F_M_H) = normalize C2_F_M_H_F := by decide +kernel
theorem original_sign_mismatch_F_M_H_F :
    normalize ([(2, [4])] ++ negate (deriv 240 U2_F_M_H)) ≠
      normalize ([(2, [4])] ++ C2_F_M_H_F) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 310. -/
def C2_F_M_H_H : Poly := [(2, [0, 241, 249]), (2, [1, 36]), (2, [1, 140, 240]), (2, [22, 240]), (2, [233, 241])]
theorem derivative_F_M_H_H :
    normalize (deriv 241 U2_F_M_H) = normalize C2_F_M_H_H := by decide +kernel
theorem original_sign_mismatch_F_M_H_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_F_M_H)) ≠
      normalize ([(2, [5])] ++ C2_F_M_H_H) := by decide +kernel

/-- Twice the restricted C1 potential for F_M_P. -/
def U2_F_M_P : Poly := [(1, [0, 240, 240, 248]), (1, [0, 243, 243, 251]), (2, [1, 35, 240]), (2, [1, 38, 243]), (2, [1, 142, 240, 243]), (2, [24, 240, 243]), (1, [232, 240, 240]), (1, [235, 243, 243])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 316. -/
def C2_F_M_P_F : Poly := [(2, [0, 240, 248]), (2, [1, 35]), (2, [1, 142, 243]), (2, [24, 243]), (2, [232, 240])]
theorem derivative_F_M_P_F :
    normalize (deriv 240 U2_F_M_P) = normalize C2_F_M_P_F := by decide +kernel
theorem original_sign_mismatch_F_M_P_F :
    normalize ([(2, [4])] ++ negate (deriv 240 U2_F_M_P)) ≠
      normalize ([(2, [4])] ++ C2_F_M_P_F) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 317. -/
def C2_F_M_P_P : Poly := [(2, [0, 243, 251]), (2, [1, 38]), (2, [1, 142, 240]), (2, [24, 240]), (2, [235, 243])]
theorem derivative_F_M_P_P :
    normalize (deriv 243 U2_F_M_P) = normalize C2_F_M_P_P := by decide +kernel
theorem original_sign_mismatch_F_M_P_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_F_M_P)) ≠
      normalize ([(2, [7])] ++ C2_F_M_P_P) := by decide +kernel

/-- Twice the restricted C1 potential for F_M_A. -/
def U2_F_M_A : Poly := [(1, [0, 239, 239, 247]), (1, [0, 240, 240, 248]), (2, [1, 34, 239]), (2, [1, 35, 240]), (2, [1, 139, 239, 240]), (2, [21, 239, 240]), (1, [231, 239, 239]), (1, [232, 240, 240])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 323. -/
def C2_F_M_A_F : Poly := [(2, [0, 240, 248]), (2, [1, 35]), (2, [1, 139, 239]), (2, [21, 239]), (2, [232, 240])]
theorem derivative_F_M_A_F :
    normalize (deriv 240 U2_F_M_A) = normalize C2_F_M_A_F := by decide +kernel
theorem original_sign_mismatch_F_M_A_F :
    normalize ([(2, [4])] ++ negate (deriv 240 U2_F_M_A)) ≠
      normalize ([(2, [4])] ++ C2_F_M_A_F) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 324. -/
def C2_F_M_A_A : Poly := [(2, [0, 239, 247]), (2, [1, 34]), (2, [1, 139, 240]), (2, [21, 240]), (2, [231, 239])]
theorem derivative_F_M_A_A :
    normalize (deriv 239 U2_F_M_A) = normalize C2_F_M_A_A := by decide +kernel
theorem original_sign_mismatch_F_M_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_F_M_A)) ≠
      normalize ([(2, [3])] ++ C2_F_M_A_A) := by decide +kernel

/-- Twice the restricted C1 potential for F_W_T. -/
def U2_F_W_T : Poly := [(1, [0, 240, 240, 248]), (1, [0, 245, 245, 253]), (1, [0, 246, 246, 254]), (2, [26, 240, 245]), (2, [27, 240, 246]), (2, [65, 245, 246]), (2, [131, 240, 245, 246]), (1, [232, 240, 240]), (1, [237, 245, 245]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 327. -/
def C2_F_W_T_F : Poly := [(2, [0, 240, 248]), (2, [26, 245]), (2, [27, 246]), (2, [131, 245, 246]), (2, [232, 240])]
theorem derivative_F_W_T_F :
    normalize (deriv 240 U2_F_W_T) = normalize C2_F_W_T_F := by decide +kernel
theorem original_sign_mismatch_F_W_T_F :
    normalize ([(2, [4])] ++ negate (deriv 240 U2_F_W_T)) ≠
      normalize ([(2, [4])] ++ C2_F_W_T_F) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 328. -/
def C2_F_W_T_W : Poly := [(2, [0, 246, 254]), (2, [27, 240]), (2, [65, 245]), (2, [131, 240, 245]), (2, [238, 246])]
theorem derivative_F_W_T_W :
    normalize (deriv 246 U2_F_W_T) = normalize C2_F_W_T_W := by decide +kernel
theorem original_sign_mismatch_F_W_T_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_F_W_T)) ≠
      normalize ([(2, [10])] ++ C2_F_W_T_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 329. -/
def C2_F_W_T_T : Poly := [(2, [0, 245, 253]), (2, [26, 240]), (2, [65, 246]), (2, [131, 240, 246]), (2, [237, 245])]
theorem derivative_F_W_T_T :
    normalize (deriv 245 U2_F_W_T) = normalize C2_F_W_T_T := by decide +kernel
theorem original_sign_mismatch_F_W_T_T :
    normalize ([(2, [9])] ++ negate (deriv 245 U2_F_W_T)) ≠
      normalize ([(2, [9])] ++ C2_F_W_T_T) := by decide +kernel

/-- Twice the restricted C1 potential for F_W_I. -/
def U2_F_W_I : Poly := [(1, [0, 240, 240, 248]), (1, [0, 242, 242, 250]), (1, [0, 246, 246, 254]), (2, [23, 240, 242]), (2, [27, 240, 246]), (2, [62, 242, 246]), (2, [128, 240, 242, 246]), (1, [232, 240, 240]), (1, [234, 242, 242]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 332. -/
def C2_F_W_I_F : Poly := [(2, [0, 240, 248]), (2, [23, 242]), (2, [27, 246]), (2, [128, 242, 246]), (2, [232, 240])]
theorem derivative_F_W_I_F :
    normalize (deriv 240 U2_F_W_I) = normalize C2_F_W_I_F := by decide +kernel
theorem original_sign_mismatch_F_W_I_F :
    normalize ([(2, [4])] ++ negate (deriv 240 U2_F_W_I)) ≠
      normalize ([(2, [4])] ++ C2_F_W_I_F) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 333. -/
def C2_F_W_I_W : Poly := [(2, [0, 246, 254]), (2, [27, 240]), (2, [62, 242]), (2, [128, 240, 242]), (2, [238, 246])]
theorem derivative_F_W_I_W :
    normalize (deriv 246 U2_F_W_I) = normalize C2_F_W_I_W := by decide +kernel
theorem original_sign_mismatch_F_W_I_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_F_W_I)) ≠
      normalize ([(2, [10])] ++ C2_F_W_I_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 334. -/
def C2_F_W_I_I : Poly := [(2, [0, 242, 250]), (2, [23, 240]), (2, [62, 246]), (2, [128, 240, 246]), (2, [234, 242])]
theorem derivative_F_W_I_I :
    normalize (deriv 242 U2_F_W_I) = normalize C2_F_W_I_I := by decide +kernel
theorem original_sign_mismatch_F_W_I_I :
    normalize ([(2, [6])] ++ negate (deriv 242 U2_F_W_I)) ≠
      normalize ([(2, [6])] ++ C2_F_W_I_I) := by decide +kernel

/-- Twice the restricted C1 potential for F_W_R. -/
def U2_F_W_R : Poly := [(1, [0, 240, 240, 248]), (1, [0, 244, 244, 252]), (1, [0, 246, 246, 254]), (2, [25, 240, 244]), (2, [27, 240, 246]), (2, [64, 244, 246]), (2, [130, 240, 244, 246]), (1, [232, 240, 240]), (1, [236, 244, 244]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 337. -/
def C2_F_W_R_F : Poly := [(2, [0, 240, 248]), (2, [25, 244]), (2, [27, 246]), (2, [130, 244, 246]), (2, [232, 240])]
theorem derivative_F_W_R_F :
    normalize (deriv 240 U2_F_W_R) = normalize C2_F_W_R_F := by decide +kernel
theorem original_sign_mismatch_F_W_R_F :
    normalize ([(2, [4])] ++ negate (deriv 240 U2_F_W_R)) ≠
      normalize ([(2, [4])] ++ C2_F_W_R_F) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 338. -/
def C2_F_W_R_W : Poly := [(2, [0, 246, 254]), (2, [27, 240]), (2, [64, 244]), (2, [130, 240, 244]), (2, [238, 246])]
theorem derivative_F_W_R_W :
    normalize (deriv 246 U2_F_W_R) = normalize C2_F_W_R_W := by decide +kernel
theorem original_sign_mismatch_F_W_R_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_F_W_R)) ≠
      normalize ([(2, [10])] ++ C2_F_W_R_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 339. -/
def C2_F_W_R_R : Poly := [(2, [0, 244, 252]), (2, [25, 240]), (2, [64, 246]), (2, [130, 240, 246]), (2, [236, 244])]
theorem derivative_F_W_R_R :
    normalize (deriv 244 U2_F_W_R) = normalize C2_F_W_R_R := by decide +kernel
theorem original_sign_mismatch_F_W_R_R :
    normalize ([(2, [8])] ++ negate (deriv 244 U2_F_W_R)) ≠
      normalize ([(2, [8])] ++ C2_F_W_R_R) := by decide +kernel

/-- Twice the restricted C1 potential for F_W_S. -/
def U2_F_W_S : Poly := [(1, [0, 240, 240, 248]), (1, [0, 246, 246, 254]), (2, [2, 48, 240]), (2, [2, 54, 246]), (2, [2, 184, 240, 246]), (2, [27, 240, 246]), (1, [232, 240, 240]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 345. -/
def C2_F_W_S_F : Poly := [(2, [0, 240, 248]), (2, [2, 48]), (2, [2, 184, 246]), (2, [27, 246]), (2, [232, 240])]
theorem derivative_F_W_S_F :
    normalize (deriv 240 U2_F_W_S) = normalize C2_F_W_S_F := by decide +kernel
theorem original_sign_mismatch_F_W_S_F :
    normalize ([(2, [4])] ++ negate (deriv 240 U2_F_W_S)) ≠
      normalize ([(2, [4])] ++ C2_F_W_S_F) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 346. -/
def C2_F_W_S_W : Poly := [(2, [0, 246, 254]), (2, [2, 54]), (2, [2, 184, 240]), (2, [27, 240]), (2, [238, 246])]
theorem derivative_F_W_S_W :
    normalize (deriv 246 U2_F_W_S) = normalize C2_F_W_S_W := by decide +kernel
theorem original_sign_mismatch_F_W_S_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_F_W_S)) ≠
      normalize ([(2, [10])] ++ C2_F_W_S_W) := by decide +kernel

/-- Twice the restricted C1 potential for F_W_H. -/
def U2_F_W_H : Poly := [(1, [0, 240, 240, 248]), (1, [0, 241, 241, 249]), (1, [0, 246, 246, 254]), (2, [22, 240, 241]), (2, [27, 240, 246]), (2, [61, 241, 246]), (2, [127, 240, 241, 246]), (1, [232, 240, 240]), (1, [233, 241, 241]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 349. -/
def C2_F_W_H_F : Poly := [(2, [0, 240, 248]), (2, [22, 241]), (2, [27, 246]), (2, [127, 241, 246]), (2, [232, 240])]
theorem derivative_F_W_H_F :
    normalize (deriv 240 U2_F_W_H) = normalize C2_F_W_H_F := by decide +kernel
theorem original_sign_mismatch_F_W_H_F :
    normalize ([(2, [4])] ++ negate (deriv 240 U2_F_W_H)) ≠
      normalize ([(2, [4])] ++ C2_F_W_H_F) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 350. -/
def C2_F_W_H_W : Poly := [(2, [0, 246, 254]), (2, [27, 240]), (2, [61, 241]), (2, [127, 240, 241]), (2, [238, 246])]
theorem derivative_F_W_H_W :
    normalize (deriv 246 U2_F_W_H) = normalize C2_F_W_H_W := by decide +kernel
theorem original_sign_mismatch_F_W_H_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_F_W_H)) ≠
      normalize ([(2, [10])] ++ C2_F_W_H_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 351. -/
def C2_F_W_H_H : Poly := [(2, [0, 241, 249]), (2, [22, 240]), (2, [61, 246]), (2, [127, 240, 246]), (2, [233, 241])]
theorem derivative_F_W_H_H :
    normalize (deriv 241 U2_F_W_H) = normalize C2_F_W_H_H := by decide +kernel
theorem original_sign_mismatch_F_W_H_H :
    normalize ([(2, [5])] ++ negate (deriv 241 U2_F_W_H)) ≠
      normalize ([(2, [5])] ++ C2_F_W_H_H) := by decide +kernel

/-- Twice the restricted C1 potential for F_W_P. -/
def U2_F_W_P : Poly := [(1, [0, 240, 240, 248]), (1, [0, 243, 243, 251]), (1, [0, 246, 246, 254]), (2, [24, 240, 243]), (2, [27, 240, 246]), (2, [63, 243, 246]), (2, [129, 240, 243, 246]), (1, [232, 240, 240]), (1, [235, 243, 243]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 354. -/
def C2_F_W_P_F : Poly := [(2, [0, 240, 248]), (2, [24, 243]), (2, [27, 246]), (2, [129, 243, 246]), (2, [232, 240])]
theorem derivative_F_W_P_F :
    normalize (deriv 240 U2_F_W_P) = normalize C2_F_W_P_F := by decide +kernel
theorem original_sign_mismatch_F_W_P_F :
    normalize ([(2, [4])] ++ negate (deriv 240 U2_F_W_P)) ≠
      normalize ([(2, [4])] ++ C2_F_W_P_F) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 355. -/
def C2_F_W_P_W : Poly := [(2, [0, 246, 254]), (2, [27, 240]), (2, [63, 243]), (2, [129, 240, 243]), (2, [238, 246])]
theorem derivative_F_W_P_W :
    normalize (deriv 246 U2_F_W_P) = normalize C2_F_W_P_W := by decide +kernel
theorem original_sign_mismatch_F_W_P_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_F_W_P)) ≠
      normalize ([(2, [10])] ++ C2_F_W_P_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 356. -/
def C2_F_W_P_P : Poly := [(2, [0, 243, 251]), (2, [24, 240]), (2, [63, 246]), (2, [129, 240, 246]), (2, [235, 243])]
theorem derivative_F_W_P_P :
    normalize (deriv 243 U2_F_W_P) = normalize C2_F_W_P_P := by decide +kernel
theorem original_sign_mismatch_F_W_P_P :
    normalize ([(2, [7])] ++ negate (deriv 243 U2_F_W_P)) ≠
      normalize ([(2, [7])] ++ C2_F_W_P_P) := by decide +kernel

/-- Twice the restricted C1 potential for F_W_A. -/
def U2_F_W_A : Poly := [(1, [0, 239, 239, 247]), (1, [0, 240, 240, 248]), (1, [0, 246, 246, 254]), (2, [21, 239, 240]), (2, [27, 240, 246]), (2, [60, 239, 246]), (2, [126, 239, 240, 246]), (1, [231, 239, 239]), (1, [232, 240, 240]), (1, [238, 246, 246])]
/-- Parsed source magnitude after the declared reciprocal-coupling map; line 359. -/
def C2_F_W_A_F : Poly := [(2, [0, 240, 248]), (2, [21, 239]), (2, [27, 246]), (2, [126, 239, 246]), (2, [232, 240])]
theorem derivative_F_W_A_F :
    normalize (deriv 240 U2_F_W_A) = normalize C2_F_W_A_F := by decide +kernel
theorem original_sign_mismatch_F_W_A_F :
    normalize ([(2, [4])] ++ negate (deriv 240 U2_F_W_A)) ≠
      normalize ([(2, [4])] ++ C2_F_W_A_F) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 360. -/
def C2_F_W_A_W : Poly := [(2, [0, 246, 254]), (2, [27, 240]), (2, [60, 239]), (2, [126, 239, 240]), (2, [238, 246])]
theorem derivative_F_W_A_W :
    normalize (deriv 246 U2_F_W_A) = normalize C2_F_W_A_W := by decide +kernel
theorem original_sign_mismatch_F_W_A_W :
    normalize ([(2, [10])] ++ negate (deriv 246 U2_F_W_A)) ≠
      normalize ([(2, [10])] ++ C2_F_W_A_W) := by decide +kernel

/-- Parsed source magnitude after the declared reciprocal-coupling map; line 361. -/
def C2_F_W_A_A : Poly := [(2, [0, 239, 247]), (2, [21, 240]), (2, [60, 246]), (2, [126, 240, 246]), (2, [231, 239])]
theorem derivative_F_W_A_A :
    normalize (deriv 239 U2_F_W_A) = normalize C2_F_W_A_A := by decide +kernel
theorem original_sign_mismatch_F_W_A_A :
    normalize ([(2, [3])] ++ negate (deriv 239 U2_F_W_A)) ≠
      normalize ([(2, [3])] ++ C2_F_W_A_A) := by decide +kernel

end EFMWLagrangian
