# QED.sh

**QED.sh** is an experimental shell-based symbolic computing system for transforming natural-language prompts into deterministic, reproducible symbolic states.

The system does not claim to prove mathematical conjectures. Instead, it provides a compact computational framework for studying prompt encoding, symbolic transformation, entropy measurement, cryptographic hashing, and reproducible state generation.

---

## Overview

QED.sh treats a text prompt as an input object that can be mapped into a structured symbolic state through a deterministic pipeline.

The current implementation performs the following operations:

1. UTF-8 prompt encoding
2. ACGT-style symbolic transformation
3. Shannon entropy evaluation
4. SHA-based cryptographic hashing
5. Complex-coordinate projection
6. JSON-formatted state output

For a fixed input prompt, the output state is reproducible.

---

## Formal Structure

Let $begin:math:text$P$end:math:text$ denote a natural-language prompt.

The system first encodes $begin:math:text$P$end:math:text$ as a symbolic sequence over the alphabet:

$begin:math:display$
\\Sigma \= \\\{A\, T\, G\, C\\\}
$end:math:display$

This produces a finite symbolic string:

$begin:math:display$
D\(P\) \\in \\Sigma\^\*
$end:math:display$

Let $begin:math:text$L$end:math:text$ be the length of this sequence. The empirical symbol distribution is given by:

$begin:math:display$
p\_i \= \\frac\{\\text\{count\}\(i\)\}\{L\}
$end:math:display$

where $begin:math:text$i \\in \\Sigma$end:math:text$.

The Shannon entropy is then computed as:

$begin:math:display$
S\(D\) \= \-\\sum\_i p\_i \\log\_2\(p\_i\)
$end:math:display$

A cryptographic integer is obtained by applying SHA-512 to the symbolic sequence:

$begin:math:display$
G \= \\text\{int\}\(\\text\{SHA512\}\(D\)\, 16\)
$end:math:display$

The system then defines a symbolic complex coordinate:

$begin:math:display$
z \= x \+ yi
$end:math:display$

where:

$begin:math:display$
x \= \\frac\{L\}\{\\text\{bitlength\}\(G\)\}
$end:math:display$

and:

$begin:math:display$
y \= \\frac\{1\}\{L\+1\}
$end:math:display$

A secondary projection is defined as:

$begin:math:display$
\\rho \= \\frac\{1\}\{2\} \+ i \\log\(G\)
$end:math:display$

In this framework, $begin:math:text$\\rho$end:math:text$ is not asserted to be a non-trivial zero of the Riemann zeta function. It is used as a symbolic coordinate inspired by the formal structure of the critical line.

---

## Output State

The system returns a compact JSON object containing fields such as:

```json
{
  "kernel": "QED_META_OMEGA_OS",
  "ACGT_length": 44,
  "entropy": 1.98,
  "GC": 0.5,
  "Hamiltonian_delta": 0.0,
  "rho": "1/2+709.81i",
  "omega": "..."
}
```

The field `omega` is a hash-derived symbolic fingerprint of the input state.

---

## Installation

For Alpine Linux or iSH:

```sh
apk add --no-cache python3
```

Clone or download the repository, then run:

```sh
chmod +x QED.sh
./QED.sh
```

or:

```sh
sh QED.sh
```

---

## Design Principles

QED.sh is designed to be:

- deterministic
- reproducible
- minimal
- portable
- human-readable
- suitable for symbolic experimentation

The same prompt should always generate the same symbolic state under the same version of the program.

---

## Research Context

QED.sh may be understood as an experimental tool at the intersection of:

- symbolic computation
- information theory
- prompt fingerprinting
- cryptographic state representation
- computational metaphysics
- generative systems

Terms such as entropy, fixed point, Hamiltonian delta, complex coordinate, and critical-line projection are used as computational and symbolic constructs within the system.

They should not be interpreted as claims of physical proof, mathematical proof, or theorem verification.

---

## Limitations

QED.sh is not:

- a theorem prover
- a proof of the Riemann Hypothesis
- a physical simulation engine
- a complete artificial intelligence system
- a scientifically validated model of consciousness or reality

It is best understood as a reproducible symbolic-state generator.

---

## Example Use Cases

Possible applications include:

- reproducible prompt fingerprints
- symbolic state generation
- information-theoretic demonstrations
- educational experiments
- generative art systems
- computational metaphysics research
- lightweight command-line symbolic computation

---

## License

MIT License

---

## Author

Hengyu Shih

Experimental Symbolic Computing Laboratory

SH, QED.