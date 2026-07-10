# Module 02: Verilog Data Types

## Overview

Data types define how information is represented and manipulated in Verilog. Every signal declared in a Verilog design belongs to either a **Net Data Type** or a **Variable Data Type**.

Understanding these categories is fundamental for writing correct and synthesizable Verilog code.

---

# Classification of Verilog Data Types

```
Verilog Data Types
│
├── Net Data Types
│   ├── wire
│   ├── tri
│   ├── wand
│   ├── triand
│   ├── wor
│   ├── trior
│   ├── trireg
│   ├── supply0
│   └── supply1
│
└── Variable Data Types
    ├── reg
    ├── integer
    ├── time
    ├── real
    └── realtime
```

---

# 2.1 Net Data Types

Net data types represent physical connections between hardware components.

Characteristics:

- Cannot store values.
- Require continuous drivers.
- Used to connect modules.
- Commonly driven using `assign`.

📄 Detailed Notes:

**2.1_Net_Data_Types.md**

---

# 2.2 Variable Data Types

Variable data types store values until assigned again.

Characteristics:

- Can store values.
- Used inside procedural blocks.
- Assigned using `initial` and `always`.

📄 Detailed Notes:

**2.2_Variable_Data_Types.md**

---

# 2.3 Vectors

Vectors represent multiple bits as a single signal.

Topics include:

- Scalar
- Vector Declaration
- Bit Select
- Part Select

📄 Detailed Notes:

**2.3_Vectors.md**

---

# 2.4 Number Literals

Verilog supports several number systems.

Topics include:

- Binary
- Decimal
- Octal
- Hexadecimal
- x (Unknown)
- z (High Impedance)
- Signed Numbers

📄 Detailed Notes:

**2.4_Number_Literals.md**

---

# Best Practices

- Use `wire` for continuous assignments.
- Use `reg` for procedural assignments.
- Declare vector widths explicitly.
- Use meaningful signal names.
- Prefer synthesizable data types for RTL design.

---

# Summary

After completing this module, you should understand:

- Net Data Types
- Variable Data Types
- Vector Declarations
- Number Literals
- Signal Representation
- Appropriate data type selection

---

# References

1. Samir Palnitkar, *Verilog HDL: A Guide to Digital Design and Synthesis*, 2nd Edition.
2. IEEE Std 1364 – Verilog Hardware Description Language.
3. Donald E. Thomas and Philip R. Moorby, *The Verilog Hardware Description Language*.
4. Xilinx Vivado Design Suite Documentation.
5. Intel FPGA Documentation.