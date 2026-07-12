# TRIREG (Charge Storage Net)

## Objective

Learn how the `trireg` net data type stores its previously driven value when all drivers enter the high-impedance (`z`) state.

Unlike a normal `wire`, a `trireg` can temporarily retain its last driven value, making it useful for modeling charge storage behavior in digital simulations.

---

## Topics Covered

* What is `trireg`
* Declaration syntax
* Charge storage concept
* Driver removal (`z`)
* Stored value behavior
* Multiple drivers
* Unknown (`x`) behavior
* Comparison with other net data types
* Synthesizability
* Practical applications

---

## Folder Structure

```text
07_Trireg/
├── README.md
├── notes.md
├── 01_trireg_basic.v
├── 02_trireg_charge_storage.v
├── 03_trireg_unknown_values.v
└── Practice/
    ├── practice_01_trireg.v
    ├── practice_02_trireg.v
    ├── practice_03_trireg.v
    └── practice_04_trireg.v
```

---

## Declaration

```verilog
trireg signal_name;
```

Example:

```verilog
trireg data;
trireg ready;
trireg [7:0] bus;
```

---

## Key Characteristics

* Net data type
* Can retain the last driven value after all drivers release the net
* Models charge storage behavior
* Supports multiple drivers
* Uses continuous assignments
* Mainly intended for simulation

---
