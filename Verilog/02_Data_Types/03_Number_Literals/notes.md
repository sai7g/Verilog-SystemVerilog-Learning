# Notes - Verilog Number Literals

## Definition

A **number literal** is a constant numeric value represented with a specified bit width and number base.

General syntax:

```verilog
<width>'<base><value>
```

Example:

```verilog
8'b10101010
```

---

## Components of a Number Literal

Example:

```verilog
8'hAA
```

- Width = 8 bits
- Base = Hexadecimal
- Value = AA

---

## Supported Number Bases

| Base | Symbol | Example |
|------|--------|---------|
| Binary | `b` | `4'b1010` |
| Decimal | `d` | `8'd25` |
| Hexadecimal | `h` | `8'hFF` |
| Octal | `o` | `6'o37` |

---

## Examples

### Binary

```verilog
4'b1101
```

### Decimal

```verilog
8'd170
```

### Hexadecimal

```verilog
8'hAA
```

### Octal

```verilog
8'o252
```

---

## Equivalent Values

```text
8'b10101010
8'd170
8'hAA
8'o252
```

All represent the same numeric value.

---

## Where Number Literals are Used

- Constant assignments
- Counter limits
- Memory addresses
- ALU operations
- Instruction encoding
- State machine encoding
- Register initialization

---

## Hardware Concept

Number literals represent **constant values**.

Example:

```verilog
assign y = a & 4'b1010;
```

The binary value `1010` is implemented as a fixed logic constant in hardware.

---

## Display Format Specifiers

| Format | Description |
|---------|-------------|
| `%b` | Binary |
| `%d` | Decimal |
| `%h` | Hexadecimal |
| `%o` | Octal |

Example:

```verilog
$display("%b", data);
$display("%d", data);
$display("%h", data);
$display("%o", data);
```

---

## Common Mistakes

- Missing the apostrophe (`'`).
- Using the wrong base specifier.
- Declaring an insufficient bit width.
- Assuming values larger than the declared width are preserved.

---

## Best Practices

- Always specify the width of constants.
- Use hexadecimal for addresses and instruction values.
- Use binary for bit-level operations.
- Keep constant widths consistent with signal widths.
- Verify constants during simulation.

---

## Interview Points

- Explain the syntax of Verilog number literals.
- Know all supported base specifiers.
- Understand the purpose of specifying bit width.
- Be able to convert between binary, decimal, hexadecimal, and octal.

---

## Summary

- Number literals define constant values in Verilog.
- General syntax: `<width>'<base><value>`.
- Supported bases: binary, decimal, hexadecimal, and octal.
- Number literals are heavily used in RTL design for constants, addresses, counters, and instruction encoding.

