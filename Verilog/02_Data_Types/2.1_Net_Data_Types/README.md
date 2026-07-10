# Net Data Types

Net data types represent the physical connections between hardware components in Verilog HDL. Unlike variables, nets do not store values. Instead, they continuously reflect the value driven onto them by one or more sources.

Net data types are primarily used to model wires, buses, and interconnections between modules in digital circuits.

---

# Learning Objectives

After completing this topic, you will be able to:

- Understand the concept of net data types.
- Differentiate between net and variable data types.
- Identify the different net data types available in Verilog.
- Select the appropriate net type for a given design.
- Understand multiple-driver behavior.
- Write synthesizable Verilog using net data types.

---

# Topics Covered

## 1. Introduction to Net Data Types

- What is a Net?
- Characteristics of Nets
- Net vs Variable

---

## 2. Net Data Types

- wire
- tri
- wand
- triand
- wor
- trior
- trireg
- supply0
- supply1

---

## 3. Common Applications

- Module Connections
- Continuous Assignments
- Shared Buses
- Multiple Drivers
- Constant Logic Sources

---

## Repository Structure

```text
01_Net_Data_Types/
│
├── README.md
├── notes.md
├── images/
│
├── 01_Wire/
├── 02_Tri/
├── 03_Wand/
├── 04_Triand/
├── 05_Wor/
├── 06_Trior/
├── 07_Trireg/
├── 08_Supply0/
└── 09_Supply1/
```

---

# Learning Outcome

After completing this topic, you will understand how Verilog models physical interconnections and how different net data types behave during simulation and synthesis.

---

## Next Topic

**Variable Data Types**