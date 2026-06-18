# QED.sh

An experimental shell-based symbolic computing system that transforms natural language prompts into reproducible symbolic states through deterministic encoding, entropy analysis, and cryptographic mappings.

---

## Overview

QED.sh explores the idea that any textual input can be transformed into a reproducible symbolic representation.

The system performs:

1. UTF-8 text encoding
2. ACGT symbolic transformation
3. Shannon entropy evaluation
4. Cryptographic hashing
5. Complex-coordinate projection
6. Deterministic state generation

The resulting state is represented as a compact JSON object.

This project is intended as an experimental framework for symbolic computation, information theory, and reproducible state generation.

---

## Mathematical Structure

Given a text prompt:

P

the system generates a symbolic sequence:

P → ACGT

and evaluates:

Entropy

S = -Σ pᵢ log₂(pᵢ)

where pᵢ denotes the frequency of each symbol.

Hash Mapping

G = SHA512(ACGT)

where the SHA-512 digest is interpreted as a large integer.

Symbolic Coordinate

z = x + yi

with

x = L / bitlength(G)

and

y = 1 / (L + 1)

where L is the sequence length.

Projection

ρ = 1/2 + i·log(G)

This coordinate is used as a symbolic identifier within the framework.

---

## Example

Input

Hello World

Output

{
  "kernel":"QED_META_OMEGA_OS",
  "ACGT_length":44,
  "entropy":1.98,
  "GC":0.5,
  "Hamiltonian_delta":0.0,
  "rho":"1/2+709.81i",
  "omega":"..."
}

---

## Installation

Alpine Linux / iSH

apk add --no-cache python3

Run

chmod +x QED.sh
./QED.sh

or

sh QED.sh

---

## Design Principles

- Deterministic
- Reproducible
- Symbolic
- Platform Independent
- Human Readable

The same input always produces the same symbolic state.

---

## Research Context

QED.sh is not presented as a proof of any mathematical conjecture.

Concepts such as:

- entropy
- symbolic encoding
- complex coordinates
- cryptographic hashes
- fixed-point representations

are used as computational constructs within the framework.

The project should be understood as an exploration of symbolic information processing rather than a formal theorem-proving system.

---

## Example Use Cases

- Symbolic state generation
- Information-theoretic experiments
- Reproducible prompt fingerprints
- Educational demonstrations
- Computational metaphysics research
- Digital art and generative systems

---

## License

MIT License

---

## Author

Shiheng-Yu Shih

Experimental Symbolic Computing Laboratory

SH, QED.