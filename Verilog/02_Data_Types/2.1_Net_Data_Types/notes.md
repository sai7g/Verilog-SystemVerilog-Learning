# Net Data Types

## Introduction

In Verilog HDL, data types are broadly classified into **Net Data Types** and **Variable Data Types**.

A **Net Data Type** represents a physical connection between hardware components. Nets do not store values; instead, they continuously reflect the value driven onto them by one or more drivers.

---

# What is a Net?

A **net** models a physical wire used to connect hardware components such as logic gates, modules, and buses.

Unlike variables, nets cannot retain a value. Their value changes automatically whenever the driving source changes.

---

# Characteristics of Net Data Types

- Represent physical interconnections.
- Cannot store data.
- Must be continuously driven.
- Support multiple drivers.
- Commonly used with `assign` statements.
- Default net type in Verilog is `wire`.

---

# Classification of Net Data Types

```text
Net Data Types
│
├── wire
├── tri
├── wand
├── triand
├── wor
├── trior
├── trireg
├── supply0
└── supply1
```

> **Insert Figure:** Classification of Net Data Types

---

# Net Data Types Overview

| Data Type | Purpose | Synthesizable |
|-----------|---------|---------------|
| wire | Standard connection | ✔ Yes |
| tri | Tri-state connection | ✔ Yes (limited use) |
| wand | Wired-AND connection | Rare |
| triand | Tri-state wired-AND | Rare |
| wor | Wired-OR connection | Rare |
| trior | Tri-state wired-OR | Rare |
| trireg | Charge storage | ✖ No |
| supply0 | Constant logic 0 | ✔ Yes |
| supply1 | Constant logic 1 | ✔ Yes |

---

# Net vs Variable

| Feature | Net | Variable |
|---------|-----|----------|
| Stores Value | No | Yes |
| Driven By | Continuous assignment or module output | Procedural blocks |
| Assignment | `assign` | `always`, `initial` |
| Default Type | wire | reg |

---

# Real Hardware Analogy

Think of a **wire** in Verilog as an electrical wire on a PCB.

- If the source changes from 0 to 1, the wire immediately reflects the new value.
- The wire itself does not remember any previous value.
- It simply carries the signal from one point to another.

---

# Applications

Net data types are commonly used in:

- Connecting modules
- Internal signal routing
- FPGA interconnections
- ASIC routing
- Shared buses
- Tri-state communication

---

# Important Notes

- `wire` is the most commonly used net type.
- Nets cannot appear on the left-hand side of procedural assignments.
- Nets are continuously updated by their drivers.
- Multiple drivers are allowed depending on the net type.

---

# Summary

- Net data types represent physical connections.
- Nets cannot store values.
- The default net type is `wire`.
- Verilog provides several specialized net types for different hardware behaviors.
- In practical RTL design, `wire` is by far the most frequently used net type.

---

# Next Topics

1. Wire
2. Tri
3. Wand
4. Triand
5. Wor
6. Trior
7. Trireg
8. Supply0
9. Supply1

---

# References

1. IEEE Std 1364 – Verilog Hardware Description Language.
2. Samir Palnitkar, *Verilog HDL: A Guide to Digital Design and Synthesis*.
3. Donald E. Thomas & Philip R. Moorby, *The Verilog Hardware Description Language*.
4. Xilinx Vivado Design Suite Documentation.
5. Intel FPGA Documentation.