# Verilog Data Types - wire and reg

## Objective

Learn the two fundamental Verilog data types: `wire` and `reg`, understand their differences, and know when to use each in RTL design.

---

## What is a wire?

A `wire` represents a physical connection between hardware components. It does not store a value; instead, it continuously reflects the value driven onto it.

### Syntax

```verilog
wire signal_name;
wire [7:0] data;
```

### Used With

- `assign` statement
- Module outputs
- Connecting modules together

### Example

```verilog
assign y = a & b;
```

---

## What is a reg?

A `reg` is a data type used to hold values assigned inside procedural blocks such as `always` and `initial`.

> **Note:** A `reg` does **not** always synthesize into a hardware register (flip-flop). The synthesized hardware depends on the procedural logic.

### Syntax

```verilog
reg signal_name;
reg [7:0] data;
```

### Used With

- `always` block
- `initial` block

### Example

```verilog
always @(*) begin
    y = a & b;
end
```

---

## Difference Between wire and reg

| Feature | wire | reg |
|---------|------|-----|
| Stores value | No | Yes (procedural variable) |
| Assigned using | `assign` | `always` / `initial` |
| Represents | Physical connection | Procedural variable |
| Used in combinational logic | Yes | Yes |
| Always creates flip-flop | No | No |

---

## Hardware Concept

### wire

```
A ----\
       AND ---- Y
B ----/
```

Only a connection is created.

### reg (Combinational)

```verilog
always @(*) begin
    y = a & b;
end
```

Synthesizes to the same AND gate without any flip-flop.

---

## Files

```
wire_example.v
tb_wire_example.v
```

---

## Compilation

```bash
iverilog -o wire_sim wire_example.v tb_wire_example.v
```

---

## Simulation

```bash
vvp wire_sim
```

---

## View Waveform

```bash
gtkwave wire_example.vcd
```

---

## Expected Output

| a | b | y |
|---|---|---|
|0|0|0|
|0|1|0|
|1|0|0|
|1|1|1|

---

## Key Points

- `wire` is used for continuous assignments.
- `reg` is used inside procedural blocks.
- `reg` does not necessarily infer a flip-flop.
- Choose the correct data type based on how the signal is assigned.

---

## References

- IEEE Verilog HDL Standard
- Icarus Verilog Documentation