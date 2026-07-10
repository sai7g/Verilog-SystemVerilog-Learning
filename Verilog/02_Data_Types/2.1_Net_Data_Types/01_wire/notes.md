# Wire Data Type

## Introduction

The `wire` data type is the default **net data type** in Verilog HDL. It represents a physical connection between hardware components such as logic gates, modules, and buses.

A `wire` does **not store data**. Instead, it continuously reflects the value driven by another source.

---

# Definition

A `wire` is used to model physical connections in digital circuits. It must always be driven by:

- A continuous assignment (`assign`)
- A module output
- A gate primitive

A `wire` cannot be assigned inside an `initial` or `always` block.

---

# Characteristics

- Net data type
- Default net in Verilog
- Cannot store values
- Supports continuous assignment
- Can have multiple drivers
- Used for module interconnections
- Synthesizable

---

# Syntax

## Single-bit Wire

```verilog
wire a;
```

## Multiple Wires

```verilog
wire a, b, c;
```

## Vector Wire

```verilog
wire [7:0] data;
```

---

# Hardware Representation

```
Input -------- wire -------- Output
```

The wire simply transfers the signal from the source to the destination.

---

# Scalar Wire

A scalar wire contains only one bit.

Example:

```verilog
wire clk;
```

Possible values:

- 0
- 1
- x (Unknown)
- z (High Impedance)

---

# Vector Wire

A vector wire contains multiple bits.

Example:

```verilog
wire [7:0] data_bus;
```

Bit positions:

```
data_bus[7] ........ data_bus[0]
```

---

# Continuous Assignment

A wire is commonly driven using the `assign` statement.

Example:

```verilog
wire y;

assign y = a & b;
```

Whenever `a` or `b` changes, `y` updates automatically.

---

# Module Connection

Wires are used to connect one module to another.

Example:

```text
Module A ---- wire ---- Module B
```

---

# Common Applications

- Connecting modules
- Internal signal routing
- Logic gate outputs
- Data buses
- FPGA routing
- ASIC routing

---

# Wire vs Reg

| Feature | wire | reg |
|----------|------|-----|
| Stores Value | No | Yes |
| Assignment | assign | always / initial |
| Represents | Physical Connection | Storage Variable |
| Synthesizable | Yes | Yes |

---

# Common Mistakes

### Incorrect

```verilog
wire a;

always @(*)
    a = b;
```

Reason:

A `wire` cannot be assigned inside a procedural block.

---

### Correct

```verilog
reg a;

always @(*)
    a = b;
```

or

```verilog
wire a;

assign a = b;
```

---

# Best Practices

- Use `wire` for combinational connections.
- Use meaningful signal names.
- Declare vector widths explicitly.
- Avoid procedural assignments to wires.
- Use `wire` to connect modules.

---

# Summary

- `wire` is the default net data type.
- It models physical connections.
- It cannot store data.
- It is driven continuously.
- It is widely used in synthesizable RTL.

---

# Interview Questions

## Basic

1. What is a `wire` in Verilog?
2. Why can't a `wire` store a value?
3. What is the default net type?

## Intermediate

4. Difference between `wire` and `reg`.
5. Can a `wire` be assigned inside an `always` block?
6. Explain continuous assignment.

## Advanced

7. Can a `wire` have multiple drivers?
8. How does synthesis treat a `wire`?
9. Explain `wire` in FPGA routing.
10. Why is `wire` considered a net?

---

# Practice Questions

## Easy

1. Declare a single-bit wire.
2. Declare four wires.
3. Declare an 8-bit wire.

## Medium

4. Connect two modules using a wire.
5. Implement an AND gate using `assign`.
6. Create a 16-bit bus.

## Advanced

7. Connect three modules using wires.
8. Design an 8-bit combinational circuit using only wires.
9. Compare `wire` and `reg` using simulation.
10. Create a module with multiple wire connections.

---

# References

1. IEEE Std 1364 – Verilog Hardware Description Language.
2. Samir Palnitkar, *Verilog HDL: A Guide to Digital Design and Synthesis*.
3. Donald E. Thomas & Philip R. Moorby, *The Verilog Hardware Description Language*.
4. Xilinx Vivado Design Suite Documentation.
5. Intel FPGA Documentation.