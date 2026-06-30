# Verilog Data Types - Number Literals

## Objective

Learn how to represent numeric values in Verilog using different number systems such as binary, decimal, hexadecimal, and octal. Understand the syntax of Verilog number literals and their applications in RTL design.

---

# Introduction

In Verilog, numbers can be represented with an explicit **bit width** and **number base**. This allows designers to accurately define constants used in digital hardware.

General syntax:

```verilog
<width>'<base><value>
```

Example:

```verilog
8'b10101010
```

- **8** → Bit width
- **'** → Separator
- **b** → Binary base
- **10101010** → Value

---

# Number Bases

Verilog supports the following number systems:

| Number System | Base Symbol | Example |
|--------------|------------|---------|
| Binary | `b` or `B` | `8'b10101010` |
| Decimal | `d` or `D` | `8'd170` |
| Hexadecimal | `h` or `H` | `8'hAA` |
| Octal | `o` or `O` | `8'o252` |

---

# Examples

## Binary

```verilog
4'b1101
```

Represents a 4-bit binary value.

---

## Decimal

```verilog
8'd170
```

Represents decimal value 170 using 8 bits.

---

## Hexadecimal

```verilog
8'hAA
```

Represents hexadecimal value AA using 8 bits.

---

## Octal

```verilog
8'o252
```

Represents octal value 252 using 8 bits.

---

# Equivalent Representations

| Binary | Decimal | Hexadecimal | Octal |
|---------|---------|-------------|-------|
| `8'b10101010` | `8'd170` | `8'hAA` | `8'o252` |

All four values represent the same number.

---

# Why Number Literals are Important

Number literals are widely used in RTL design for:

- Constant values
- Counter initialization
- Memory initialization
- Address generation
- Instruction encoding
- Bit masks
- Configuration registers

---

# Example Code

```verilog
module number_literals;

reg [7:0] data;

initial begin
    data = 8'hAA;

    $display("Binary  : %b", data);
    $display("Decimal : %d", data);
    $display("Hex     : %h", data);

    $finish;
end

endmodule
```

---

# Compilation

```bash
iverilog -o number_literals number_literals.v
```

---

# Simulation

```bash
vvp number_literals
```

---

# Output

```text
Binary  : 10101010
Decimal : 170
Hex     : aa
```

---

# Best Practices

- Always specify the bit width.
- Use hexadecimal for large constants.
- Use binary when individual bits are important.
- Use meaningful constant values in RTL designs.
- Verify values during simulation.

---

# Common Mistakes

- Forgetting the apostrophe (`'`).
- Using an incorrect base symbol.
- Declaring a width smaller than the value.
- Confusing decimal and hexadecimal numbers.

---

# References

- IEEE Verilog HDL Standard
- Icarus Verilog Documentation