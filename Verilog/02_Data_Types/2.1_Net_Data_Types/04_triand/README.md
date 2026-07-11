# TRIAND (Tri-State AND Net)

## Overview

`triand` is a Verilog net data type that combines **tri-state capability** with **wired-AND resolution**.

A `triand` net allows multiple drivers to drive the same signal. When more than one active driver is present, Verilog resolves the final value using the **bitwise AND** operation.

Unlike `wand`, `triand` is specifically intended for modeling **shared tri-state buses**, where some drivers may be in the high-impedance (`z`) state.

## Syntax

```verilog
triand signal_name;
```

```verilog
triand [7:0] data_bus;
```

## Features

* Supports multiple drivers.
* Resolves active drivers using bitwise AND.
* Supports tri-state (`z`) behavior.
* Can be scalar or vector.
* Primarily used in simulation and bus modeling.
* Rarely used in modern synthesizable RTL.

## Resolution Examples

| Driver A | Driver B | Result |
| -------- | -------- | ------ |
| 1        | 1        | 1      |
| 1        | 0        | 0      |
| 0        | 0        | 0      |
| 1        | x        | x      |
| 0        | x        | 0      |
| 1        | z        | x      |
| 0        | z        | 0      |

## Difference Between `wand` and `triand`

| Feature           | `wand`                | `triand`                      |
| ----------------- | --------------------- | ----------------------------- |
| Multiple drivers  | Yes                   | Yes                           |
| AND resolution    | Yes                   | Yes                           |
| Tri-state support | General wired-AND net | Intended for tri-state buses  |
| Typical use       | Wired-AND connections | Shared tri-state bus modeling |

## Applications

* Shared communication buses
* Bus arbitration models
* Digital simulation
* Legacy Verilog designs

## Key Takeaways

* `triand` behaves like a wired-AND net.
* It is designed for signals that may enter the high-impedance (`z`) state.
* It is mainly useful for simulation rather than everyday RTL design.
* Understanding `triand` helps in interviews and when reading legacy Verilog code.
