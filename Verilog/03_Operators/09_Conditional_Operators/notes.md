# Notes - Conditional (Ternary) Operator

## Definition

The Conditional (Ternary) Operator selects one of two expressions based on a condition.

It is commonly used in:

- Multiplexers
- Data selection
- Address selection
- ALU output selection
- Default value assignment
- Combinational RTL design

---

# Conditional (Ternary) Operator

| Operator | Function |
|----------|----------|
| `?:` | Selects one of two expressions based on a condition |

---

# Basic Conditional Operation

```verilog
y = sel ? a : b;
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

Hardware:

2:1 Multiplexer

---

# Selecting the Maximum Value

```verilog
max = (a > b) ? a : b;
```

Used for:

- Comparators
- ALU operations
- Data selection

Hardware:

Comparator + Multiplexer

---

# Default Value Assignment

```verilog
out = enable ? data : 8'b00000000;
```

Used for:

- Enable logic
- Bus control
- Output control

Hardware:

Multiplexer

---

# Syntax

```verilog
condition ? true_expression : false_expression
```

Where:

- `condition` = Expression being evaluated
- `true_expression` = Selected when the condition is true
- `false_expression` = Selected when the condition is false

---

# Hardware Mapping

| Operation | Hardware |
|-----------|----------|
| `sel ? a : b` | 2:1 Multiplexer |
| `enable ? data : 0` | Multiplexer |
| Nested `?:` | Multiple multiplexers |

---

# Common Mistakes

- Using `=` instead of `==` in conditions.
- Writing deeply nested ternary operators.
- Assigning expressions with different widths.
- Using the ternary operator for complex decision-making.

---

# Best Practices

- Use the Conditional Operator for simple combinational logic.
- Prefer `if-else` for complex conditions.
- Keep expressions readable.
- Match the widths of both output expressions.

---

# Interview Points

- Know the syntax of the Conditional Operator.
- Understand that it synthesizes into a multiplexer.
- Know when to use it instead of `if-else`.
- Be able to explain nested ternary operators.

---

# Summary

- The Conditional Operator uses the syntax `condition ? true_expression : false_expression`.
- It is a compact way to implement combinational decision logic.
- It commonly synthesizes into a 2:1 multiplexer.
- It is widely used in FPGA and ASIC RTL design.