# TRIAND Notes

## Definition

A `triand` is a **tri-state wired-AND net** in Verilog.

It allows multiple drivers to drive the same signal. The simulator resolves all active drivers using the **AND** operation.

---

## Syntax

```verilog
triand signal_name;
```

```verilog
triand [3:0] control;
```

---

## Characteristics

* Net data type.
* Supports multiple continuous assignments.
* Performs AND resolution.
* Supports high-impedance (`z`) values.
* Cannot store data.
* Requires one or more drivers.

---

## Resolution Rules

```
1 & 1 = 1
1 & 0 = 0
0 & 0 = 0
1 & x = x
0 & x = 0
1 & z = x
0 & z = 0
```

---

## Example

```verilog
triand ready;

assign ready = 1'b1;
assign ready = 1'b0;
```

Final value:

```
ready = 0
```

---

## Advantages

* Models shared buses.
* Supports multiple drivers.
* Represents wired-AND behavior accurately.
* Useful in simulation.

---

## Limitations

* Rarely used in synthesizable RTL.
* Can make designs harder to understand if overused.
* Modern RTL usually uses explicit combinational logic instead.

---

## Interview Questions

### 1. What is a `triand` net?

A net data type that resolves multiple active drivers using a bitwise AND operation while supporting tri-state behavior.

### 2. How is `triand` different from `wire`?

A `wire` should typically have a single effective driver. A `triand` allows multiple drivers and resolves them using AND logic.

### 3. How is `triand` different from `wand`?

Both perform wired-AND resolution. `triand` is intended for modeling shared tri-state buses where drivers may enter the `z` state.

### 4. Is `triand` commonly used in FPGA or ASIC RTL?

No. It is mostly used in simulation models and legacy Verilog designs.

### 5. What happens if one driver drives `0`?

The resolved output becomes `0` because of the AND operation.

---

## Practical Insight

Although `triand` is part of the Verilog language, you will rarely write production RTL using it. However, interviewers may ask about it because it demonstrates your understanding of Verilog's net resolution rules and multi-driver behavior.
