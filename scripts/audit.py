#!/usr/bin/env python3
"""Regenerate all finite audit evidence and Lean certificate inputs offline."""
from pathlib import Path
from itertools import combinations
from collections import Counter, defaultdict
import csv
import hashlib
import json
import re
import sys

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "src"))
from efmw_audit.catalogue import parse
from efmw_audit.model import VERSION, SECTORS, SCALARS, ordered, potential, interaction_dimension
from efmw_audit.polynomial import atom, add, scale, derivative, serial, display

def dump(path, data):
    (ROOT / path).parent.mkdir(parents=True, exist_ok=True)
    (ROOT / path).write_text(json.dumps(data, indent=2, ensure_ascii=False) + "\n")

def csv_file(path, rows, columns):
    with (ROOT / path).open("w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=columns, extrasaction="ignore")
        writer.writeheader()
        writer.writerows(rows)

def verify_sources():
    refs = json.loads((ROOT / "sources/source_refs.json").read_text())
    for r in refs:
        b = (ROOT / r["path"]).read_bytes()
        blob = hashlib.sha1(b"blob " + str(len(b)).encode() + b"\0" + b).hexdigest()
        if blob != r["git_blob_sha"]:
            raise AssertionError(f"Frozen source changed: {r['path']}")
        r["sha256"] = hashlib.sha256(b).hexdigest()
        r["bytes"] = len(b)
    dump("audit/source_manifest.json", refs)

def lean_poly(p, ids):
    terms = []
    for factors, coefficient in sorted(p.items()):
        if coefficient.denominator != 1:
            raise AssertionError("Lean inputs use doubled potentials with integer coefficients")
        c = coefficient.numerator
        factors = sorted(ids[x] for x in factors)
        terms.append(f"({c if c >= 0 else '('+str(c)+')'}, {factors})")
    return "[" + ", ".join(terms) + "]"

def generate_lean(blocks):
    symbols = set()
    for b in blocks:
        for factors in potential(b["triplet"]):
            symbols.update(factors)
        for e in b["equations"]:
            if e["kind"] == "scalar":
                symbols.add("box_" + e["sector"])
                for factors in e["positive_source"]:
                    symbols.update(factors)
    ids = {name: i for i, name in enumerate(sorted(symbols))}
    dump("audit/lean_atom_map.json", ids)
    chunk_size = 12
    imports = []
    theorem_records = []
    for chunk, start in enumerate(range(0, len(blocks), chunk_size)):
        module = f"EFMWLagrangian.Generated.Chunk{chunk:02}"
        imports.append("import " + module)
        lines = ["import EFMWLagrangian.Core", "", "set_option maxRecDepth 20000",
                 "set_option maxHeartbeats 0", "namespace EFMWLagrangian", ""]
        for b in blocks[start:start+chunk_size]:
            key = "_".join(b["triplet"])
            p2 = scale(potential(b["triplet"]), 2)
            lines += [f"/-- Twice the restricted C1 potential for {key}. -/",
                      f"def U2_{key} : Poly := {lean_poly(p2, ids)}"]
            for e in b["equations"]:
                if e["kind"] != "scalar":
                    continue
                a = e["sector"]
                name = key + "_" + a
                wave2 = lean_poly(scale(atom("box_" + a), 2), ids)
                lines += [f"/-- Parsed source magnitude after the declared reciprocal-coupling map; line {e['line']}. -/",
                          f"def C2_{name} : Poly := {lean_poly(scale(e['positive_source'], 2), ids)}",
                          f"theorem derivative_{name} :",
                          f"    normalize (deriv {ids['phi_'+a]} U2_{key}) = normalize C2_{name} := by decide +kernel",
                          f"theorem original_sign_mismatch_{name} :",
                          f"    normalize ({wave2} ++ negate (deriv {ids['phi_'+a]} U2_{key})) ≠",
                          f"      normalize ({wave2} ++ C2_{name}) := by decide +kernel", ""]
                theorem_records.append({"equation_id":e["id"], "source_line":e["line"],
                                        "match_theorem": "EFMWLagrangian.derivative_"+name,
                                        "mismatch_theorem":"EFMWLagrangian.original_sign_mismatch_"+name,
                                        "module":module})
        lines.append("end EFMWLagrangian\n")
        path = ROOT / (module.replace(".", "/") + ".lean")
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text("\n".join(lines))
    (ROOT / "EFMWLagrangian.lean").write_text("import EFMWLagrangian.Core\n" + "\n".join(imports) + "\n")
    dump("audit/lean_certificate_index.json", theorem_records)

def monolithic_scope():
    text = (ROOT / "sources/Monolithic_CANONICAL_102.md").read_text()
    entries = re.split(r"(?m)^## (?=\d+\.)", text)[1:]
    rows = []
    for entry in entries:
        number = int(entry.split(".", 1)[0])
        heading = entry.splitlines()[0]
        status, reason = "OUT_OF_SCOPE", "A separate definition, computational model, metric, or physical extension; not a C1 Euler-Lagrange equation."
        if number in (2,4,5):
            status, reason = "CONVENTION_OR_DYNAMICS_DIFFERENCE", "ME-002 includes alpha-dependent time dynamics and ME-004 uses (+---); C1 freezes (-+++) and does not silently identify the branches."
        elif number == 3:
            status, reason = "OPERATOR_COMPATIBLE", "Covariant scalar d'Alembertian definition, with C1 signature fixed separately."
        elif number in (6,7,8):
            status, reason = "UNDERDEFINED_TENSOR", "Recursive R_mu_nu is not identified with a variational stress; C1 derives its stress from U."
        elif number in (9,10,12,15):
            status, reason = "COMPONENT_COMPATIBLE", "Action architecture / canonical component matches after a consistent (-+++) convention; not a proof of full source equivalence."
        elif number in (11,13,14):
            status, reason = "ADDITIONAL_MODEL_REQUIRED", "Recursive or semiclassical quantities are not fully specified as C1 fields and couplings."
        elif number in (22,23,24,36,37,69,77,78,79,81,82):
            status, reason = "DISSIPATIVE_OR_DRIVEN_EXTENSION", "Requires separately defined environmental, noise, constitutive, or nonconservative dynamics."
        elif number in (53,54,55,56,57):
            status, reason = "PHYSICAL_IDENTIFICATION_OPEN", "Rotation, matter coupling, or cosmological ansatz is not determined by C1."
        rows.append({"id":f"ME-{number:03}","heading":heading,"status":status,"reason":reason})
    if len(rows) != 102 or {r['id'] for r in rows} != {f'ME-{n:03}' for n in range(1,103)}:
        raise AssertionError("Monolithic scope coverage is not 102/102")
    dump("audit/monolithic_scope.json", rows)
    csv_file("audit/monolithic_scope.csv", rows, ["id","heading","status","reason"])

def run():
    (ROOT / "audit").mkdir(exist_ok=True)
    verify_sources()
    blocks = parse((ROOT / "sources/EFMW_165_field_equations.txt").read_text())
    actual = [ordered(b["triplet"]) for b in blocks]
    expected = list(combinations(SECTORS, 3))
    if len(actual) != len(set(actual)) or set(actual) != set(expected):
        raise AssertionError("Triplet coverage incomplete or duplicated")
    rows, scalar_checks, alias_map = [], [], defaultdict(set)
    block_records = []
    for block in blocks:
        t = block["triplet"]
        u = potential(t)
        key = "-".join(t)
        for eq in block["equations"]:
            eqid = f"FS-{key}-{eq['kind'].upper()}-{eq['sector']}"
            eq["id"] = eqid
            row = {"id":eqid,"triplet":key,"kind":eq["kind"],"sector":eq["sector"],
                   "source_line":eq["line"],"source":eq["raw"], "literal_status":"", "normalized_status":""}
            if eq["kind"] == "scalar":
                generated = derivative(u, "phi_" + eq["sector"])
                if generated != eq["positive_source"]:
                    raise AssertionError(f"Unanticipated normalized scalar mismatch: {eqid}")
                if not generated:
                    raise AssertionError("Vacuous scalar comparison")
                row.update(literal_status="FAIL_SIGN", normalized_status="MATCH_UNDER_DECLARED_REPAIRS",
                           reason="Source has box + C = 0; action gives box - dU/dphi = 0. Magnitudes match only after R-invariant identification and reciprocal coupling map.",
                           candidate_equation="box_"+eq["sector"]+" - ("+display(generated)+") = 0")
                scalar_checks.append({"id":eqid,"source_line":eq["line"],"potential":serial(u),
                                      "actual_derivative":serial(generated),"parsed_source_magnitude":serial(eq["positive_source"]),
                                      "exact_difference":serial(add(generated,scale(eq["positive_source"],-1)))})
                for original, canonical in eq["aliases"]:
                    alias_map[canonical].add(original)
            elif eq["kind"] == "gravity":
                row.update(literal_status="UNDERDEFINED_STRESS", normalized_status="CONDITIONAL_STRESS_IDENTIFICATION",
                           reason="Canonical scalar/gauge structures checked. V, gravitational normalization, and mixed stress require specified identification, including nonminimal curvature stress.",
                           candidate_equation="Mpl^2*(G_munu+Lambda*g_munu) = T0_munu + TU_munu; TU defined by full metric variation.")
            elif eq["kind"] == "gauge":
                bad = any(x["kind"] == "neutral_scalar_current" for x in eq["sources"])
                field, inv = ("F","X") if eq["sector"] == "M" else ("H","Y")
                row.update(literal_status="FAIL_NEUTRAL_SCALAR_CURRENT" if bad else "UNDERDEFINED_CURRENT",
                           normalized_status="REPLACE_WITH_VARIATIONAL_GAUGE_EQUATION",
                           reason="Divergence indices require repair. Neutral real scalar current phi*grad(phi) is not generated by C1." if bad else "Divergence indices and unspecified external/mixed currents prevent a closed equality claim.",
                           candidate_equation=f"nabla_mu[(1+4*({display(derivative(u,inv))}))*{field}^munu]=0 (source-free C1)")
                row["source_terms"] = eq["sources"]
            else:
                field = "F" if eq["sector"] == "M" else "H"
                row.update(literal_status="INDEX_REPAIR_REQUIRED", normalized_status="IDENTITY_AFTER_INDEX_REPAIR",
                           reason="Malformed source indices replaced explicitly by the exterior-derivative Bianchi identity; analytic identity, not a Lean manifold theorem.",
                           candidate_equation=f"nabla_[lambda {field}_munu] = 0")
            rows.append(row)
        block_records.append({"triplet":key,"source_line":block["source_line"],"potential":serial(u),
                              "equation_ids":[e['id'] for e in block['equations']]})
    counts = Counter(row["kind"] for row in rows)
    if counts != {"scalar":360,"gravity":45,"gauge":90,"bianchi":90}:
        raise AssertionError(counts)
    summary = {"candidate":VERSION,"source_triplets":len(blocks),"displayed_statements":len(rows),
               "counts_by_kind":dict(counts),"literal_status_counts":dict(Counter(r['literal_status'] for r in rows)),
               "normalized_status_counts":dict(Counter(r['normalized_status'] for r in rows)),
               "scalar_derivative_checks":len(scalar_checks),"scalar_derivative_magnitude_mismatches":0,
               "sector_incidence":{a:sum(a in t for t in actual) for a in SECTORS},
               "lean_status":"See verification/build_status.json; generation is not a Lean build.",
               "physical_validity":"unestablished","source_equivalence":"not established; literal mismatches retained"}
    dump("audit/summary.json",summary)
    dump("audit/equations.json",rows)
    dump("audit/triplets.json",block_records)
    dump("audit/scalar_derivations.json",scalar_checks)
    dump("audit/coupling_identifications.json",{k:sorted(v) for k,v in sorted(alias_map.items())})
    csv_file("audit/equations.csv",rows,["id","triplet","kind","sector","source_line","literal_status","normalized_status","reason","source","candidate_equation"])
    dimensions=[]
    for k in (2,3):
        for labels in combinations(SECTORS,k):
            dimensions.append({"sectors":"-".join(labels),"coupling_mass_dimension":interaction_dimension(labels)})
    csv_file("audit/coupling_dimensions.csv",dimensions,["sectors","coupling_mass_dimension"])
    monolithic_scope()
    generate_lean(blocks)
    print(json.dumps(summary,indent=2))
    return summary

if __name__ == "__main__":
    run()
