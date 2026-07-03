# Verilog Operators - Bitwise Operators

## Objective

Learn the bitwise operators available in Verilog, understand their syntax, truth tables, hardware implementation, and applications in RTL design.

---

## Introduction

Bitwise operators perform operations on each individual bit of the operands. Unlike logical operators, which return a single-bit result, bitwise operators operate on every corresponding bit and return a result with the same width as the operands.

Bitwise operators are fundamental in digital hardware design and are extensively used in FPGA and ASIC designs.

Bitwise operators are commonly used in:

- Arithmetic Logic Units (ALUs)
- Register masking
- Instruction decoding
- Control logic
- Parity generation
- Error detection
- Encryption algorithms

---

## Bitwise Operators

| Operator | Description | Example |
|----------|-------------|---------|
| `&` | Bitwise AND | `a & b` |
| `\|` | Bitwise OR | `a \| b` |
| `^` | Bitwise XOR | `a ^ b` |
| `~` | Bitwise NOT | `~a` |
| `~^` or `^~` | Bitwise XNOR | `a ~^ b` |

---

## Bitwise AND (&)

Returns **1** only when both corresponding bits are **1**.

### Truth Table

| A | B | A & B |
|---|---|-------|
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

### Example

```verilog
assign y = a & b;
```

---

## Bitwise OR (|)

Returns **1** when at least one corresponding bit is **1**.

### Truth Table

| A | B | A \| B |
|---|---|--------|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 1 |

### Example

```verilog
assign y = a | b;
```

---

## Bitwise XOR (^)

Returns **1** when the corresponding bits are different.

### Truth Table

| A | B | A ^ B |
|---|---|-------|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

### Example

```verilog
assign y = a ^ b;
```

---

## Bitwise NOT (~)

Inverts every bit of the operand.

### Truth Table

| A | ~A |
|---|----|
| 0 | 1 |
| 1 | 0 |

### Example

```verilog
assign y = ~a;
```

---

## Bitwise XNOR (~^ or ^~)

Returns **1** when the corresponding bits are the same.

### Truth Table

| A | B | A ~^ B |
|---|---|--------|
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

### Example

```verilog
assign y = a ~^ b;
```

---

## Example

Suppose

```text
a = 4'b1010
b = 4'b1100
```

| Operation | Result |
|----------|--------|
| a & b | 1000 |
| a \| b | 1110 |
| a ^ b | 0110 |
| ~a | 0101 |
| a ~^ b | 1001 |

---

## Logical vs Bitwise Operators

| Logical Operator | Bitwise Operator |
|------------------|------------------|
| `&&` | `&` |
| `\|\|` | `\|` |
| `!` | `~` |
| Returns 1-bit result | Returns multi-bit result |
| Used in conditions | Used for bit manipulation |

### Example

```verilog
4'b1010 && 4'b0101
```

Result

```text
1
```

Both operands are non-zero.

```verilog
4'b1010 & 4'b0101
```

Result

```text
0000
```

Bit-by-bit AND operation.

---

## Hardware Concept

Each bitwise operator synthesizes directly into logic gates.

Example

```verilog
assign y = a & b;
```

Hardware

```text
a3 ----\
         AND ---- y3
b3 ----/

a2 ----\
         AND ---- y2
b2 ----/

a1 ----\
         AND ---- y1
b1 ----/

a0 ----\
         AND ---- y0
b0 ----/
```

Similarly,

- `&` → AND Gates
- `|` → OR Gates
- `^` → XOR Gates
- `~` → NOT Gates
- `~^` → XNOR Gates

---

## Example

```verilog
module bitwise_operators;

reg [3:0] a;
reg [3:0] b;

initial begin

    a = 4'b1010;
    b = 4'b1100;

    $display("a & b  = %b", a & b);
    $display("a | b  = %b", a | b);
    $display("a ^ b  = %b", a ^ b);
    $display("~a     = %b", ~a);
    $display("a ~^ b = %b", a ~^ b);

    $finish;

end

endmodule
```

---

## Compilation

```bash
iverilog -o bitwise_operators bitwise_operators.v
```

---

## Simulation

```bash
vvp bitwise_operators
```

---

## Expected Output

```text
a & b  = 1000
a | b  = 1110
a ^ b  = 0110
~a     = 0101
a ~^ b = 1001
```

---

## Applications

- Arithmetic Logic Units (ALUs)
- Register masking
- Control registers
- Instruction decoding
- Error detection
- Parity generation
- Encryption algorithms
- Status flag manipulation

---

## Best Practices

- Use bitwise operators for bit-level manipulation.
- Use logical operators only for conditional expressions.
- Ensure operands have compatible widths.
- Use meaningful signal names in RTL designs.
- Simulate designs before synthesis.

---

## Common Mistakes

- Confusing `&` with `&&`.
- Confusing `|` with `||`.
- Using `~` instead of `!`.
- Forgetting that bitwise operators operate on each bit independently.
- Ignoring width mismatches between operands.

---

## Interview Corner

### Q1. What are the bitwise operators in Verilog?

**Answer:** `&`, `|`, `^`, `~`, `~^`, and `^~`.

---

### Q2. What is the difference between `&&` and `&`?

**Answer:** `&&` is a logical operator that returns a single-bit result, whereas `&` performs a bit-by-bit AND operation and returns a result with the same width as the operands.

---

### Q3. Which bitwise operator is commonly used for parity generation?

**Answer:** The XOR (`^`) operator.

---

### Q4. What hardware is synthesized for the bitwise XOR operator?

**Answer:** XOR gates.

---

### Q5. Where are bitwise operators commonly used?

**Answer:** ALUs, register masking, instruction decoding, control logic, parity generation, and error detection.

---

## References

- IEEE Verilog HDL Standard
- Icarus Verilog Documentation
- GTKWave Documentation