# Module 4 – Part 4: Bitwise Operators

## Overview

Bitwise operators perform operations on each individual bit of one or more operands. Unlike logical operators, which return a single-bit result, bitwise operators return a result with the same width as the operands.

Bitwise operators are fundamental in RTL (Register Transfer Level) design because digital hardware processes data as collections of bits. These operators are widely used in FPGA and ASIC designs for implementing ALUs, masking operations, parity generation, control logic, and instruction decoding.

---

## Learning Objectives

After completing this module, you will be able to:

- Understand how bitwise operators work.
- Differentiate between logical and bitwise operators.
- Implement bitwise operations in Verilog.
- Understand the hardware synthesized from each operator.
- Simulate bitwise operations using Icarus Verilog.
- Visualize outputs using GTKWave.

---

## Bitwise Operators

| Operator | Description |
|----------|-------------|
| `&` | Bitwise AND |
| `|` | Bitwise OR |
| `^` | Bitwise XOR |
| `~` | Bitwise NOT |
| `~^` or `^~` | Bitwise XNOR |

---

## Example

```verilog
assign and_out = a & b;
assign or_out  = a | b;
assign xor_out = a ^ b;
assign not_out = ~a;
assign xnor_out = a ~^ b;
```

---

## Hardware Implementation

Each bitwise operator directly maps to logic gates.

```
Bitwise AND

a3 ----\
         AND ---- y3
b3 ----/

a2 ----\
         AND ---- y2
b2 ----/

...
```

- `&` → AND Gates
- `|` → OR Gates
- `^` → XOR Gates
- `~` → Inverters (NOT Gates)
- `~^` → XNOR Gates

---

## Applications

Bitwise operators are commonly used in:

- Arithmetic Logic Units (ALUs)
- Register masking
- Instruction decoding
- Control registers
- Error detection
- Encryption algorithms
- Parity generation
- Status flag manipulation

---

## Project Files

```
04_Bitwise_Operators/
├── README.md
├── notes.md
├── bitwise_operators.v
└── bitwise_operators_tb.v
```

---

## Compilation

```bash
iverilog -o bitwise_sim bitwise_operators.v bitwise_operators_tb.v
```

---

## Simulation

```bash
vvp bitwise_sim
```

---

## Waveform

The testbench generates a VCD file using:

```verilog
$dumpfile("bitwise_operators.vcd");
$dumpvars(0, bitwise_operators_tb);
```

View the waveform using:

```bash
gtkwave bitwise_operators.vcd
```

---

## Expected Output

```
a = 1010
b = 1100

AND  = 1000
OR   = 1110
XOR  = 0110
NOT  = 0101
XNOR = 1001
```

---

## Key Takeaways

- Bitwise operators work on every individual bit.
- The output width is the same as the operand width.
- They synthesize directly into logic gates.
- They are essential for RTL design and digital hardware development.
- Do not confuse bitwise operators with logical operators.

---

## Next Module

**Module 4 – Part 5: Reduction Operators**

Topics include:

- Reduction AND
- Reduction OR
- Reduction XOR
- Reduction NAND
- Reduction NOR
- Reduction XNOR

These operators are heavily used for parity generation, zero detection, interrupt detection, and flag generation.