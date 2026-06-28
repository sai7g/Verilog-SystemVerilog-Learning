# Verilog Basics

## Objective

Learn the fundamentals of Verilog HDL, understand the structure of a Verilog module, and simulate simple digital circuits using Icarus Verilog.

---

## Topics Covered

### Module 1: Introduction to Verilog

* What is Verilog?
* Hardware Description Language (HDL)
* Basic Verilog Program
* Module Structure
* `initial` Block
* `begin-end` Block
* `$display`
* `$finish`
* Compilation and Simulation Flow

### Module 2: Module Structure and Ports

* Verilog Module
* Input Ports
* Output Ports
* Continuous Assignment (`assign`)
* Module Instantiation
* Testbench Basics
* VCD Waveform Generation
* GTKWave Visualization

---

## Files

| File                | Description                                      |
| ------------------- | ------------------------------------------------ |
| `hello.v`           | First Verilog program                            |
| `module_ports.v`    | AND gate module demonstrating input/output ports |
| `tb_module_ports.v` | Testbench for `module_ports.v`                   |
| `notes.md`          | Learning notes for Modules 1 and 2               |

---

## Compilation

### Hello Program

```bash
iverilog -o hello hello.v
```

### Module Ports Example

```bash
iverilog -o module_ports_sim module_ports.v tb_module_ports.v
```

---

## Simulation

### Hello Program

```bash
vvp hello
```

### Module Ports Example

```bash
vvp module_ports_sim
```

---

## Waveform Generation

The testbench generates a VCD (Value Change Dump) file.

Open it using GTKWave:

```bash
gtkwave module_ports.vcd
```

---

## Project Structure

```text
01_Basics/
├── README.md
├── notes.md
├── hello.v
├── module_ports.v
└── tb_module_ports.v
```

---

## Learning Outcomes

After completing this module, I can:

* Explain the purpose of Verilog HDL.
* Write a basic Verilog module.
* Declare input and output ports.
* Use continuous assignments with `assign`.
* Write a simple testbench.
* Instantiate a module.
* Compile and simulate designs using Icarus Verilog.
* Generate and analyze waveforms using GTKWave.

---

## Tools Used

* Visual Studio Code
* Icarus Verilog
* GTKWave
* Git
* GitHub

---

## Next Module

**Module 3: Verilog Data Types**

Topics include:

* `wire`
* `reg`
* Nets vs Variables
* Continuous vs Procedural Assignments
* Synthesizable Coding Practices
