# Verilog Operators - Relational and Equality Operators

## Objective

Learn how to compare two operands using relational and equality operators in Verilog. These operators are widely used in comparators, ALUs, conditional statements, finite state machines (FSMs), and decision-making logic.

---

# Introduction

Relational and equality operators compare two operands and return a **1-bit result**.

- **1** → True
- **0** → False

These operators are essential for implementing conditional logic in RTL designs.

---

# Relational Operators

Relational operators compare the magnitude of two operands.

| Operator | Description | Example |
|----------|-------------|---------|
| `<` | Less than | `a < b` |
| `>` | Greater than | `a > b` |
| `<=` | Less than or equal to | `a <= b` |
| `>=` | Greater than or equal to | `a >= b` |

### Example

```verilog
assign greater = (a > b);
```

---

# Equality Operators

Equality operators compare whether two operands are equal.

## Logical Equality Operators

| Operator | Description | Example |
|----------|-------------|---------|
| `==` | Equal to | `a == b` |
| `!=` | Not equal to | `a != b` |

Example:

```verilog
assign equal = (a == b);
```

---

## Case Equality Operators

Case equality operators compare operands including **unknown (`x`)** and **high-impedance (`z`)** values.

| Operator | Description | Example |
|----------|-------------|---------|
| `===` | Case equality | `a === b` |
| `!==` | Case inequality | `a !== b` |

Example:

```verilog
4'b10x1 === 4'b10x1
```

Result:

```
1
```

---

# Difference Between `==` and `===`

Assume:

```verilog
a = 4'b10x1;
b = 4'b10x1;
```

### Using `==`

```verilog
a == b
```

Result:

```
x
```

Because `==` treats `x` and `z` as unknown values.

### Using `===`

```verilog
a === b
```

Result:

```
1
```

Because `===` compares every bit exactly, including `x` and `z`.

> **Note:** `===` and `!==` are mainly used in **testbenches** and verification, not in synthesizable RTL.

---

# Hardware Concept

Relational and equality operators synthesize into **comparator circuits**.

Example:

```verilog
assign greater = (a > b);
```

Synthesized Hardware:

```
      a ----\
             Comparator ---- greater
      b ----/
```

---

# Example

```verilog
module comparison_operators;

reg [3:0] a;
reg [3:0] b;

initial begin
    a = 4'd8;
    b = 4'd5;

    $display("a > b  = %b", (a > b));
    $display("a < b  = %b", (a < b));
    $display("a >= b = %b", (a >= b));
    $display("a <= b = %b", (a <= b));
    $display("a == b = %b", (a == b));
    $display("a != b = %b", (a != b));

    $finish;
end

endmodule
```

---

# Compilation

```bash
iverilog -o comparison_operators comparison_operators.v
```

---

# Simulation

```bash
vvp comparison_operators
```

---

# Expected Output

```text
a > b  = 1
a < b  = 0
a >= b = 1
a <= b = 0
a == b = 0
a != b = 1
```

---

# Applications

- Digital Comparators
- Arithmetic Logic Unit (ALU)
- Finite State Machines (FSMs)
- Address Comparison
- Counter Limit Detection
- Conditional Statements (`if`, `case`)

---

# Best Practices

- Use `==` and `!=` in synthesizable RTL.
- Use `===` and `!==` primarily in testbenches.
- Ensure operands have compatible widths before comparison.
- Verify comparison logic through simulation.

---

# Common Mistakes

- Confusing `==` with `===`.
- Using `===` in synthesizable RTL.
- Ignoring `x` and `z` values during simulation.
- Comparing signals with different widths without understanding the implications.

---

# Interview Corner

### Q1. What is the difference between relational and equality operators?

**Answer:** Relational operators compare the magnitude of operands, while equality operators check whether operands are equal or not.

### Q2. What is the difference between `==` and `===`?

**Answer:** `==` ignores unknown (`x`) and high-impedance (`z`) values during comparison, whereas `===` compares them exactly.

### Q3. Where are `===` and `!==` commonly used?

**Answer:** In testbenches and verification environments for precise comparisons involving `x` and `z` values.

---

# References

- IEEE Verilog HDL Standard
- Icarus Verilog Documentation