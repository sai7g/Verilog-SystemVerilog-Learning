# Notes - Always Block

## Definition

The `always` block is a procedural block that executes repeatedly whenever an event in its sensitivity list occurs.

It is used to model:

- Combinational Logic
- Sequential Logic

---

# Types of Always Blocks

| Syntax | Purpose |
|---------|----------|
| `always @(*)` | Combinational Logic |
| `always @(posedge clk)` | Sequential Logic |
| `always @(negedge clk)` | Sequential Logic |

---

# Combinational Always Block

```verilog
always @(*) begin
    y = a & b;
end
```

Characteristics

- Executes whenever inputs change.
- Uses blocking assignment (`=`).
- No data storage.

Hardware

Combinational Logic

---

# Sequential Always Block

```verilog
always @(posedge clk) begin
    q <= d;
end
```

Characteristics

- Executes on the clock edge.
- Uses non-blocking assignment (`<=`).
- Stores data.

Hardware

D Flip-Flop

---

# Hardware Mapping

| Always Block | Hardware |
|--------------|----------|
| `always @(*)` | Combinational Logic |
| `always @(posedge clk)` | D Flip-Flop |
| `always @(negedge clk)` | D Flip-Flop |

---

# Common Mistakes

- Missing sensitivity list signals.
- Using blocking assignment in sequential logic.
- Mixing combinational and sequential logic.
- Expecting combinational logic to store data.

---

# Best Practices

- Use `always @(*)` for combinational circuits.
- Use `always @(posedge clk)` for sequential circuits.
- Separate combinational and sequential logic.
- Follow assignment operator conventions.

---

# Interview Points

- `always` executes repeatedly.
- `always @(*)` models combinational hardware.
- `always @(posedge clk)` models sequential hardware.
- Blocking (`=`) is used for combinational logic.
- Non-blocking (`<=`) is used for sequential logic.

---

# Summary

- `always` is the foundation of behavioral RTL.
- Combinational logic reacts to input changes.
- Sequential logic reacts to clock edges.
- Correct sensitivity lists and assignment operators are essential for synthesizable RTL.