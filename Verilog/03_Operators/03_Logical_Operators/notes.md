# Notes - Logical Operators

## Definition

Logical operators evaluate logical expressions and return a **1-bit result**.

- `1` → True
- `0` → False

They are primarily used in decision-making and conditional logic.

---

# Logical Operators

| Operator | Description |
|----------|-------------|
| `&&` | Logical AND |
| `||` | Logical OR |
| `!` | Logical NOT |

---

# Logical AND (`&&`)

Returns **1** only if **both operands are non-zero**.

### Example

```verilog
assign y = a && b;
```

Truth Table:

| A | B | Output |
|---|---|--------|
|0|0|0|
|0|1|0|
|1|0|0|
|1|1|1|

---

# Logical OR (`||`)

Returns **1** if **at least one operand is non-zero**.

### Example

```verilog
assign y = a || b;
```

Truth Table:

| A | B | Output |
|---|---|--------|
|0|0|0|
|0|1|1|
|1|0|1|
|1|1|1|

---

# Logical NOT (`!`)

Inverts the logical value.

### Example

```verilog
assign y = !a;
```

Truth Table:

| A | Output |
|---|--------|
|0|1|
|1|0|

---

# Logical vs Bitwise Operators

| Logical | Bitwise |
|----------|----------|
| `&&` | `&` |
| `||` | `|` |
| `!` | `~` |
| Returns 1 bit | Returns multiple bits |
| Used in conditions | Used for bit manipulation |

---

# Hardware Mapping

Logical operators synthesize into simple combinational logic.

Example:

```verilog
assign enable = valid && ready;
```

Synthesized Hardware:

AND gate controlling the `enable` signal.

---

# Applications

- `if` statements
- FSM transitions
- Enable signals
- Reset logic
- Loop conditions
- Testbenches

---

# Common Mistakes

- Using `&` instead of `&&`.
- Using `|` instead of `||`.
- Using `~` instead of `!`.
- Expecting logical operators to operate on each bit individually.
- Forgetting that logical operators always produce a single-bit result.

---

# Best Practices

- Use logical operators only for conditions.
- Use bitwise operators for data manipulation.
- Keep conditional expressions simple and readable.
- Verify logic through simulation.

---

# Interview Points

- List all logical operators.
- Explain the difference between logical and bitwise operators.
- State where logical operators are commonly used.
- Explain why logical operators return only one bit.

---

# Summary

- Verilog provides three logical operators: `&&`, `||`, and `!`.
- Logical operators evaluate expressions as true or false.
- They always return a 1-bit result.
- They are widely used in conditional logic, FSMs, and testbenches.
- Do not confuse logical operators with bitwise operators.