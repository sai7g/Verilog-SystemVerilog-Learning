# SUPPLY0 (Constant Logic 0 Net)

## Objective

Learn how the `supply0` net data type represents a permanent logic low (`0`) in Verilog.

Unlike `wire` or `tri`, a `supply0` net is always driven to logic `0` and cannot be changed during simulation.

---

## Topics Covered

* What is `supply0`
* Declaration syntax
* Constant logic low behavior
* Comparison with `wire`
* Synthesizability
* Practical applications

---

## Folder Structure

```text
08_Supply0/
├── README.md
├── notes.md
├── 01_supply0_basic.v
├── 02_supply0_multiple_connections.v
├── 03_supply0_with_logic.v
└── Practice/
    ├── practice_01_supply0.v
    ├── practice_02_supply0.v
    ├── practice_03_supply0.v
    └── practice_04_supply0.v
```

---

## Declaration

```verilog
supply0 gnd;
```

Example:

```verilog
supply0 gnd;
supply0 ground;
```

---

## Key Characteristics

* Net data type
* Always drives logic `0`
* Does not require an `assign` statement
* Cannot be changed during simulation
* Represents a permanent ground connection

---
