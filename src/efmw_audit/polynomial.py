"""Sparse commutative polynomials over rational coefficients.

Symbols are formal independent atoms. This module differentiates polynomials;
it does not implement differential geometry or establish physical validity.
"""
from fractions import Fraction

def tidy(p):
    return {tuple(sorted(m)): Fraction(c) for m, c in p.items() if c}

def atom(name):
    return {(name,): Fraction(1)}

def constant(value):
    return {(): Fraction(value)} if value else {}

def add(*polys):
    out = {}
    for p in polys:
        for m, c in p.items():
            out[m] = out.get(m, Fraction(0)) + c
    return tidy(out)

def scale(p, c):
    return tidy({m: v * c for m, v in p.items()})

def mul(*polys):
    out = constant(1)
    for p in polys:
        nxt = {}
        for a, x in out.items():
            for b, y in p.items():
                m = tuple(sorted(a + b))
                nxt[m] = nxt.get(m, Fraction(0)) + x * y
        out = tidy(nxt)
    return out

def derivative(p, variable):
    out = {}
    for m, c in p.items():
        n = m.count(variable)
        if n:
            factors = list(m)
            factors.remove(variable)
            k = tuple(factors)
            out[k] = out.get(k, Fraction(0)) + c * n
    return tidy(out)

def evaluate(p, values):
    total = Fraction(0)
    for m, c in p.items():
        for name in m:
            c *= values[name]
        total += c
    return total

def serial(p):
    return [{"coefficient": str(c), "factors": list(m)} for m, c in sorted(p.items())]

def display(p):
    if not p:
        return "0"
    return " + ".join(f"({c})*" + "*".join(m) if m else str(c)
                      for m, c in sorted(p.items()))
