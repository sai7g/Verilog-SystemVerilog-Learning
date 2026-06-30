# Verilog Operators - Arithmetic Operators

## Objective

Learn the arithmetic operators available in Verilog, understand their syntax, hardware implementation, and applications in RTL design.

---

# Introduction

Arithmetic operators perform mathematical operations on operands. They are widely used in digital systems such as ALUs, counters, address generators, timers, and DSP circuits.

These operators work on integer and vector data types and produce arithmetic results.

---

# Arithmetic Operators

| Operator | Description | Example |
|----------|-------------|---------|
| `+` | Addition | `a + b` |
| `-` | Subtraction | `a - b` |
| `*` | Multiplication | `a * b` |
| `/` | Division | `a / b` |
| `%` | Modulus (Remainder) | `a % b` |

---

# Operator Description

## Addition (`+`)

Adds two operands.

```verilog
assign sum = a + b;
```

Example:

```
10 + 5 = 15
```

---

## Subtraction (`-`)

Subtracts the second operand from the first.

```verilog
assign diff = a - b;
```

Example:

```
10 - 5 = 5
```

---

## Multiplication (`*`)

Multiplies two operands.

```verilog
assign product = a * b;
```

Example:

```
6 × 4 = 24
```

---

## Division (`/`)

Performs integer division.

```verilog
assign quotient = a / b;
```

Example:

```
10 / 3 = 3
```

The fractional part is discarded.

---

## Modulus (`%`)

Returns the remainder after division.

```verilog
assign remainder = a % b;
```

Example:

```
10 % 3 = 1
```

---

# Hardware Concept

| Operator | Hardware Synthesized |
|----------|----------------------|
| `+` | Adder |
| `-` | Subtractor |
| `*` | Multiplier / DSP Block |
| `/` | Divider (resource-intensive) |
| `%` | Divider-based remainder logic |

> **Note:** Division and modulus are expensive in hardware and are often avoided in synthesizable RTL unless required.

---

# Example

```verilog
module arithmetic_operators;

reg [3:0] a;
reg [3:0] b;

reg [4:0] sum;
reg [4:0] difference;
reg [7:0] product;
reg [3:0] quotient;
reg [3:0] remainder;

initial begin
    a = 4'd10;
    b = 4'd3;

    sum        = a + b;
    difference = a - b;
    product    = a * b;
    quotient   = a / b;
    remainder  = a % b;

    $display("Sum        = %d", sum);
    $display("Difference = %d", difference);
    $display("Product    = %d", product);
    $display("Quotient   = %d", quotient);
    $display("Remainder  = %d", remainder);

    $finish;
end

endmodule
```

---

# Compilation

```bash
iverilog -o arithmetic_operators arithmetic_operators.v
```

---

# Simulation

```bash
vvp arithmetic_operators
```

---

# Expected Output

```text
Sum        = 13
Difference = 7
Product    = 30
Quotient   = 3
Remainder  = 1
```

---

# Best Practices

- Use sufficient bit width for arithmetic results.
- Use multiplication carefully, as it may require dedicated hardware resources.
- Avoid division and modulus in synthesizable RTL when possible.
- Verify arithmetic results through simulation.

---

# Common Mistakes

- Using an insufficient output width.
- Ignoring overflow.
- Dividing by zero.
- Assuming division produces floating-point results.

---

# Interview Corner

### Q1. Which arithmetic operators are available in Verilog?

**Answer:** `+`, `-`, `*`, `/`, `%`

### Q2. Why should adding two 4-bit numbers use a 5-bit result?

**Answer:** The maximum sum is `15 + 15 = 30`, which requires 5 bits (`11110`).

### Q3. Why are division and modulus used cautiously in RTL?

**Answer:** They generate complex hardware, consume more resources, and can reduce performance.

---

# References

- IEEE Verilog HDL Standard
- Icarus Verilog Documentation