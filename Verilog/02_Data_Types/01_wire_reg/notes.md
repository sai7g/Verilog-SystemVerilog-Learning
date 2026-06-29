# Notes - Verilog Data Types (wire and reg)

## Data Types

Every signal in Verilog must have a data type. The two basic data types are:

- wire
- reg

---

## wire

- Represents a physical connection.
- Does not store a value.
- Updated continuously.
- Driven using the `assign` statement or module outputs.

### Syntax

```verilog
wire a;
wire [7:0] data;
```

### Example

```verilog
assign y = a & b;
```

---

## reg

- Holds values assigned inside procedural blocks.
- Used in `always` and `initial` blocks.
- Does not always represent a hardware register.

### Syntax

```verilog
reg a;
reg [7:0] data;
```

### Example

```verilog
always @(*) begin
    y = a & b;
end
```

---

## Hardware Mapping

### wire

- Represents a connection between hardware blocks.
- No storage element is synthesized.

### reg

- In a combinational `always @(*)` block → Combinational logic.
- In a clocked `always @(posedge clk)` block → Flip-flop.

---

## Comparison

| wire | reg |
|------|-----|
| Continuous assignment | Procedural assignment |
| No storage | Holds assigned value |
| Used with assign | Used with always/initial |
| Physical connection | Procedural variable |

---

## Common Mistakes

1. Assigning a value to a `wire` inside an `always` block.
2. Using `assign` on a `reg`.
3. Assuming every `reg` becomes a flip-flop.
4. Forgetting to declare signal widths.

---

## Best Practices

- Use `wire` for module interconnections.
- Use `reg` for signals assigned in procedural blocks.
- Use meaningful signal names.
- Always use `always @(*)` for combinational logic.
- Comment important sections of your code.

---

## Interview Tips

- Understand the difference between `wire` and `reg`.
- Explain why `reg` is not the same as a hardware register.
- Know when to use `assign` versus `always`.
- Be able to identify synthesized hardware from Verilog code.

---

## Summary

- `wire` represents a hardware connection.
- `reg` is a procedural data type.
- The synthesized hardware depends on the coding style, not just the data type.
- Correct usage of `wire` and `reg` is fundamental to writing synthesizable RTL.