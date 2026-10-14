# From finite certificates to a scalar continuum equation

The `continuum/` subproject adds a real-analysis interpretation to the frozen C1 polynomial certificates. It keeps the candidate, its conventions, the original source files, and the original certificate generator unchanged. It pins Lean 4.28.0 and Mathlib commit `8f9d9cff6bd728b17a24e163c9402775d9e6a365` (v4.28.0), with all transitive dependency revisions recorded in its own Lake manifest.

## Exact theorem chain

| Theorem or family | Established statement |
|---|---|
| `normalize_sound` | The existing list-polynomial normalizer preserves evaluation for every polynomial and every assignment of real values to its atoms. |
| `realValue_hasDerivAt` | The existing formal derivative computes the actual ordinary real derivative when one atom varies and the other atoms are held fixed. |
| `certified_potential_hasDerivAt` | Each old normalized equality can be transported to a derivative of the original real-valued potential; division by two restores the undoubled C1 normalization. |
| 360 `real_derivative_*` instances | Every original scalar magnitude certificate is connected to that real derivative theorem, with its original source line and atom index. |
| `densityAlong_hasDerivAt` | Differentiating the canonical scalar Lagrangian density gives the kinetic variation minus the certified potential derivative times the test field. |
| `partial_variation`, `actionAlong_eq_varied_action` | The varied jets equal the genuine spacetime derivatives of the varied scalar field under the stated differentiability conditions. |
| `firstVariation_eq_residual` | Integration by parts yields the Minkowski scalar Euler–Lagrange residual, under explicit differentiability and integrability conditions. |
| `actionAlong_hasDerivAt` and 360 `action_derivative_*` instances | Dominated differentiation under the integral proves the derivative of the real action equals the integral of that residual times the test field. |
| `stationary_action_implies_scalar_equation` | Stationarity for every smooth compactly supported admissible test field implies the scalar equation almost everywhere. |
| `continuous_residual_eq_zero` | A continuous residual that vanishes almost everywhere vanishes at every spacetime point. |

These are exact symbolic and analytic statements, not numerical samples. The generated instance index is `continuum/certificate_index.json`. The new generator uses the old certificate names as theorem inputs; it does not manufacture new finite identities or change the frozen parser.

## Scalar equation and sign

Spacetime is `Fin 4 → ℝ` with Lebesgue measure. The signature weights are `(-1,+1,+1,+1)`. For a particular scalar atom `v`, set `phi(x) = values(x)(v)` and let `q` be its original doubled source-magnitude polynomial. The proved first variation has the form

$$\left.\frac{d}{d\epsilon}S[\phi+\epsilon\eta]\right|_{\epsilon=0}
=\int_{\mathbb R^4}\left(\Box\phi-\tfrac12\operatorname{realValue}(q)\right)\eta\,d^4x.$$

Thus stationarity yields the C1 **minus-sign** equation. It does not validate the historical catalogue's generic plus-sign equation. Formal nonidentity of two polynomials also does not mean their real values differ at every assignment; special assignments can make a discrepancy vanish.

The formalized action is the selected scalar's kinetic term plus the restricted C1 potential, with all other fields and coefficient atoms held fixed during this variation. Other fixed-sector contributions to a full action are independent of this variation. Coefficient atoms may be assigned any real values; C1's spacetime-constant couplings are a specialization. On actual Minkowski geometry the Ricci-scalar atom must be assigned zero. Arbitrary externally prescribed coefficient/background functions in the general theorem do not constitute a dynamical metric or gauge-field theorem.

## Analytic hypotheses are part of the result

`IBPConditions` explicitly requires differentiability of the scalar and test field, differentiability of each first partial derivative of the scalar, and integrability of the products used in integration by parts and of the potential-force/test product. Integration by parts is proved using Mathlib's theorem for genuine Fréchet derivatives; it is not inserted as an axiom or assumed identity.

`DominatedVariation` explicitly requires a neighborhood of zero variation, measurability, an integrable unperturbed density, and an integrable uniform Lipschitz bound on the varied density. These conditions justify exchanging differentiation and integration. They are sufficient conditions on a finite-action class, not a claim that every background or arbitrary field configuration satisfies them. In particular, infinite-volume backgrounds may require a different relative-action formulation.

The stationarity theorem additionally requires a locally integrable residual, admissibility for every smooth compactly supported test field, and actual zero action derivative for those tests. Stationarity is the variational premise; the scalar PDE is the conclusion. Continuity of the residual is the additional condition for the pointwise upgrade. The project does not yet automatically discharge all these analytic hypotheses from a convenient field-space definition.

## What remains outside this bridge

- Curved Lorentzian manifolds, covariant integration by parts, and varying the volume element.
- Full gauge functional variation, the metric variation, and Einstein–Hilbert boundary terms.
- A general proof of Bianchi/Noether identities for the complete coupled model.
- Existence, uniqueness, hyperbolicity, causal stability, and global energy bounds for solutions.
- A theorem that a restricted triplet is a consistent truncation of the unrestricted theory.
- Formal verification of the historical text parser and of the physical meaning assigned to its symbols.
- Empirical identification of the fields, rotational source P, or validation of EFMW as physics.

The existing cubic-instability counterexample remains valid. This bridge proves a conditional scalar variational implication and does not repair that instability or establish new physical laws.

## Reproduce and inspect

Run the original verifier first, then the separate bridge:

```sh
python3 scripts/verify.py --clean
python3 continuum/generate.py
cd continuum
lake exe cache get
lake build
lake env lean Audit.lean
python3 recheck.py
python3 negative_checks.py
```

The [continuum workflow](../.github/workflows/continuum.yml) uses the standard upstream launcher on GitHub-hosted Ubuntu. It verifies the C1 lock, checks deterministic regeneration, builds the new proofs, audits all their transitive axioms, rechecks compiled bridge modules, and runs rejection tests. Only `propext`, `Classical.choice`, and `Quot.sound` are allowed as transitive axioms. Custom axioms, `sorryAx`, and native reduction oracles must be rejected.

Mathlib's upstream compiled dependency cache is used for build practicality. `recheck.py` invokes the standard `leanchecker` separately for every bridge module with declarations and verifies that the root contains only imports. Sequential processes bound memory use: the namespace-wide checker launches all modules concurrently and exhausted the local 8 GiB limit. `leanchecker` replays the project's bridge modules against their imported environment; it is not a different proof kernel and does not re-prove every imported Mathlib module from scratch. The original finite workflow remains separate. CI logs identify the exact checked-out commit and are retained as artifacts for 90 days.
