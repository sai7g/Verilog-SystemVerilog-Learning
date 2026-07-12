# TRIOR (Tri-State OR Net)

## Objective

Learn how the `trior` net data type works in Verilog when multiple drivers are connected to the same signal.

Unlike a normal `wire`, a `trior` net performs **wired-OR resolution** between all active drivers. If any driver drives logic `1`, the resolved value becomes `1` (subject to standard Verilog resolution rules).

---

## Topics Covered

* What is `trior`
* Declaration syntax
* Multiple driver behavior
* OR resolution
* High-impedance (`z`) behavior
* Unknown (`x`) propagation
* Comparison with `wire`, `tri`, and `wor`
* Synthesizability
* Practical applications

---

## Folder Structure

```
06_Trior/
├── README.md
├── notes.md
├── 01_trior_basic.v
├── 02_trior_multiple_drivers.v
├── 03_trior_unknown_values.v
└── Practice/
    ├── practice_01_trior.v
    ├── practice_02_trior.v
    ├── practice_03_trior.v
    └── practice_04_trior.v
```

---

## Declaration

```verilog
trior signal_name;
```

Example:

```verilog
trior ready;
trior valid;
trior [3:0] control;
```

---

## Key Characteristics

* Net data type
* Supports multiple drivers
* Uses wired-OR resolution
* Cannot store data
* Requires continuous assignments or module outputs
* Does not require procedural assignments

---
