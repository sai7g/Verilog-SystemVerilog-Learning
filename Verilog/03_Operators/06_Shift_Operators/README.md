# Verilog Operators - Shift Operators

## Objective

Learn the shift operators available in Verilog, understand their syntax, hardware implementation, and applications in RTL design.

---

## Introduction

Shift operators move the bits of a binary number to the left or right by a specified number of positions.

They are widely used in digital hardware for data alignment, multiplication, division, address generation, and serial communication.

Shift operators are commonly used in:

- Arithmetic Logic Units (ALUs)
- Address generation
- Data alignment
- Multiplication by powers of two
- Division by powers of two
- Serial communication
- DSP algorithms
- Barrel shifters

---

## Shift Operators

| Operator | Description | Example |
|----------|-------------|---------|
| `<<` | Logical Left Shift | `a << 1` |
| `>>` | Logical Right Shift | `a >> 1` |
| `<<<` | Arithmetic Left Shift | `a <<< 1` |
| `>>>` | Arithmetic Right Shift | `a >>> 1` |

---

## Logical Left Shift (<<)

Moves all bits to the left.

Zeros are inserted into the least significant bit (LSB) positions.

### Example

```verilog
assign y = a << 1;
```

```
a = 1010

a << 1 = 0100
```

---

## Logical Right Shift (>>)

Moves all bits to the right.

Zeros are inserted into the most significant bit (MSB) positions.

### Example

```verilog
assign y = a >> 1;
```

```
a = 1010

a >> 1 = 0101
```

---

## Arithmetic Left Shift (<<<)

Arithmetic left shift behaves the same as logical left shift.

### Example

```verilog
assign y = a <<< 2;
```

```
a = 1010

a <<< 2 = 1000
```

---

## Arithmetic Right Shift (>>>)

Arithmetic right shift preserves the sign bit when shifting signed numbers.

### Example

```verilog
reg signed [7:0] a;

assign y = a >>> 1;
```

```
a = 11111000 (-8)

a >>> 1 = 11111100 (-4)
```

---

## Logical vs Arithmetic Right Shift

| Logical Right Shift | Arithmetic Right Shift |
|---------------------|------------------------|
| `>>` | `>>>` |
| Inserts zeros | Preserves sign bit |
| Used for unsigned numbers | Used for signed numbers |

---

## Hardware Concept

Shift operators synthesize into shifter circuits.

Fixed shifts usually synthesize into simple wiring.

Variable shifts synthesize into barrel shifters.

Example

```verilog
assign y = a << 1;
```

Hardware

```
a3 ---------> y2
a2 ---------> y1
a1 ---------> y0
0 ----------> y3
```

---

## Example

```verilog
module shift_operators;

reg signed [7:0] data;

initial begin

    data = 8'b11111000;

    $display("<< 1 = %b", data << 1);
    $display(">> 1 = %b", data >> 1);
    $display("<<<1 = %b", data <<< 1);
    $display(">>>1 = %b", data >>> 1);

    $finish;

end

endmodule
```

---

## Compilation

```bash
iverilog -o shift_sim shift_operators.v shift_operators_tb.v
```

---

## Simulation

```bash
vvp shift_sim
```

---

## Expected Output

```
Data   <<1      >>1      <<<1     >>>1

11111000
11110000
01111100
11110000
11111100
```

---

## Applications

- ALUs
- Address generation
- Data alignment
- Serial communication
- DSP
- Barrel shifters
- Multiplication by 2ⁿ
- Division by 2ⁿ

---

## Best Practices

- Use `>>` for unsigned data.
- Use `>>>` for signed data.
- Declare signed signals using the `signed` keyword.
- Simulate before synthesis.
- Be aware of data width during shifts.

---

## Common Mistakes

- Confusing `>>` with `>>>`.
- Forgetting to declare signed variables.
- Assuming arithmetic left shift differs from logical left shift.
- Ignoring overflow after left shifts.

---

## Interview Corner

### Q1. What are the shift operators in Verilog?

**Answer:** `<<`, `>>`, `<<<`, `>>>`.

---

### Q2. What is the difference between `>>` and `>>>`?

**Answer:** `>>` inserts zeros, while `>>>` preserves the sign bit for signed operands.

---

### Q3. What hardware is synthesized for shift operations?

**Answer:** Fixed shifts synthesize into wiring, while variable shifts synthesize into barrel shifters.

---

### Q4. Why are shift operators preferred over multiplication and division by powers of two?

**Answer:** They require less hardware and are more efficient.

---

## References

- IEEE Verilog HDL Standard
- Icarus Verilog Documentation
- GTKWave Documentation