# Verilog Procedural Blocks - Always Block

## Objective

Learn the `always` procedural block in Verilog, understand its syntax, hardware implementation, and applications in both combinational and sequential RTL design.

---

# Introduction

The `always` block is a procedural block that executes repeatedly whenever an event specified in its sensitivity list occurs.

Depending on the sensitivity list, an `always` block can model:

- Combinational Logic
- Sequential Logic

It is one of the most widely used constructs in Verilog for describing synthesizable hardware.

---

# Types of Always Blocks

| Always Block | Description | Hardware |
|--------------|-------------|----------|
| `always @(*)` | Executes whenever any input changes | Combinational Logic |
| `always @(posedge clk)` | Executes on the rising edge of the clock | D Flip-Flop |
| `always @(negedge clk)` | Executes on the falling edge of the clock | D Flip-Flop |

---

# Combinational Always Block

## Syntax

```verilog
always @(*) begin
    y = a & b;
end
```

### Characteristics

- Executes whenever an input changes.
- Models combinational logic.
- Uses **blocking assignment (`=`)**.
- Does not store data.

### Hardware

AND Gate

---

# Sequential Always Block

## Syntax

```verilog
always @(posedge clk) begin
    q <= d;
end
```

### Characteristics

- Executes only on the clock edge.
- Models sequential logic.
- Uses **non-blocking assignment (`<=`)**.
- Stores data.

### Hardware

Positive Edge Triggered D Flip-Flop

---

# Hardware Mapping

| Verilog Code | Hardware Synthesized |
|--------------|----------------------|
| `always @(*)` | Combinational Logic |
| `always @(posedge clk)` | Positive Edge Triggered D Flip-Flop |
| `always @(negedge clk)` | Negative Edge Triggered D Flip-Flop |

---

# Compilation

## Combinational Example

```bash
iverilog -o combinational combinational_always.v tb_combinational_always.v
```

## Sequential Example

```bash
iverilog -o sequential sequential_always.v tb_sequential_always.v
```

---

# Simulation

```bash
vvp combinational
```

```bash
vvp sequential
```

---

# Waveform

```bash
gtkwave combinational_always.vcd
```

```bash
gtkwave sequential_always.vcd
```

---

# Applications

- Logic Gates
- Multiplexers
- Comparators
- Registers
- Flip-Flops
- Counters
- Shift Registers
- Finite State Machines
- Pipeline Registers

---

# Best Practices

- Use `always @(*)` for combinational logic.
- Use `always @(posedge clk)` for sequential logic.
- Use blocking assignment (`=`) for combinational logic.
- Use non-blocking assignment (`<=`) for sequential logic.
- Keep combinational and sequential logic in separate `always` blocks.

---

# Common Mistakes

- Missing signals in the sensitivity list.
- Using blocking assignment inside sequential logic.
- Using non-blocking assignment inside simple combinational logic.
- Mixing combinational and sequential logic in one block.

---

# Interview Corner

### Q1. What is the difference between `initial` and `always`?

**Answer:**

- `initial` executes once.
- `always` executes repeatedly.

---

### Q2. What hardware does `always @(*)` synthesize?

**Answer:** Combinational logic.

---

### Q3. What hardware does `always @(posedge clk)` synthesize?

**Answer:** A positive edge-triggered D Flip-Flop.

---

### Q4. Which assignment operator should be used in each type?

**Answer:**

- Combinational → Blocking (`=`)
- Sequential → Non-blocking (`<=`)

---

# References

- IEEE Verilog HDL Standard
- Icarus Verilog Documentation