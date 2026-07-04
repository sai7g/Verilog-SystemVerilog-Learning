# Verilog Operators - Conditional (Ternary) Operator

## Objective

Learn the Conditional (Ternary) Operator in Verilog, understand its syntax, hardware implementation, and applications in RTL design.

---

# Introduction

The Conditional (Ternary) Operator selects one of two expressions based on a condition.

It is a compact alternative to simple `if-else` statements for combinational logic and is widely used in RTL design for implementing multiplexers and conditional data selection.

---

# Conditional (Ternary) Operator

| Operator | Description | Example |
|----------|-------------|---------|
| `?:` | Selects one of two expressions based on a condition | `assign y = sel ? a : b;` |

---

# Operator Description

## Basic Conditional Operation

Selects between two values depending on the condition.

```verilog
assign y = sel ? a : b;
```

If

```
sel = 1
```

Output

```
y = a
```

If

```
sel = 0
```

Output

```
y = b
```

---

## Selecting the Maximum Value

```verilog
assign max = (a > b) ? a : b;
```

Example

```
a = 12
b = 8

max = 12
```

---

## Providing a Default Value

```verilog
assign out = enable ? data : 8'b00000000;
```

When `enable` is low, the output becomes zero.

---

# Hardware Concept

| Expression | Hardware Synthesized |
|------------|----------------------|
| `sel ? a : b` | 2:1 Multiplexer |
| `enable ? data : 0` | Multiplexer with constant input |
| Nested `?:` | Multiple multiplexers |

> **Note:** The Conditional Operator synthesizes into combinational logic, most commonly a **2:1 multiplexer**.

---

# Example

```verilog
module conditional_operator(

    input wire sel,
    input wire [3:0] a,
    input wire [3:0] b,

    output wire [3:0] y

);

assign y = sel ? a : b;

endmodule
```

---

# Testbench

```verilog
`timescale 1ns/1ps

module tb_conditional_operator;

reg sel;
reg [3:0] a;
reg [3:0] b;

wire [3:0] y;

conditional_operator uut(

    .sel(sel),
    .a(a),
    .b(b),
    .y(y)

);

initial begin

    $dumpfile("conditional_operator.vcd");
    $dumpvars(0, tb_conditional_operator);

    sel = 0;
    a = 4'd5;
    b = 4'd10;

    #10;

    sel = 1;

    #10;

    a = 4'd12;
    b = 4'd3;

    #10;

    $finish;

end

endmodule
```

---

# Compilation

```bash
iverilog -o conditional_operator conditional_operator.v tb_conditional_operator.v
```

---

# Simulation

```bash
vvp conditional_operator
```

---

# Waveform

Open the generated waveform using GTKWave.

```bash
gtkwave conditional_operator.vcd
```

---

# Expected Output

```text
sel = 0  a = 5   b = 10  y = 10
sel = 1  a = 5   b = 10  y = 5
sel = 1  a = 12  b = 3   y = 12
```

---

# Applications

- 2:1 Multiplexer
- Data selection
- Address selection
- ALU output selection
- Default value assignment
- Combinational RTL design

---

# Best Practices

- Use the Conditional Operator for simple combinational logic.
- Use `if-else` when the logic becomes complex.
- Keep nested ternary operators to a minimum.
- Ensure both expressions have compatible widths.

---

# Common Mistakes

- Confusing assignment (`=`) with comparison (`==`) in the condition.
- Using deeply nested ternary operators, making the code difficult to read.
- Assigning expressions with mismatched widths.
- Using the Conditional Operator for overly complex decision logic.

---

# Interview Corner

### Q1. What is the Conditional (Ternary) Operator?

**Answer:** It selects one of two expressions based on a condition using the syntax `condition ? true_expression : false_expression`.

---

### Q2. What hardware is synthesized for `assign y = sel ? a : b;`?

**Answer:** A **2:1 Multiplexer**.

---

### Q3. When should you use the Conditional Operator instead of `if-else`?

**Answer:** For simple combinational decisions that can be expressed in a single assignment.

---

### Q4. Can the Conditional Operator be nested?

**Answer:** Yes, but excessive nesting reduces readability and should generally be avoided.

---

# References

- IEEE Verilog HDL Standard
- Icarus Verilog Documentation