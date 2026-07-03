# Notes - Shift Operators

## Definition

Shift operators move the bits of a binary number to the left or right by a specified number of positions.

They are commonly used for bit manipulation, data alignment, multiplication, and division by powers of two in digital hardware.

---

## Shift Operators

| Operator | Description |
|----------|-------------|
| `<<` | Logical Left Shift |
| `>>` | Logical Right Shift |
| `<<<` | Arithmetic Left Shift |
| `>>>` | Arithmetic Right Shift |

---

## Logical Left Shift (<<)

Shifts all bits to the left.

Zeros are inserted into the least significant bit (LSB) positions.

### Example

```verilog
assign y = a << 1;
```

### Example

```
a = 4'b1010

a << 1 = 0100
```

---

## Logical Right Shift (>>)

Shifts all bits to the right.

Zeros are inserted into the most significant bit (MSB) positions.

### Example

```verilog
assign y = a >> 1;
```

### Example

```
a = 4'b1010

a >> 1 = 0101
```

---

## Arithmetic Left Shift (<<<)

Arithmetic left shift behaves the same as logical left shift in Verilog.

Zeros are inserted into the LSB positions.

### Example

```verilog
assign y = a <<< 2;
```

### Example

```
a = 4'b1010

a <<< 2 = 1000
```

---

## Arithmetic Right Shift (>>>)

Arithmetic right shift preserves the sign bit (MSB) when shifting signed numbers.

It is mainly used with signed data types.

### Example

```verilog
reg signed [7:0] a;

assign y = a >>> 1;
```

### Example

```
a = 8'b11111000   (-8)

a >>> 1 = 11111100   (-4)
```

The leftmost bit (sign bit) is replicated.

---

## Logical vs Arithmetic Right Shift

| Logical Right Shift (`>>`) | Arithmetic Right Shift (`>>>`) |
|-----------------------------|--------------------------------|
| Inserts zeros into MSB | Replicates the sign bit |
| Used for unsigned numbers | Used for signed numbers |
| Does not preserve sign | Preserves sign |

---

## Example

```
a = 1010

a << 1  = 0100
a >> 1  = 0101
a <<< 2 = 1000
```

Signed Example

```
a = 11111000 (-8)

a >>> 1 = 11111100 (-4)
```

---

## Hardware Mapping

Shift operators synthesize into shifter circuits.

### Fixed Shift

For a fixed shift amount, synthesis usually implements simple wiring.

Example

```verilog
assign y = a << 1;
```

### Variable Shift

For variable shift amounts, synthesis generally creates a **barrel shifter**.

---

## Applications

- Arithmetic Logic Units (ALUs)
- Address generation
- Data alignment
- Multiplication by 2ⁿ
- Division by 2ⁿ
- Serial communication
- DSP algorithms
- Barrel shifters

---

## Common Mistakes

- Confusing `>>` with `>>>`.
- Forgetting that `>>>` requires signed operands to preserve the sign bit.
- Assuming `<<<` behaves differently from `<<` in Verilog.
- Ignoring data width when shifting.
- Shifting by more than the width of the operand without considering the result.

---

## Best Practices

- Use `<<` for logical left shifts.
- Use `>>` for unsigned logical right shifts.
- Use `>>>` only with signed data.
- Declare signed signals explicitly using the `signed` keyword.
- Verify shift operations through simulation before synthesis.

---

## Interview Points

- List all shift operators in Verilog.
- Explain the difference between `>>` and `>>>`.
- Why does arithmetic right shift preserve the sign bit?
- What hardware is synthesized for shift operators?
- What is a barrel shifter?
- How can shift operators implement multiplication and division by powers of two?

---

## Summary

- Verilog provides four shift operators: `<<`, `>>`, `<<<`, and `>>>`.
- Logical shifts insert zeros into the vacant bit positions.
- Arithmetic right shift preserves the sign bit for signed numbers.
- Fixed shifts usually synthesize into simple wiring, while variable shifts are implemented using barrel shifters.
- Shift operators are widely used in ALUs, address generation, data alignment, and DSP applications.
- Understanding the difference between logical and arithmetic right shifts is a common FPGA/ASIC interview topic.