# Module 02: Verilog Data Types

This module introduces the different data types available in Verilog HDL. Data types determine how signals store or represent values during simulation and synthesis.

Understanding data types is essential because every Verilog design uses them to connect modules, store values, and model digital hardware.

---

# Learning Objectives

After completing this module, you will be able to:

- Understand the classification of Verilog data types.
- Differentiate between Net and Variable data types.
- Learn the purpose of each net type.
- Understand the `reg` variable type.
- Declare scalar and vector signals.
- Represent numbers using different number systems.
- Select the appropriate data type for synthesizable RTL.

---

# Module Structure

## 2.1 Net Data Types

Topics include:

- wire
- tri
- wand
- triand
- wor
- trior
- trireg
- supply0
- supply1

📄 Documentation: `2.1_Net_Data_Types.md`

---

## 2.2 Variable Data Types

Topics include:

- reg
- integer
- time
- real
- realtime

📄 Documentation: `2.2_Variable_Data_Types.md`

---

## 2.3 Vectors

Topics include:

- Scalar
- Vector Declaration
- Bit Select
- Part Select
- Packed Signals

📄 Documentation: `2.3_Vectors.md`

---

## 2.4 Number Literals

Topics include:

- Binary
- Decimal
- Octal
- Hexadecimal
- Unknown (x)
- High Impedance (z)
- Signed Numbers

📄 Documentation: `2.4_Number_Literals.md`

---

# Repository Structure

```text
02_Data_Types/
│
├── README.md
├── notes.md
├── 2.1_Net_Data_Types.md
├── 2.2_Variable_Data_Types.md
├── 2.3_Vectors.md
├── 2.4_Number_Literals.md
│
├── 01_Wire/
├── 02_Reg/
├── 03_Vectors/
├── 04_Number_Literals/
└── practice/
```

---

# Tools

- Icarus Verilog
- GTKWave
- Visual Studio Code
- Git
- GitHub

---

# Learning Outcome

After completing this module, you will confidently declare signals, understand Verilog's data type hierarchy, and select the correct data type for RTL design.

---

## Next Module

**Module 03 – Operators**