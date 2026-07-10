# Module 01: Verilog Basics

## Overview

Verilog HDL is a Hardware Description Language (HDL) used to model, simulate, and design digital electronic systems. It is widely used for FPGA and ASIC development.

This module introduces the basic concepts that every Verilog learner should understand before writing complex hardware descriptions.

---

# Topics Covered

## 1. Introduction to Verilog

This topic introduces the fundamentals of Verilog HDL, including:

- What is Verilog?
- What is HDL?
- Why Verilog?
- Features
- Applications
- Levels of Abstraction
- Design Flow
- First Verilog Program

📄 See:

**1.0_Introduction_to_Verilog.md**

Example:

```verilog
module hello;

initial begin
    $display("Hello, Verilog!");
    $finish;
end

endmodule
```

---

## 2. Design Methodologies

Before writing Verilog code, it is important to understand how digital systems are designed.

This topic explains:

- Top-Down Design
- Bottom-Up Design
- Hierarchical Design

📄 See:

**1.1_Design_Methodologies.md**

---

## 3. Lexical Conventions

Understanding Verilog syntax begins with lexical conventions.

This topic covers:

- White Spaces
- Comments
- Identifiers
- Keywords
- Numbers
- Strings
- Operators
- Case Sensitivity

📄 See:

**1.2_lexical_conventions.md**

---

## 4. Module Structure

Topics include:

- Module Declaration
- Input Ports
- Output Ports
- Continuous Assignment
- Module Instantiation

Example:

```verilog
module module_ports(
    input a,
    input b,
    output y
);

assign y = a & b;

endmodule
```

---

## 5. Testbench Basics

A testbench is used to verify the functionality of a Verilog module by applying input stimuli and observing outputs.

Useful system tasks:

```verilog
$display();
$finish();
$dumpfile();
$dumpvars();
```

---

## Simulation Flow

Compile

```bash
iverilog -o module_ports_sim module_ports.v tb_module_ports.v
```

Run

```bash
vvp module_ports_sim
```

View Waveform

```bash
gtkwave module_ports.vcd
```

---

# Summary

After completing this module, you should be able to:

- Explain Verilog HDL.
- Understand HDL concepts.
- Describe Top-Down and Bottom-Up methodologies.
- Apply lexical conventions correctly.
- Write basic Verilog modules.
- Use module ports.
- Write simple testbenches.
- Simulate Verilog designs.
- Analyze waveforms using GTKWave.

---

# References

1. Samir Palnitkar – *Verilog HDL: A Guide to Digital Design and Synthesis*
2. IEEE Std 1364 – Verilog Hardware Description Language
3. Donald E. Thomas & Philip R. Moorby – *The Verilog Hardware Description Language*
4. Xilinx Vivado Documentation
5. Intel FPGA Documentation