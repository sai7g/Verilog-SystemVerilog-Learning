# Notes - Bitwise Operators

## Definition

Bitwise operators perform operations on each individual bit of the operands and return a result with the same width as the operands.

Unlike logical operators, bitwise operators manipulate each corresponding bit independently.

They are primarily used for bit manipulation in digital hardware and RTL design.

---

## Bitwise Operators

| Operator | Description |
|----------|-------------|
| `&` | Bitwise AND |
| `|` | Bitwise OR |
| `^` | Bitwise XOR |
| `~` | Bitwise NOT |
| `~^` or `^~` | Bitwise XNOR |

---

## Bitwise AND (&)

Returns **1** only when both corresponding bits are **1**.

### Example

```verilog
assign y = a & b;
```

### Truth Table

| A | B | Output |
|---|---|--------|
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

---

## Bitwise OR (|)

Returns **1** when at least one corresponding bit is **1**.

### Example

```verilog
assign y = a | b;
```

### Truth Table

| A | B | Output |
|---|---|--------|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 1 |

---

## Bitwise XOR (^)

Returns **1** when the corresponding bits are different.

### Example

```verilog
assign y = a ^ b;
```

### Truth Table

| A | B | Output |
|---|---|--------|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

---

## Bitwise NOT (~)

Inverts every bit of the operand.

### Example

```verilog
assign y = ~a;
```

### Truth Table

| A | Output |
|---|--------|
| 0 | 1 |
| 1 | 0 |

---

## Bitwise XNOR (~^ or ^~)

Returns **1** when the corresponding bits are equal.

### Example

```verilog
assign y = a ~^ b;
```

### Truth Table

| A | B | Output |
|---|---|--------|
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

---

## Example

```
a = 1010
b = 1100
```

| Operation | Result |
|-----------|--------|
| a & b | 1000 |
| a \| b | 1110 |
| a ^ b | 0110 |
| ~a | 0101 |
| a ~^ b | 1001 |

---

## Logical vs Bitwise Operators

| Logical | Bitwise |
|----------|----------|
| `&&` | `&` |
| `||` | `|` |
| `!` | `~` |
| Returns 1 bit | Returns multiple bits |
| Used in conditions | Used for bit manipulation |

---

## Hardware Mapping

Each bitwise operator synthesizes directly into combinational logic gates.

Example:

```verilog
assign y = a & b;
```

Synthesized Hardware:

- `&` → AND Gates
- `|` → OR Gates
- `^` → XOR Gates
- `~` → NOT Gates
- `~^` → XNOR Gates

---

## Applications

- Arithmetic Logic Units (ALUs)
- Register masking
- Control registers
- Instruction decoding
- Error detection
- Parity generation
- Encryption
- Status flag manipulation

---

## Common Mistakes

- Using `&&` instead of `&`.
- Using `||` instead of `|`.
- Using `!` instead of `~`.
- Expecting bitwise operators to return a single-bit result.
- Ignoring operand width mismatches.

---

## Best Practices

- Use bitwise operators for bit-level data manipulation.
- Use logical operators only for conditional expressions.
- Ensure operands have matching widths.
- Simulate designs before synthesis.
- Use meaningful signal names in RTL code.

---

## Interview Points

- List all bitwise operators in Verilog.
- Explain the difference between bitwise and logical operators.
- Which bitwise operator is used for parity generation?
- What hardware is synthesized for bitwise operators?
- Explain the difference between XOR and XNOR.
- Where are bitwise operators commonly used in RTL design?

---

## Summary

- Verilog provides five primary bitwise operations: `&`, `|`, `^`, `~`, and `~^` (`^~`).
- Bitwise operators perform operations on each corresponding bit independently.
- The output width is the same as the operand width.
- They synthesize directly into logic gates.
- They are widely used in ALUs, instruction decoding, masking operations, and control logic.
- Do not confuse bitwise operators with logical operators.