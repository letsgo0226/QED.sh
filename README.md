# QED.sh

QED.sh is an experimental symbolic computing framework that maps natural-language prompts into reproducible symbolic states through deterministic encoding, entropy evaluation, and cryptographic transformations.

The project explores the use of symbolic state representations as a computational abstraction for prompt fingerprinting, recursive state generation, and information-theoretic experiments.

---

## Abstract

Given an arbitrary textual prompt, QED.sh constructs a deterministic symbolic representation through:

1. ACGT-based symbolic encoding
2. Shannon entropy evaluation
3. Cryptographic hashing
4. Recursive state transformation
5. Fixed-point candidate analysis

The resulting state is represented as a compact JSON object containing symbolic coordinates and metadata.

The framework is intended as an experimental platform for symbolic computation and information processing.

It is not intended as a theorem-proving system.

---

## Mathematical Construction

Let

```text
P
```

denote an arbitrary prompt.

The prompt is first transformed into a symbolic sequence over the alphabet

```text
Σ = {A,T,G,C}
```

through a deterministic encoding procedure.

The resulting sequence

```text
D ∈ Σ*
```

is evaluated using Shannon entropy:

```math
H(D)
=
-\sum_i p_i \log_2 p_i
```

where

```math
p_i
```

denotes the empirical frequency of symbol

```math
i
```

in

```math
D
```

A cryptographic state is then computed:

```math
G
=
\text{SHA512}(D)
```

which serves as a reproducible symbolic identifier.

---

## Recursive State Dynamics

The framework may be extended through recursive state transitions:

```text
X₀
→ X₁
→ X₂
→ ...
```

where

```math
X_{n+1}
=
F(X_n)
```

for a deterministic transformation

```math
F
```

The resulting trajectory can be analyzed for:

- convergence
- periodicity
- stability
- fixed-point candidates

---

## One-Liner Version

```sh
read -p "QED> " P;python3 -c 'import hashlib,json,sys;B="ATGC";X=sys.argv[1];R=[];N=21;exec("for n in range(N):\n D=\"\".join(B[(b>>s)&3]for b in X.encode()for s in(6,4,2,0));O=hashlib.sha256(D.encode()).hexdigest();S=hashlib.sha256((O+X).encode()).hexdigest();score=len(set(D))/4+int(O[0],16)/16+int(S[0],16)/16;R.append({\"n\":n,\"Omega\":O[:16],\"next\":S[:16],\"score\":round(score,4)});X=S");best=max(R,key=lambda x:x["score"]);print(json.dumps({"kernel":"QED.sh","principle":"recursive symbolic state generation","iterations":N,"best":best,"final_seed":X[:16]},separators=(",",":")))' "$P"
```

---

## Example Output

```json
{
  "kernel":"QED.sh",
  "principle":"recursive symbolic state generation",
  "iterations":21,
  "best":{
    "n":4,
    "Omega":"79d04b3e2fac0460",
    "next":"0b91b3d8e3d2a1f0",
    "score":2.0
  },
  "final_seed":"8fcd23a0..."
}
```

---

## Applications

Potential applications include:

- symbolic state generation
- prompt fingerprinting
- reproducible computational experiments
- information-theoretic demonstrations
- recursive dynamical systems
- educational computing projects

---

## Limitations

QED.sh does not:

- prove the Riemann Hypothesis
- solve open mathematical conjectures
- establish physical theories
- provide formal optimality guarantees

The framework should be understood as an experimental symbolic computing system.

---

## License

MIT License

---

## Author

Hengyu Shih

Experimental Symbolic Computing Laboratory

SH, QED.