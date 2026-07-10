# Module 01: Verilog Basics

This module introduces the fundamental concepts of Verilog HDL. It is designed for beginners and provides the foundation required before moving to advanced Verilog language constructs and RTL design.

---

## Learning Objectives

After completing this module, you will be able to:

- Understand the purpose of Verilog HDL.
- Explain the Hardware Description Language (HDL).
- Understand Top-Down and Bottom-Up design methodologies.
- Learn Verilog lexical conventions.
- Write a basic Verilog program.
- Understand Verilog module structure.
- Declare input and output ports.
- Write a simple testbench.
- Compile and simulate Verilog designs.
- Generate waveform files using GTKWave.

---

## Topics Covered

### 1. Introduction to Verilog

- What is Verilog HDL?
- Hardware Description Language (HDL)
- Why Verilog?
- Applications of Verilog

### 2. Design Methodologies

- Top-Down Design
- Bottom-Up Design
- Hierarchical Design

📄 Documentation: `1.1_Design_Methodologies.md`

### 3. Lexical Conventions

- White Spaces
- Comments
- Identifiers
- Keywords
- Numbers
- Strings
- Operators
- Case Sensitivity

📄 Documentation: `1.2_lexical_conventions.md`

### 4. Verilog Module Basics

- Module Declaration
- Input Ports
- Output Ports
- Module Instantiation

### 5. Simulation Basics

- Testbench
- `$display`
- `$finish`
- `$dumpfile`
- `$dumpvars`
- GTKWave

---

## Repository Structure

```text
01_Basics/
├── README.md
├── notes.md
├── 1.1_Design_Methodologies.md
├── 1.2_lexical_conventions.md
├── hello.v
├── module_ports.v
├── tb_module_ports.v
├── images/
│   ├── top_down_design.png
│   └── bottom_up_design.png
└── practice/
    └── 01_Buffer/
```

---

## Example Programs

| File | Description |
|------|-------------|
| hello.v | First Verilog program |
| module_ports.v | Module declaration and ports |
| tb_module_ports.v | Testbench for module_ports |

---

## Tools Used

- Visual Studio Code
- Icarus Verilog
- GTKWave
- Git
- GitHub

---

## Learning Outcome

After completing this module, you will have a solid understanding of Verilog fundamentals and be prepared to learn data types, operators, procedural blocks, and RTL design.

---

## Next Module

**Module 02 – Data Types**