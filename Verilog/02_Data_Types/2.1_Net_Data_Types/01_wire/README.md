# Wire Data Type

The `wire` data type is the default and most commonly used **net data type** in Verilog HDL. It represents a physical connection between hardware components and is used to transfer signals from one part of a circuit to another.

Unlike variables, a `wire` cannot store a value. It always reflects the value driven by a continuous assignment, a module output, or a gate primitive.

---

# Learning Objectives

After completing this topic, you will be able to:

- Understand the purpose of the `wire` data type.
- Declare scalar and vector wires.
- Use `wire` with continuous assignments.
- Connect modules using wires.
- Differentiate between `wire` and `reg`.
- Identify common mistakes when using `wire`.
- Write synthesizable Verilog using `wire`.

---

# Topics Covered

- Introduction to `wire`
- Characteristics
- Syntax
- Scalar Wires
- Vector Wires
- Continuous Assignment
- Module Connections
- Multiple Wire Declarations
- Common Mistakes
- Best Practices

---

# Repository Structure

```text
01_Wire/
│
├── README.md
├── notes.md
│
├── 01_wire_declaration.v
├── 02_scalar_wire.v
├── 03_vector_wire.v
├── 04_continuous_assignment.v
├── 05_module_connection.v
├── 06_multiple_wire_declaration.v
├── 07_and_gate_using_wire.v
├── 08_bus_connection.v
├── 09_hierarchical_connection.v
├── 10_wire_vs_reg.v
│
└── practice/
```

---

# Example Programs

| File | Description |
|------|-------------|
| 01_wire_declaration.v | Basic wire declaration |
| 02_scalar_wire.v | Scalar wire example |
| 03_vector_wire.v | Vector wire example |
| 04_continuous_assignment.v | Continuous assignment using `assign` |
| 05_module_connection.v | Connecting modules using wires |
| 06_multiple_wire_declaration.v | Multiple wire declaration |
| 07_and_gate_using_wire.v | AND gate implementation |
| 08_bus_connection.v | 8-bit bus connection |
| 09_hierarchical_connection.v | Hierarchical module interconnection |
| 10_wire_vs_reg.v | Comparison of `wire` and `reg` |

---

# Learning Outcome

After completing this topic, you will have a solid understanding of the `wire` data type and how it is used to model physical interconnections in digital hardware.

---

## Next Topic

**Tri Net Data Type**