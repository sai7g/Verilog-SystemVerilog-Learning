# WAND Net Data Type

---

# What is WAND?

`wand` stands for **Wired-AND**.

It is a **net data type** in Verilog that allows multiple drivers. Unlike a `wire` or `tri`, the final value is resolved using the **logical AND** of all active drivers.

---

# Syntax

```verilog
wand signal_name;
```

Vector declaration:

```verilog
wand [7:0] bus;
```

---

# Characteristics

- Net data type
- Cannot store values
- Must be driven continuously
- Supports multiple drivers
- Final value is resolved using **AND**

---

# Resolution Rule

If several drivers drive the same `wand` net:

```
Final Value = Driver1 & Driver2 & Driver3 & ...
```

---

# Examples

| Driver 1 | Driver 2 | Final Value |
|----------|----------|-------------|
| 1 | 1 | 1 |
| 1 | 0 | 0 |
| 0 | 0 | 0 |
| 1 | z | 1 |
| 0 | z | 0 |

---

# Difference Between wire, tri and wand

| Feature | wire | tri | wand |
|----------|------|-----|------|
| Multiple drivers | Yes | Yes | Yes |
| Conflict (1 & 0) | x | x | 0 |
| Resolution | Simulator | Simulator | Logical AND |

---

# Applications

`wand` was historically used to model open-collector or open-drain buses where multiple devices could pull a line low. In modern RTL, it is used much less frequently, but understanding it is useful for reading legacy Verilog and interview questions.

---

# Interview Questions

1. What does `wand` stand for?
2. How is `wand` different from `wire`?
3. How are multiple drivers resolved?
4. Is `wand` synthesizable?
5. Where is `wand` commonly used?

---

# References

- IEEE 1364 Verilog Standard
- Samir Palnitkar – Verilog HDL
- ASIC-World Verilog Tutorials