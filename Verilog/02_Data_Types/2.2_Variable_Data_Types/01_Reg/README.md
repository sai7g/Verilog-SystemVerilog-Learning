# Reg Data Type

## Objective

Learn the Verilog `reg` data type, its purpose, behavior, synthesizability, and practical RTL applications.

Unlike net data types (`wire`, `tri`, `wand`, etc.), a `reg` stores a value until it is assigned a new one inside a procedural block.

Understanding `reg` is essential before learning:

- Initial Block
- Always Block
- Sequential Logic
- Combinational Logic
- Flip-Flops
- Latches
- Finite State Machines (FSMs)

---

## Repository Structure

```
01_Reg/
│
├── README.md
├── notes.md
├── 01_reg_basic.v
├── 02_reg_important_concept.v
├── 03_reg_special_behavior.v
│
└── Practice/
    ├── practice_01_reg.v
    ├── practice_02_reg.v
    ├── practice_03_reg.v
    └── practice_04_reg.v
```

---

## Learning Goals

After completing this folder you should understand:

- What a `reg` is
- Why `reg` exists
- Difference between `reg` and `wire`
- How procedural assignments work
- How values are stored
- Simulator behavior
- RTL synthesizability
- Common beginner mistakes
- Interview questions

---

## Topics Covered

- Declaration
- Single-bit reg
- Multi-bit reg
- Initial values
- Procedural assignments
- Value retention
- Register vs storage element
- Synthesizable usage
- Common misconceptions

---

## Industry Relevance

`reg` is one of the most frequently used Verilog data types.

Examples include:

- Flip-flops
- Counters
- State machines
- Registers
- Pipeline stages
- Control signals
- Temporary variables inside procedural blocks

Every RTL engineer should thoroughly understand this data type before moving to sequential logic.

---

## Prerequisites

Complete:

- Basics
- Net Data Types

before studying this topic.

---

## Next Topic

Variable Data Types

- reg ✅
- integer
- time
- real
- realtime