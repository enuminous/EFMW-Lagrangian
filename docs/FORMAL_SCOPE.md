# What Lean proves, and what it does not

The package uses **Lean 4.28.0**, `Std`, and no Mathlib or external Lean dependencies.

## Certificate surface

For each of the **360 source scalar statements**, two explicit theorems are generated:

1. `derivative_<triplet>_<scalar>`: exact equality between the derivative of the independently generated, doubled restricted potential and the doubled parsed source magnitude, after the declared coefficient and curvature identifications.
2. `original_sign_mismatch_<triplet>_<scalar>`: the formal polynomials for the source equation and candidate equation differ when the source's plus sign is preserved.

There are **720 scalar certificates**, plus the explicitly named support theorems in Core.lean. Lean also generates equation lemmas for definitions. The larger theorem-declaration count in the transitive axiom log includes those generated lemmas; it is not a count of independent physical discoveries.

`audit/lean_certificate_index.json` maps each certificate to its exact source line and generated module. `audit/lean_atom_map.json` maps every atom number to its name. Coefficient symbols are formal independent atoms. Differentiation acts only on the designated scalar atom. Doubling removes rational denominators without changing equality or sign-mismatch tests.

## Trust boundary

The proof checker verifies the emitted finite polynomial propositions. The Python parser and the correspondence from source strings to those propositions are **not formalized in Lean**. Exact source-blob checks, independent action generation, deterministic regeneration, mutation tests, and line-level records make that boundary auditable. They do not erase it.

The formal polynomial derivative is defined by the usual monomial power rule. The current Lean layer checks concrete results of that algorithm; it does not prove a general bridge from this syntax to real differentiability. It also does not prove the complete polynomial-normalizer semantics over every ring. The normalized equality and mismatch objects are directly kernel-reduced finite integer/list data.

The root scalar algebra, sign incompatibility, reciprocal monomial examples and finite catalogue counts have support theorems. These are narrowly stated. A theorem about integer source algebra is not a theorem about solutions of a real spacetime PDE.

## Not currently formalized

- Smooth Lorentzian manifolds, tensor bundles, field spaces or functional derivatives.
- Integration by parts, compact-support boundary lemmas or Einstein–Hilbert variation.
- The curved-space Bianchi identity, Noether's theorem, or nonlinear hyperbolicity.
- Global energy positivity, existence/uniqueness of solutions, renormalization or quantum gravity.
- Physical meanings of field labels, rotational source P, observer dynamics or experimental validity.

Those obligations are recorded in PHYSICAL_OBLIGATIONS.md. The scalar finite certificates cannot be used as evidence that these independent obligations have passed.

## Axiom and corruption checks

Audit.lean traverses all safe declarations in the `EFMWLagrangian` namespace, including private declarations. Only Lean's standard `propext`, `Classical.choice` and `Quot.sound` are permitted as transitive axioms. Custom axioms, `sorryAx` and native reduction oracles are rejected.

The adversarial guard tests insert a public axiom, a private axiom, a placeholder proof and a native proof. Each must fail for the expected axiom. A deliberately false polynomial derivative must also fail kernel checking. The independent `leanchecker` executable rechecks the compiled environment; its exit status and verbose log are retained.

## Build environment

The standard Lean launcher in the authoring environment could not read its executable path through a numbered `/proc/<pid>/exe` path. A small launcher called the upstream Lean initialization, explicit search-path, option-processing and frontend APIs, using the existing **unmodified** Lean 4.28.0 kernel/runtime/standard-library binaries. It avoided executable autodetection; it did not change proof rules or access controls.

The optional launcher source and instructions are in `tools/`. The GitHub workflow and normal reproducibility command use ordinary `lake` and do not require it. The successful authoring build records this distinction in `verification/build_status.json`.
