# QED.sh

An experimental shell-based symbolic computing system that transforms natural language prompts into reproducible symbolic states through deterministic encoding, entropy analysis, and cryptographic mapping.

---

## Overview

QED.sh explores the idea that any textual input can be transformed into a reproducible symbolic representation.

The system performs:

1. UTF-8 text encoding
2. ACGT symbolic transformation
3. Shannon entropy evaluation
4. Cryptographic hashing
5. Complex-coordinate projection
6. Deterministic symbolic state generation

The resulting state is represented as a compact JSON object.

This project is intended as an experimental framework for symbolic computation, information theory, reproducible prompt fingerprinting, and computational metaphysics research.

---

## Mathematical Structure

Given a text prompt:

```text
P
```

the system generates a symbolic sequence:

```text
P → ACGT
```

and evaluates its entropy:

```text
S = -Σ pᵢ log₂(pᵢ)
```

where `pᵢ` denotes the frequency of each symbolic element.

The system then computes a cryptographic mapping:

```text
G = SHA512(ACGT)
```

where the SHA-512 digest is interpreted as a large integer.

A symbolic complex coordinate is defined as:

```text
z = x + yi
```

with:

```text
x = L / bitlength(G)
y = 1 / (L + 1)
```

where `L` is the sequence length.

Finally, the system projects the result into a symbolic critical-line coordinate:

```text
ρ = 1/2 + i·log(G)
```

This coordinate functions as a reproducible symbolic identifier within the QED.sh framework.

---

## Example

Input:

```text
Hello World
```

Example output:

```json
{
  "kernel": "QED_META_OMEGA_OS",
  "equation": "x+yij=z",
  "ACGT_length": 44,
  "entropy": 1.98,
  "GC": 0.5,
  "Hamiltonian_delta": 0.0,
  "rho": "1/2+709.81i",
  "omega": "..."
}
```

---

## Installation

### Alpine Linux / iSH

```sh
apk add --no-cache python3
```

### Run

```sh
chmod +x QED.sh
./QED.sh
```

or

```sh
sh QED.sh
```

---

## Design Principles

- Deterministic
- Reproducible
- Symbolic
- Platform-independent
- Human-readable
- Minimal
- Shell-native

The same input always produces the same symbolic state.

---

## Research Context

QED.sh is not presented as a proof of any mathematical conjecture.

Concepts such as entropy, symbolic encoding, complex coordinates, cryptographic hashes, fixed-point representation, and critical-line projection are used as computational constructs within the framework.

The project should be understood as an exploration of symbolic information processing rather than a formal theorem-proving system.

---

## Example Use Cases

- Symbolic state generation
- Information-theoretic experiments
- Reproducible prompt fingerprints
- Educational demonstrations
- Computational metaphysics research
- Digital art and generative systems
- Shell-based AI prompt experiments

---

## Citation

If you use QED.sh in academic work, please cite:

```bibtex
@software{shih2026qed,
  author = {Hengyu Shih},
  title = {QED.sh},
  year = {2026},
  url = {https://github.com/letsgo0226/QED.sh}
}
```

---

## License

MIT License

---

## Author

Hengyu Shih

Experimental Symbolic Computing Laboratory

SH, QED.