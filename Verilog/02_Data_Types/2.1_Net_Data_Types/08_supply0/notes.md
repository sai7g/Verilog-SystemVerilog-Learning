# SUPPLY0 Notes

## Definition

`supply0` is a special Verilog net data type that permanently represents a logic low (`0`).

It behaves like an ideal ground (`GND`) connection. Once declared, its value is always `0` throughout the simulation.

---

# Syntax

```verilog
supply0 signal_name;
```

Example:

```verilog
supply0 gnd;
```

---

# Behavior

A `supply0` net is continuously driven to logic `0`.

Example:

```verilog
supply0 gnd;
```

Result:

```text
gnd = 0
```

No `assign` statement is required.

---

# Characteristics

* Always logic `0`
* Cannot change value
* No procedural assignment
* No continuous assignment required
* Represents a ground connection

---

# Comparison with Previous Net Types

## wire

* Can be driven by one or more drivers.
* Value depends on the drivers.

---

## tri

* Same behavior as `wire`.

---

## wand

* Uses wired-AND resolution.

---

## triand

* Uses wired-AND resolution with tri-state semantics.

---

## wor

* Uses wired-OR resolution.

---

## trior

* Uses wired-OR resolution with tri-state semantics.

---

## trireg

* Can retain the last driven value after all drivers release the net.

---

## supply0

* Permanently driven to logic `0`.
* Requires no driver.

---

# Synthesizability

`supply0` is synthesizable in many tools as a constant logic `0` or a connection to the ground network. Tool behavior may vary depending on the synthesis flow and target technology.

---

# Practical Usage

Historically and in some ASIC flows, `supply0` has been used to model:

* Ground (`GND`)
* Constant logic low
* Tie-low cells
* Constant control inputs

In modern RTL, designers often use constants such as `1'b0`, but understanding `supply0` is useful when reading legacy Verilog or technology-specific libraries.

---

# Interview Questions

1. What is `supply0`?
2. Does `supply0` require an `assign` statement?
3. Can a `supply0` net change its value?
4. How is `supply0` different from `wire`?
5. Is `supply0` synthesizable?
6. Where is `supply0` used in practice?

---

# Key Takeaways

* `supply0` is a net data type.
* It permanently represents logic `0`.
* No driver or `assign` statement is needed.
* It models a constant ground connection.
* It is commonly replaced by `1'b0` in much modern RTL, though it still appears in some Verilog codebases and libraries.
