# QED.sh

**QED.sh** is an experimental shell-based symbolic computing system that transforms natural language prompts into reproducible program states.

It encodes user input into an ACGT symbolic sequence, derives a cryptographic state hash, and generates a self-contained Python program that can reproduce a related symbolic continuation.

---

## Overview

QED.sh explores a simple idea:

> A natural language prompt can be transformed into a deterministic symbolic state, and that state can generate executable code.

The system performs:

1. Prompt input through shell
2. UTF-8 to ACGT symbolic encoding
3. SHA-256 state hashing
4. Safe filename generation
5. Python source-code generation
6. JSON state output
7. Printed generated code

The result is both:

- a symbolic state record
- a generated Python program

---

## Core Concept

Given an input prompt:

```text
P
```

QED.sh converts it into an ACGT sequence:

```text
P → ACGT
```

Then it computes:

```text
Omega = SHA256(ACGT + P)
```

This `Omega` value is used as a deterministic identifier for the generated program.

---

## Generated Output

Running QED.sh produces:

1. A JSON object describing the generated state
2. A `.py` file named from the prompt and hash
3. The generated Python source code printed directly in the terminal

Example JSON output:

```json
{
  "kernel": "QED_self_analytic_program_generator",
  "Omega": "xxxxxxxxxxxxxxxx",
  "output": "example_xxxxxxxx.py"
}
```

The generated Python file can then be executed independently.

---

## Installation

### Alpine Linux / iSH

```sh
apk add --no-cache python3
```

### macOS / Linux

```sh
python3 --version
```

---

## Usage

```sh
git clone https://github.com/letsgo0226/QED.sh.git
cd QED.sh
sh QED.sh
```

Or:

```sh
chmod +x QED.sh
./QED.sh
```

When prompted:

```text
SELF CODE>
```

enter any phrase, for example:

```text
Hello World
```

---

## Example

```text
SELF CODE> Hello World
```

Possible output:

```json
{
  "kernel": "QED_self_analytic_program_generator",
  "Omega": "a1b2c3d4e5f6...",
  "output": "Hello_World_a1b2c3d4.py"
}
```

The system also prints:

```text
--- GENERATED CODE ---
```

followed by the full generated Python program.

---

## Design Principles

- Deterministic
- Reproducible
- Minimal
- Shell-compatible
- iSH-friendly
- Human-readable
- Self-generating
- Symbolic rather than empirical

The same input always produces the same symbolic encoding and hash-derived state.

---

## Research Context

QED.sh is not presented as a proof of any mathematical conjecture.

Terms such as:

- self-analytic continuation
- symbolic state
- ACGT encoding
- Omega
- cryptographic mapping
- generated program

are used as computational and symbolic constructs.

This project should be understood as an experimental framework for symbolic computation, reproducible program generation, and computational metaphysics.

---

## Example Use Cases

- Symbolic state generation
- Prompt fingerprinting
- Self-generating code experiments
- Educational demonstrations
- Shell-based computational art
- Computational metaphysics research
- Minimal reproducible program systems

---

## File Structure

```text
QED.sh      # Main shell-based generator
README.md   # Project documentation
```

---

## License

MIT License

---

## Author

Hengyu Shih

Experimental Symbolic Computing Laboratory

SH, QED.