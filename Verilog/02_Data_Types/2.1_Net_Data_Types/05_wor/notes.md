# WOR Notes

## Definition

A `wor` (Wired-OR) is a Verilog net data type that allows multiple drivers to drive the same signal. The simulator resolves all active drivers using the **bitwise OR** operation.

---

## Syntax

```verilog
wor signal_name;
```

```verilog
wor [3:0] control;
```

---

## Characteristics

* Net data type.
* Supports multiple drivers.
* Uses OR resolution.
* Does not store values.
* Can be scalar or vector.

---

## Resolution Rules

```
0 | 0 = 0
0 | 1 = 1
1 | 1 = 1
0 | x = x
1 | x = 1
0 | z = x
1 | z = 1
```

---

## Example

```verilog
wor ready;

assign ready = 1'b0;
assign ready = 1'b1;
```

Resolved value:

```
ready = 1
```

---

## Advantages

* Supports multiple drivers.
* Models wired-OR behavior.
* Useful for simulation.

---

## Limitations

* Rarely used in modern RTL.
* Explicit OR logic is generally preferred in synthesizable designs.

---

## Interview Questions

1. What is a `wor` net?
2. How does `wor` resolve multiple drivers?
3. What is the difference between `wire` and `wor`?
4. What is the difference between `wand` and `wor`?
5. Is `wor` commonly used in ASIC/FPGA RTL?

---

## Practical Insight

Think of `wor` as the opposite of `wand`.

* `wand` → AND resolution
* `wor` → OR resolution

A quick way to remember:

* **One `0` dominates in `wand`.**
* **One `1` dominates in `wor`.**
