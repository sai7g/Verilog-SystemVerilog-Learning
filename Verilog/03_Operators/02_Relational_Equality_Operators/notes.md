# Notes - Relational and Equality Operators

## Definition

Relational and equality operators compare two operands and return a **1-bit result**.

- `1` → True
- `0` → False

These operators are commonly used in decision-making and comparison logic.

---

# Relational Operators

| Operator | Description |
|----------|-------------|
| `<` | Less than |
| `>` | Greater than |
| `<=` | Less than or equal to |
| `>=` | Greater than or equal to |

### Example

```verilog
assign greater = (a > b);
```

---

# Equality Operators

## Logical Equality

| Operator | Description |
|----------|-------------|
| `==` | Equal to |
| `!=` | Not equal to |

Example:

```verilog
assign equal = (a == b);
```

---

## Case Equality

| Operator | Description |
|----------|-------------|
| `===` | Case equal |
| `!==` | Case not equal |

Used when comparing values containing `x` and `z`.

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

| Feature | `==` | `===` |
|---------|------|--------|
| Compares `0` and `1` | Yes | Yes |
| Compares `x` and `z` exactly | No | Yes |
| Synthesizable RTL | Yes | Generally No |
| Testbench Usage | Limited | Common |

---

# Hardware Mapping

Comparison operators synthesize into **comparator circuits**.

Examples:

```verilog
a > b
```

→ Greater-than comparator

```verilog
a == b
```

→ Equality comparator

---

# Applications

- Comparators
- ALUs
- FSM transitions
- Counter limit checking
- Address comparison
- Conditional logic

---

# Common Mistakes

- Using `===` instead of `==` in RTL.
- Confusing relational and equality operators.
- Ignoring signal width differences.
- Misinterpreting `x` and `z` values in simulation.

---

# Best Practices

- Use `==` and `!=` for synthesizable designs.
- Use `===` and `!==` in testbenches.
- Match operand widths before comparison.
- Simulate comparison logic to verify correctness.

---

# Interview Points

- List all relational operators.
- List all equality operators.
- Explain the difference between `==` and `===`.
- Explain the purpose of `!==`.
- Identify the hardware synthesized by comparison operators.

---

# Summary

- Relational operators compare the magnitude of operands.
- Equality operators compare whether operands are equal.
- `==` and `!=` are used in synthesizable RTL.
- `===` and `!==` compare `x` and `z` values exactly and are mainly used in verification.
- Comparison operations synthesize into comparator hardware.