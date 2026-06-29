# Verilog Data Types - Scalars, Vectors, Bit-Select, and Part-Select

## Objective

Learn how to represent single-bit and multi-bit signals in Verilog using scalars and vectors (buses). This module also covers bit-select and part-select operations, which are essential for digital design.

---

# What is a Scalar?

A **scalar** is a signal that is **1 bit wide**. It can hold a value of `0` or `1` (or `x`/`z` during simulation).

### Syntax

```verilog
wire a;
reg b;
```

### Applications

- Clock (`clk`)
- Reset (`rst`)
- Enable (`en`)
- Control signals

---

# What is a Vector (Bus)?

A **vector**, also known as a **bus**, is a collection of multiple bits treated as a single signal.

Instead of declaring multiple individual signals:

```verilog
wire b0, b1, b2, b3;
```

Use a vector:

```verilog
wire [3:0] data;
```

This creates a **4-bit bus** named `data`.

---

# Vector Syntax

```verilog
wire [MSB:LSB] signal_name;
reg  [MSB:LSB] signal_name;
```

### Examples

```verilog
wire [3:0] data;
reg  [7:0] counter;
wire [31:0] address;
```

---

# MSB and LSB

- **MSB (Most Significant Bit)**: Highest index
- **LSB (Least Significant Bit)**: Lowest index

Example:

```text
data[7] data[6] data[5] data[4] data[3] data[2] data[1] data[0]
  MSB                                                    LSB
```

---

# Bit-Select

A **bit-select** is used to access a single bit of a vector.

### Syntax

```verilog
signal[index]
```

### Example

```verilog
wire [7:0] data;

assign y = data[2];
```

This assigns bit 2 of `data` to `y`.

---

# Part-Select

A **part-select** is used to access a range of bits from a vector.

### Syntax

```verilog
signal[MSB:LSB]
```

### Example

```verilog
wire [15:0] data;

assign upper_byte = data[15:8];
assign lower_byte = data[7:0];
```

---

# Example RTL

```verilog
module vector_example(
    input  wire [3:0] a,
    input  wire [3:0] b,
    output wire [3:0] y
);

assign y = a & b;

endmodule
```

---

# Compilation

```bash
iverilog -o vector_sim vector_example.v tb_vector_example.v
```

---

# Simulation

```bash
vvp vector_sim
```

---

# View Waveform

```bash
gtkwave vector_example.vcd
```

---

# Expected Output

| a | b | y = a & b |
|---|---|-----------|
|0000|1111|0000|
|1010|1100|1000|
|1111|0011|0011|

---

# Key Points

- Scalars are 1-bit signals.
- Vectors (buses) are multi-bit signals.
- Use bit-select to access one bit.
- Use part-select to access multiple consecutive bits.
- Vectors make RTL code cleaner and scalable.

---

# References

- IEEE Verilog HDL Standard
- Icarus Verilog Documentation