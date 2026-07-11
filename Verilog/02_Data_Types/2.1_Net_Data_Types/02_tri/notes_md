# TRI Net Data Type

---

# What is TRI?

`tri` is a **net data type** in Verilog.

It behaves almost exactly like a `wire`. The main purpose of `tri` is to indicate that the signal may be driven by **multiple sources**, such as a shared bus.

---

# Syntax

```verilog
tri signal_name;
```

Vector declaration:

```verilog
tri [7:0] data_bus;
```

---

# Characteristics

- Net data type
- Cannot store values
- Must be driven continuously
- Supports multiple drivers
- Used for shared buses

---

# Difference Between Wire and TRI

| Feature | wire | tri |
|----------|------|-----|
| Net type | ✅ | ✅ |
| Stores value | ❌ | ❌ |
| Continuous assignment | ✅ | ✅ |
| Multiple drivers | Possible | Intended use |
| Common usage | General connections | Shared buses |

---

# Real Hardware Example

Imagine several devices connected to a common data bus.

Only one device should actively drive the bus at a time.

```
 CPU
   |
 Memory
   |
 UART
   |
---------
 Data Bus
---------
```

The bus can be represented using `tri`.

---

# Key Points

- `tri` behaves like `wire` in most simulations.
- It improves code readability by indicating a shared connection.
- Modern RTL designs often use `wire` internally and model tri-state behavior explicitly when needed.

---

# Interview Questions

1. What is a `tri` net?
2. How is `tri` different from `wire`?
3. Can `tri` store a value?
4. Why is `tri` useful in bus architectures?
5. Is `tri` synthesizable?

---

# References

- IEEE 1364 Verilog Standard
- Samir Palnitkar — Verilog HDL
- ASIC-World Verilog Tutorials