# SUPPLY1 Notes

## Definition

`supply1` is a special Verilog net data type that permanently represents a logic high (`1`).

It behaves like an ideal power supply (`VDD`) connection. Once declared, its value is always `1` throughout the simulation.

---

# Syntax

```verilog
supply1 signal_name;
```

Example:

```verilog
supply1 vdd;
```

---

# Behavior

A `supply1` net is continuously driven to logic `1`.

Example:

```verilog
supply1 vdd;
```

Result:

```text
vdd = 1
```

No `assign` statement is required.

---

# Characteristics

* Always logic `1`
* Cannot change value
* No procedural assignment
* No continuous assignment required
* Represents a power connection

---

# Comparison

## supply0

* Permanently drives logic `0`
* Represents ground (GND)

## supply1

* Permanently drives logic `1`
* Represents power (VDD)

---

# Synthesizability

`supply1` is synthesizable in many flows as a constant logic `1` or a connection to a power network. Support depends on the synthesis tool and target technology.

---

# Practical Usage

Historically and in some ASIC flows, `supply1` has been used to model:

* Power (`VDD`)
* Constant logic high
* Tie-high cells
* Constant enable signals

In modern RTL, designers often use `1'b1` for constant logic high, but `supply1` remains useful for understanding legacy code and technology libraries.

---

# Interview Questions

1. What is `supply1`?
2. Does `supply1` require an `assign` statement?
3. Can a `supply1` net become `0`?
4. How is `supply1` different from `supply0`?
5. Is `supply1` synthesizable?

---

# Key Takeaways

* `supply1` is a net data type.
* It permanently represents logic `1`.
* It requires no driver.
* It models a constant power connection.
* It is often replaced by `1'b1` in modern RTL, though it still appears in some Verilog codebases.
