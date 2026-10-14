# Full audit of the frozen C1 Lagrangian project

Scope: all 165 FieldSpace triplets and every one of their 585 displayed statements, plus a disposition record for all 102 Monolithic entries. The latter is a scope/compatibility inventory, **not** 102 additional full variational derivations.

## Result

| Source statement class | Count | Literal result | Candidate result |
|---|---:|---|---|
| Scalar | 360 | Potential signs differ under the frozen signature | All 360 derivative magnitudes agree after declared coefficient/curvature identifications |
| Gauge with neutral-scalar current | 88 | The prescribed current is not generated | Replace with the gauge equation actually varied from C1 |
| Gauge without a scalar current | 2 | External and mixed current symbols are unresolved | C1 specifies source-free equations |
| Gravitational | 45 | Mixed stress and potential identification are underdefined | Full nonminimal/mixed stress derived analytically and stated explicitly |
| Bianchi identity | 90 | Source indices are malformed | Identity after explicit index normalization |
| **Total** | **585** | **No claim of full literal equivalence** | Every statement classified |

“Different” means nonidentical formal equations for generic symbolic coefficients. At specially chosen zero coefficients some equations can coincide; that does not prove general source equivalence.

## Checks, declared before classification

| Operation | Input → transformation → output | Pass/fail rule | Result |
|---|---|---|---|
| Source lock | UTF-8 blobs → Git blob SHA-1 and SHA-256 → manifest | Match retrieved source blob exactly | Pass |
| Coverage | Source lines → fail-closed parse → indexed statements | Exactly all distinct 11-choose-3 blocks, 585 statements, no unknown line | Pass |
| Scalar variation | Independently generated action → exact rational differentiation → polynomial | Equality with independently parsed source magnitude under declared repairs | 360/360 pass |
| Literal scalar signs | box-C versus box+C → canonical formal polynomials | Equality without a sign repair | 360 mismatches retained |
| Reciprocity | Mixed partials of the common potential | Forward/reverse couplings share one coefficient | Pass for C1; assumptions recorded for original aliases |
| Gauge sources | Original current terms versus varied constitutive equation | Same defined invariant dynamics | 88 fail; 2 unresolved |
| Gravitational stress | Metric variation of U(R,X,Y,phi) | Include curvature derivative and gauge-stress contributions | Analytic derivation supplied; source placeholder identification remains conditional |
| Bianchi normalization | Source index strings → explicit dF=0/dH=0 | No claim malformed indices were already valid | 90 declared repairs |
| Dimensions | Every potential monomial → mass-dimension sum | Every action term has dimension four | Pass in canonical natural units |
| Known limit | Couplings/extra fields removed | Einstein–Maxwell plus optional free scalars | Analytic reduction and algebraic zero-interaction check |
| Formal certificates | Generated finite polynomials → Lean kernel | Build, axiom guard, compiled-environment recheck and deliberate-failure tests | See verified logs |
| Physical validation | Candidate predictions → independent measurements | Prespecified empirical comparison | Not performed / not established |

These are literal audit operations. No animal name has been assigned an invented operation. The audit follows the EFMW Zoo requirements of frozen inputs, explicit criteria, anti-circularity, known-result comparison and separate evidence statuses.

## Original master-action defects

The historical note is preserved untouched. The following findings explain why copying its formulas would not have been a complete derivation:

1. Its (-+++) kinetic/potential action gives box(phi)-m^2*phi-...=0, while its displayed scalar equations use plus signs.
2. Terms such as R*phi_a*phi_b, X*phi_a*phi_b and phi_a*X*Y, required by catalogue scalar patterns, are absent from its written interaction action. C1 supplies these explicitly as new candidate terms.
3. Its gamma term uses phi^2*grad(phi), whereas the catalogue current uses phi*grad(phi). It breaks the assumed U(1) invariance and also changes the scalar equation. It is excluded from C1.
4. With Xi defined as +(delta S_int/delta A)/sqrt(-g), the Maxwell variation is div(F)=-Xi before any separately defined matter-current sign convention. The note's displayed plus-Xi equation does not follow from that definition. C1 avoids the ambiguous symbol by writing the constitutive equation explicitly.
5. Nonminimal scalar-curvature terms contribute xi*[phi^2*G_munu+(g_munu*box-nabla_mu*nabla_nu)phi^2] to the effective stress. Merely calling the scalar stress “canonical” omits this unless it is explicitly reassigned.
6. On-shell stress conservation is tied to diffeomorphism invariance and all relevant equations of motion. It is not contingent solely on U(1) invariance.
7. A restriction defined by deleting couplings is not automatically a consistent dynamical truncation of the unrestricted model.

## Anti-circularity and independence

- The historical source is immutable and hashed. It is not rewritten to make a result pass.
- The action generator does not derive its potential by integrating the parsed source. It uses the frozen pair/triple rule independently.
- Scalar parsing and differentiation are separate modules. Unknown source tokens stop the audit.
- Coefficient identifications and the source-sign repair are visible assumptions, never counted as findings from the data.
- No coefficient fit, sampled field value or success-selected example is used for the exhaustive polynomial equality test.
- Python and Lean implement finite differentiation separately, but share the emitted formalization boundary and standard mathematical rule. This is implementation diversity, not independent physical evidence.
- Generic stability fails for some allowed coefficients. That negative result is retained.

## Machine-readable evidence

- `equations.json` / `equations.csv`: every displayed statement, raw text, line, classification, candidate counterpart.
- `scalar_derivations.json`: all 360 potentials, derivatives and exact differences.
- `triplets.json`: all 165 restricted potentials and equation membership.
- `coupling_identifications.json`: directional lambda aliases and imposed equalities.
- `coupling_dimensions.csv`: all 220 pair/triple coefficient dimensions.
- `monolithic_scope.json` / `.csv`: all 102 Monolithic entries, exclusions and reasons.
- `lean_certificate_index.json`: all 720 scalar theorem names, grouped by 360 source statements.
- `source_manifest.json`: exact source identities and hashes.
- `../verification/`: build, test, axiom and recheck evidence.

## Evidence-separated conclusion

**Demonstrated:** complete finite catalogue coverage; exact scalar polynomial identities under the frozen assumptions; formal nonidentity of original scalar signs; successful Lean certificate verification as recorded in the build log.

**Supported but incomplete:** the analytic continuum variations of the declared action; source-to-certificate correspondence backed by reproducible parsing and mutation tests, but not itself formalized.

**Rejected:** the general claim that the historical full catalogue already follows unchanged from this candidate or its earlier master-action note.

**Hypothesis / unresolved:** physical field interpretation, a full recursive/rotational source model, general stable dynamics, and correspondence with measurements.
