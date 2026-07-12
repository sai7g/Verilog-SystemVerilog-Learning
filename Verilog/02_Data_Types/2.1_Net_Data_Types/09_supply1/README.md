# SUPPLY1 (Constant Logic 1 Net)

## Objective

Learn how the `supply1` net data type represents a permanent logic high (`1`) in Verilog.

Unlike `wire` or `tri`, a `supply1` net is always driven to logic `1` and cannot be changed during simulation.

---

## Topics Covered

* What is `supply1`
* Declaration syntax
* Constant logic high behavior
* Comparison with `wire`
* Synthesizability
* Practical applications

---

## Folder Structure

```text
09_Supply1/
├── README.md
├── notes.md
├── 01_supply1_basic.v
├── 02_supply1_multiple_connections.v
├── 03_supply1_with_logic.v
└── Practice/
    ├── practice_01_supply1.v
    ├── practice_02_supply1.v
    ├── practice_03_supply1.v
    └── practice_04_supply1.v
```

---

## Declaration

```verilog
supply1 vdd;
```

Example:

```verilog
supply1 vdd;
supply1 power;
```

---

## Key Characteristics

* Net data type
* Always drives logic `1`
* Does not require an `assign` statement
* Cannot be changed during simulation
* Represents a permanent power connection

---
