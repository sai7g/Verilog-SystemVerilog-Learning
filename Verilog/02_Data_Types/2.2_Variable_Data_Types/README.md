# Variable Data Types

## Objective

Learn the Verilog **Variable Data Types**, which are used to store values assigned inside procedural blocks such as `initial` and `always`.

Unlike **Net Data Types**, which represent physical connections and require drivers, **Variable Data Types** can hold values until they are updated by procedural statements.

Understanding variable data types is essential for writing synthesizable RTL, testbenches, finite state machines (FSMs), counters, registers, memories, and sequential logic.

---

## Topics Covered

* REG
* INTEGER
* TIME
* REAL
* REALTIME

---

## Folder Structure

```text
2.2_Variable_Data_Types/
├── 01_Reg/
│   ├── README.md
│   ├── notes.md
│   ├── 01_reg_basic.v
│   ├── 02_reg_procedural_assignment.v
│   ├── 03_reg_storage_behavior.v
│   └── Practice/
├── 02_Integer/
├── 03_Time/
├── 04_Real/
└── 05_Realtime/
```

---

## What are Variable Data Types?

Variable data types are used to **store values** assigned from procedural blocks.

Typical procedural blocks include:

* `initial`
* `always`

Unlike net data types, variables do not require continuous drivers.

---

## Net Data Types vs Variable Data Types

| Net Data Types                 | Variable Data Types              |
| ------------------------------ | -------------------------------- |
| Represent physical connections | Represent stored values          |
| Driven continuously            | Assigned procedurally            |
| Use `assign` or module outputs | Use `initial` or `always`        |
| Cannot directly store values   | Can hold values until reassigned |

---

## Learning Outcomes

After completing this module, you will be able to:

* Understand the difference between nets and variables.
* Choose the correct variable type for a design.
* Write synthesizable procedural code.
* Understand how variables behave in simulation.
* Avoid common beginner mistakes.
* Build sequential and combinational RTL correctly.

---

## Industry Relevance

Variable data types form the foundation of RTL design.

They are used in:

* Flip-flops
* Latches
* Finite State Machines (FSMs)
* Counters
* Registers
* Memories
* Testbenches
* Control logic

Every RTL Design Engineer must understand variable data types before moving to advanced topics such as procedural blocks, FSMs, memories, and pipelines.
