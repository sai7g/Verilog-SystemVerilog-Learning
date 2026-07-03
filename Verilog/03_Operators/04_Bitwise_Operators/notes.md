# Bitwise Operators – Quick Notes

## Definition

Bitwise operators perform operations on each bit of the operands independently.

Unlike logical operators, bitwise operators return a vector whose width is the same as the input operands.

---

## Operators

| Operator | Name |
|----------|------|
| `&` | Bitwise AND |
| `|` | Bitwise OR |
| `^` | Bitwise XOR |
| `~` | Bitwise NOT |
| `~^` | Bitwise XNOR |
| `^~` | Bitwise XNOR |

---

## Example

```
a = 1010
b = 1100
```

### Bitwise AND

```
1010
1100
----
1000
```

### Bitwise OR

```
1010
1100
----
1110
```

### Bitwise XOR

```
1010
1100
----
0110
```

### Bitwise NOT

```
1010
----
0101
```

### Bitwise XNOR

```
1010
1100
----
1001
```

---

## Truth Tables

### AND

| A | B | Output |
|---|---|--------|
|0|0|0|
|0|1|0|
|1|0|0|
|1|1|1|

### OR

| A | B | Output |
|---|---|--------|
|0|0|0|
|0|1|1|
|1|0|1|
|1|1|1|

### XOR

| A | B | Output |
|---|---|--------|
|0|0|0|
|0|1|1|
|1|0|1|
|1|1|0|

### XNOR

| A | B | Output |
|---|---|--------|
|0|0|1|
|0|1|0|
|1|0|0|
|1|1|1|

### NOT

| A | Output |
|---|--------|
|0|1|
|1|0|

---

## Hardware Concept

Bitwise operators synthesize directly into hardware gates.

```
&  → AND Gate
|  → OR Gate
^  → XOR Gate
~  → NOT Gate
~^ → XNOR Gate
```

---

## Common Applications

- ALU operations
- Register masking
- Data manipulation
- Instruction decoding
- Parity generation
- Error detection
- Control logic

---

## Difference Between Logical and Bitwise Operators

| Logical | Bitwise |
|----------|----------|
| `&&` | `&` |
| `||` | `|` |
| `!` | `~` |
| Output is 1 bit | Output width equals operand width |

---

## Common Mistakes

- Confusing `&` with `&&`
- Confusing `|` with `||`
- Using `~` instead of `!`
- Forgetting that bitwise operators operate on each bit independently
- Ignoring operand width mismatches

---

## Interview Tips

- Know the difference between logical and bitwise operators.
- Understand how XOR and XNOR work.
- Remember that bitwise operators synthesize directly into logic gates.
- Be comfortable tracing bitwise operations by hand.
- Expect questions on masking and parity generation.

---

## Quick Revision

```
&   → AND
|   → OR
^   → XOR
~   → NOT
~^  → XNOR
^~  → XNOR
```

**Remember:**

- Bitwise operators operate on each bit independently.
- Output width remains the same as the input width.
- They are fundamental building blocks in FPGA and ASIC RTL design.