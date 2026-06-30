# Notes - Arithmetic Operators

## Definition

Arithmetic operators perform mathematical operations on operands.

They are commonly used in:

- ALUs
- Counters
- Address generators
- DSP circuits
- Timers
- Processor datapaths

---

# Arithmetic Operators

| Operator | Function |
|----------|----------|
| `+` | Addition |
| `-` | Subtraction |
| `*` | Multiplication |
| `/` | Division |
| `%` | Modulus (Remainder) |

---

# Addition

```verilog
sum = a + b;
```

Used for:

- Increment operations
- Address calculation
- ALU addition

Hardware:

Adder

---

# Subtraction

```verilog
difference = a - b;
```

Used for:

- Comparison
- ALU subtraction
- Counter decrement

Hardware:

Subtractor

---

# Multiplication

```verilog
product = a * b;
```

Hardware:

Multiplier or FPGA DSP block

---

# Division

```verilog
quotient = a / b;
```

- Performs integer division.
- Fractional part is discarded.

Example:

```
10 / 3 = 3
```

---

# Modulus

```verilog
remainder = a % b;
```

Returns the remainder after division.

Example:

```
10 % 3 = 1
```

---

# Output Width

Always use sufficient width for arithmetic results.

Example:

```verilog
reg [3:0] a, b;
reg [4:0] sum;
```

Maximum value:

```
15 + 15 = 30
```

Requires 5 bits.

---

# Hardware Mapping

| Operation | Hardware |
|-----------|----------|
| Addition | Adder |
| Subtraction | Subtractor |
| Multiplication | Multiplier |
| Division | Divider |
| Modulus | Divider + Remainder Logic |

---

# Common Mistakes

- Overflow due to insufficient bit width.
- Division by zero.
- Expecting floating-point results from division.
- Using multiplication without considering result width.

---

# Best Practices

- Match result width to the expected output.
- Use arithmetic operators only when required.
- Avoid division and modulus in synthesizable RTL unless necessary.
- Verify results using simulation.

---

# Interview Points

- List all arithmetic operators.
- Explain why output width is important.
- Know the synthesized hardware for each operator.
- Understand integer division behavior.

---

# Summary

- Verilog supports five arithmetic operators: `+`, `-`, `*`, `/`, `%`.
- Addition and subtraction are commonly used in RTL.
- Multiplication may use DSP resources.
- Division and modulus are hardware-intensive operations.
- Proper bit width selection prevents overflow and data loss.