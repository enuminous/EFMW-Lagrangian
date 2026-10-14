"""Frozen C1 model; this file generates the action independently of the parser."""
from fractions import Fraction
from itertools import combinations
from .polynomial import atom, add, mul, scale

VERSION = "EFMW-LAGRANGIAN-C1"
SECTORS = ("E", "M", "S", "F", "W", "T", "I", "R", "H", "P", "A")
SCALARS = SECTORS[3:]
DIMENSIONS = {"Rcurv": 2, "X": 4, "Y": 4, **{f"phi_{a}": 1 for a in SCALARS}}

def ordered(labels):
    return tuple(sorted(labels, key=SECTORS.index))

def invariant(sector):
    return {"E": "Rcurv", "M": "X", "S": "Y"}.get(sector, f"phi_{sector}")

def coupling(labels):
    labels = ordered(labels)
    if len(set(labels)) != len(labels) or len(labels) not in (2, 3):
        raise ValueError(f"Not a distinct pair/triple: {labels}")
    return ("g_" if len(labels) == 2 else "h_") + "_".join(labels)

def potential(triplet):
    """Restrict couplings before variation. Geometry persists in every block."""
    if len(triplet) != 3 or len(set(triplet)) != 3:
        raise ValueError("A triplet requires exactly three distinct sectors")
    terms = []
    for a in triplet:
        if a in SCALARS:
            p = atom(f"phi_{a}")
            terms += [scale(mul(atom(f"mass2_{a}"), p, p), Fraction(1, 2)),
                      scale(mul(atom(f"xi_{a}"), atom("Rcurv"), p, p), Fraction(1, 2))]
    for k in (2, 3):
        for labels in combinations(ordered(triplet), k):
            terms.append(mul(atom(coupling(labels)), *(atom(invariant(a)) for a in labels)))
    return add(*terms)

def interaction_dimension(labels):
    return 4 - sum(DIMENSIONS[invariant(a)] for a in labels)
