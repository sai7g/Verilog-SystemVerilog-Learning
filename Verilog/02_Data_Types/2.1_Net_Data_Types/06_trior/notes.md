# TRIOR Notes

## Definition

`trior` is a Verilog net data type that allows multiple drivers to drive the same signal. When more than one active driver is present, the signal is resolved using **wired-OR logic**.

---

# Syntax

```verilog
trior signal_name;
```

Example:

```verilog
trior out;
```

---

# Resolution Rule

The final value is obtained by performing an OR operation among all active drivers.

Examples:

```
0 OR 0 = 0
0 OR 1 = 1
1 OR 1 = 1
```

---

# High-Impedance Behavior

A driver that outputs `z` behaves as if it is disconnected.

Examples:

```
0 + z → 0
1 + z → 1
z + z → z
```

---

# Unknown Value Behavior

Unknown values may propagate depending on the combination of drivers.

Examples:

```
x + 0 → x
x + 1 → 1
x + z → x
```

Reason:

* A driven `1` dominates because the OR result is known to be `1`.
* If no driver forces `1`, an unknown may remain unresolved.

---

# Multiple Drivers

Example concept:

```
Driver A → 0
Driver B → 1

Final = 1
```

Example:

```
Driver A → 0
Driver B → 0

Final = 0
```

Example:

```
Driver A → z
Driver B → 1

Final = 1
```

---

# Comparison with Previous Net Types

## wire

* Multiple drivers are allowed.
* Standard Verilog signal resolution is used.
* No explicit wired logic.

---

## tri

* Same electrical behavior as `wire`.
* Indicates that the signal may be tri-stated.

---

## wand

* Uses wired-AND resolution.
* Any active `0` forces the result toward `0`.

---

## triand

* Same resolution as `wand`.
* Indicates a tri-state wired-AND net.

---

## wor

* Uses wired-OR resolution.

---

## trior

* Uses wired-OR resolution.
* Indicates a tri-state wired-OR net.

---

# Synthesizability

`trior` is part of the Verilog language and is generally synthesizable only when the target technology supports the required multiple-driver or tri-state behavior. In many modern FPGA designs, internal tri-state networks are not supported, so synthesis tools may replace them with equivalent logic or issue warnings depending on the design and target device.

---

# Practical Usage

Historically, `trior` was useful for:

* Shared buses
* Open-collector/open-drain style interfaces
* Multi-source control signals
* Legacy ASIC and board-level designs

Modern RTL more commonly uses explicit combinational logic instead of internal tri-state nets, especially in FPGA designs.

---

# Interview Questions

1. What is a `trior` net?
2. How does `trior` resolve multiple drivers?
3. What happens when one driver is `z`?
4. What happens when one driver is `x` and another is `1`?
5. How is `trior` different from `wor`?
6. Is `trior` synthesizable on all targets?
7. When would you choose `trior` instead of a normal `wire`?

---

# Key Takeaways

* `trior` is a net data type.
* It supports multiple drivers.
* Resolution follows wired-OR behavior.
* `z` acts like a disconnected driver.
* `1` dominates OR resolution when present.
* Internal tri-state constructs are less common in modern FPGA RTL but still important to understand for Verilog fundamentals and some ASIC or board-level designs.
