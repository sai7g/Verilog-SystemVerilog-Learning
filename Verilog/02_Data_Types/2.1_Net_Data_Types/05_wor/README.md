# WOR (Wired-OR Net)

## Overview

`wor` (Wired-OR) is a Verilog net data type that allows multiple drivers to drive the same net. When more than one driver is active, Verilog resolves the final value using the **bitwise OR** operation.

Unlike a regular `wire`, which is typically driven by a single source, a `wor` net is specifically designed for situations where multiple sources can legally drive the same signal.

## Syntax

```verilog
wor signal_name;
```

```verilog
wor [7:0] data_bus;
```

## Features

* Supports multiple drivers.
* Resolves multiple drivers using bitwise OR.
* Can be declared as scalar or vector.
* Used mainly for simulation and legacy designs.
* Rarely used in modern synthesizable RTL.

## Resolution Rules

| Driver A | Driver B | Result |
| -------- | -------- | ------ |
| 0        | 0        | 0      |
| 0        | 1        | 1      |
| 1        | 1        | 1      |
| 0        | x        | x      |
| 1        | x        | 1      |
| 0        | z        | x      |
| 1        | z        | 1      |

## Difference Between `wire` and `wor`

| Feature          | `wire`              | `wor`      |
| ---------------- | ------------------- | ---------- |
| Multiple drivers | Not intended        | Supported  |
| Resolution       | No wired resolution | Bitwise OR |
| Common RTL usage | Very common         | Rare       |

## Applications

* Shared interrupt lines
* Legacy wired-OR logic
* Bus modeling
* Simulation models

## Key Takeaways

* `wor` means **Wired-OR**.
* Multiple drivers are resolved using the OR operation.
* If any active driver is `1`, the resolved value becomes `1`.
* Mostly encountered in simulation and legacy Verilog code.
