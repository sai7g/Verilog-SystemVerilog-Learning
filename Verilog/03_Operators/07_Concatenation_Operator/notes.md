# Notes - Concatenation Operator

## Definition

The concatenation operator combines multiple signals into a single wider vector.

It joins bits together without performing any arithmetic or logical operation.

---

## Operator

| Operator | Description |
|----------|-------------|
| `{}` | Concatenation |

---

## Syntax

```verilog
assign out = {a,b};
```

---

## Example

```
a = 1010
b = 1100

{a,b}

↓

10101100
```

---

## Another Example

```verilog
assign out = {2'b11,4'b0101,2'b00};
```

Result

```
11010100
```

---

## Output Width

Output width equals the sum of all operand widths.

Example

```
a = 4 bits
b = 4 bits

Output = 8 bits
```

---

## Hardware Mapping

Concatenation synthesizes into simple wiring.

```
a3 ----------> out7
a2 ----------> out6
a1 ----------> out5
a0 ----------> out4

b3 ----------> out3
b2 ----------> out2
b1 ----------> out1
b0 ----------> out0
```

No logic gates are generated.

---

## Applications

- Bus creation
- Packet formation
- Register loading
- Instruction encoding
- Address generation
- Memory interfaces
- Communication protocols

---

## Common Mistakes

- Forgetting total output width.
- Reversing operand order.
- Expecting arithmetic operations.
- Connecting incompatible signal widths.

---

## Best Practices

- Always calculate the total output width.
- Place signals in the intended order.
- Use concatenation for bus creation only.
- Verify functionality using simulation.

---

## Interview Points

- What is concatenation?
- Does concatenation synthesize hardware?
- How is output width calculated?
- Where is concatenation used?
- What is the output of `{4'b1010,4'b1100}`?

---

## Summary

- `{}` combines multiple signals into one vector.
- It does not perform arithmetic or logical operations.
- It synthesizes into simple wiring.
- Output width equals the sum of operand widths.
- Concatenation is widely used in FPGA and ASIC RTL designs.