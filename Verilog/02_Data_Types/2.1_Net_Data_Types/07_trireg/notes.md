# TRIREG Notes

## Definition

`trireg` is a Verilog net data type that can temporarily retain its last driven value after all drivers transition to the high-impedance (`z`) state.

Unlike `wire`, which immediately reflects the currently driven value, a `trireg` behaves like a small storage element during simulation by holding the previously resolved value.

---

# Syntax

```verilog
trireg signal_name;
```

Example:

```verilog
trireg q;
```

---

# Charge Storage Concept

A `trireg` stores the last resolved value **only when all drivers release the net** by driving `z`.

Example sequence:

```text
Driver → 1
Stored value = 1

Driver → z
Output remains 1

Driver → 0
Output changes to 0

Driver → z
Output remains 0
```

---

# Driver Behavior

If a driver actively drives the net:

```text
Driver = 0 → Output = 0
Driver = 1 → Output = 1
```

If every driver drives `z`:

```text
Last value = 1
Current drivers = z

Output = 1
```

The net retains the previously stored value.

---

# Unknown (`x`) Behavior

If the last resolved value is `x`, then releasing the net (`z`) retains `x`.

Example:

```text
Driver = x
Stored value = x

Driver = z
Output remains x
```

---

# Comparison with Previous Net Types

## wire

* Does not store a value.
* `z` leaves the net undriven.

---

## tri

* Same behavior as `wire`.

---

## wand

* Uses wired-AND resolution.

---

## triand

* Wired-AND with tri-state semantics.

---

## wor

* Uses wired-OR resolution.

---

## trior

* Wired-OR with tri-state semantics.

---

## trireg

* Stores the last driven value after all drivers release the net.
* Models charge storage.

---

# Synthesizability

`trireg` is primarily a simulation construct. Modern synthesis tools generally do not infer physical storage elements from `trireg`, and it is not commonly used in synthesizable RTL.

---

# Practical Usage

Historically, `trireg` was used to model:

* Charge storage on buses
* Dynamic logic
* Capacitive effects
* Floating nodes in simulation

Today, it is encountered mainly in legacy Verilog code and educational examples rather than production RTL.

---

# Interview Questions

1. What is a `trireg`?
2. How is `trireg` different from `wire`?
3. What happens when all drivers become `z`?
4. Can `trireg` retain an `x` value?
5. Is `trireg` synthesizable?
6. Why is `trireg` considered a simulation-oriented construct?

---

# Key Takeaways

* `trireg` is a net data type.
* It can retain its last driven value.
* Storage occurs only after all drivers release the net.
* It models charge storage rather than a hardware register.
* It is mainly used for simulation and understanding Verilog net behavior.
