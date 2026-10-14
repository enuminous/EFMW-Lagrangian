"""Fail-closed parser for the frozen catalogue, preserving every source line."""
import ast
import re
from .model import SECTORS, SCALARS, coupling
from .polynomial import atom, add, mul

def parse_scalar(line):
    m = re.fullmatch(r"Scalar ([A-Z]): (.+) = 0", line)
    if not m or m[1] not in SCALARS:
        raise ValueError(f"Unknown scalar syntax: {line}")
    a, expr = m.groups()
    terms = expr.split(" + ")
    if terms.pop(0) != f"□_g φ_{a}":
        raise ValueError(f"Unexpected scalar wave operator: {line}")
    terms_out, aliases = [], []
    for term in terms:
        term = term.replace("F_{αβ}F^{αβ}", "X").replace("S_{αβ}S^{αβ}", "Y")
        factors = []
        for token in term.split():
            if re.fullmatch(r"m_[A-Z]\^2", token):
                symbol = "mass2_" + token[2]
            elif re.fullmatch(r"ξ_[A-Z]", token):
                symbol = "xi_" + token[2]
            elif re.fullmatch(r"φ_[A-Z]", token):
                symbol = "phi_" + token[2]
            elif token.startswith("λ_") and re.fullmatch(r"λ_[A-Z]{2,3}", token):
                symbol = coupling(tuple(token[2:]))
                aliases.append((token, symbol))
            elif token in ("R", "ℜ"):
                symbol = "Rcurv"
            elif token in ("X", "Y"):
                symbol = token
            else:
                raise ValueError(f"Unrecognized factor {token!r} in {line!r}")
            factors.append(atom(symbol))
        terms_out.append(mul(*factors))
    return a, add(*terms_out), aliases

def gravity_template(triplet):
    parts = []
    for a in triplet:
        if a in SCALARS:
            parts.append(f"∂_μ φ_{a} ∂_ν φ_{a} - (1/2) g_μν (∂ φ_{a})^2 - g_μν V(φ_{a})")
        elif a in ("M", "S"):
            f = "F" if a == "M" else "S"
            parts.append(f"{f}_{{μα}} {f}_ν^{{ α}} - (1/4) g_μν {f}_{{αβ}} {f}^{{αβ}}")
    return "GR (Einstein): G_μν + Λ g_μν = κ ( " + " + ".join(parts) + " + T_μν^{(int)} )"

def canonical_indices(s):
    # Only equivalent single/double-index bracing for template comparison.
    return s.replace("_{μν}", "_μν")

def validate_gauge(line, sector):
    f = "F" if sector == "M" else "S"
    prefix = f"∇_μ {f}_{{μν}}^{{μν}} = "
    if not line.startswith(prefix):
        raise ValueError(f"Unknown divergence syntax: {line}")
    items = []
    for term in line[len(prefix):].split(" + "):
        if re.fullmatch(r"κ_[A-Z]{2} J_\{[A-Z]\}\^ν", term):
            items.append({"kind": "external_current", "text": term})
        elif re.fullmatch(r"κ_[A-Z]{2} φ_[A-Z] ∇\^ν φ_[A-Z]", term):
            items.append({"kind": "neutral_scalar_current", "text": term})
        elif re.fullmatch(r"κ_[A-Z]{3} Ξ\^ν", term):
            items.append({"kind": "undefined_mixed_current", "text": term})
        else:
            raise ValueError(f"Unknown gauge source: {term}")
    return items

def parse(text):
    blocks = []
    triplet = None
    gauge = None
    for lineno, line in enumerate(text.splitlines(), 1):
        stripped = line.strip()
        if stripped.startswith("=== Triplet "):
            triplet = ast.literal_eval(stripped[len("=== Triplet "):-4])
            if len(triplet) != 3 or len(set(triplet)) != 3 or any(a not in SECTORS for a in triplet):
                raise ValueError(f"Invalid triplet at line {lineno}")
            block = {"triplet": triplet, "source_line": lineno, "equations": []}
            blocks.append(block)
            gauge = None
        elif triplet is None or not stripped:
            continue
        elif stripped in ("M-gauge:", "S-gauge:"):
            gauge = stripped[0]
        elif stripped.startswith("Scalar "):
            a, p, aliases = parse_scalar(stripped)
            block["equations"].append({"kind": "scalar", "sector": a, "line": lineno,
                                       "raw": stripped, "positive_source": p, "aliases": aliases})
        elif stripped.startswith("GR (Einstein):"):
            if canonical_indices(stripped) != gravity_template(triplet):
                raise ValueError(f"Unexpected gravity structure at line {lineno}: {stripped}")
            block["equations"].append({"kind": "gravity", "sector": "E", "line": lineno, "raw": stripped})
        elif stripped.startswith("∇_μ "):
            if gauge is None:
                raise ValueError("Gauge equation outside gauge block")
            items = validate_gauge(stripped, gauge)
            block["equations"].append({"kind": "gauge", "sector": gauge, "line": lineno,
                                       "raw": stripped, "sources": items})
        elif stripped.startswith("∇_[μ "):
            f = "F" if gauge == "M" else "S"
            if stripped != f"∇_[μ {f}_{{μν}}_{{νρ]}} = 0":
                raise ValueError(f"Unknown Bianchi syntax at line {lineno}: {stripped}")
            block["equations"].append({"kind": "bianchi", "sector": gauge, "line": lineno, "raw": stripped})
        else:
            raise ValueError(f"Unparsed content at line {lineno}: {stripped}")
    return blocks
