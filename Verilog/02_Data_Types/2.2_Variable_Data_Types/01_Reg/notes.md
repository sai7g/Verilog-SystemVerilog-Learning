# Verilog Notes — Reg Data Type

## 1. Introduction

A `reg` is a variable data type in Verilog.

It stores its value until another procedural assignment changes it.

Unlike net data types, a `reg` does **not** require a continuous driver.

---

## 2. Why does Verilog have reg?

Net data types represent physical connections.

Variables represent stored values.

When Verilog executes procedural code (`initial`, `always`), it needs variables that can remember previous values.

That is the purpose of `reg`.

---

## 3. Declaration

Single bit

```verilog
reg a;
```

Multi-bit

```verilog
reg [3:0] count;
```

Signed

```verilog
reg signed [7:0] data;
```

Array

```verilog
reg [7:0] memory [0:15];
```

---

## 4. Default Value

At simulation start,

```
x
```

unless assigned another value.

Example

```
reg a;

Initial value

a = x
```

---

## 5. Assignment

A `reg` can only be assigned inside procedural blocks.

Examples

- initial
- always

It cannot be driven using multiple procedural blocks without causing conflicts.

---

## 6. Does reg mean hardware register?

No.

This is one of the biggest misconceptions.

A variable declared as `reg` does **not** automatically synthesize into a flip-flop.

Whether hardware becomes

- combinational logic
- latch
- flip-flop

depends on the procedural block and assignment style.

---

## 7. Storage Behavior

After assignment,

```
reg remembers
```

its last assigned value until changed again.

This behavior is why it is called a variable.

---

## 8. Difference from Wire

Wire

- Net type
- Represents physical connection
- Driven by continuous assignment
- Cannot store values

Reg

- Variable type
- Stores value
- Assigned procedurally
- Used in RTL logic

---

## 9. Simulator Behavior

During simulation

```
reg a;
```

starts as

```
x
```

After

```verilog
a = 1'b1;
```

the simulator stores

```
1
```

until another assignment changes it.

---

## 10. Synthesizability

A `reg` itself is synthesizable.

The synthesized hardware depends on coding style.

Examples

Inside combinational logic

↓

Combinational gates

Inside edge-triggered always block

↓

Flip-flop

Incomplete combinational assignment

↓

Latch

---

## 11. Practical RTL Usage

Common uses include

- FSM state variable
- Counters
- Registers
- Pipeline registers
- Temporary variables
- Control signals
- Enable signals
- Status flags

---

## 12. Common Beginner Mistakes

### Mistake 1

Thinking every `reg` becomes a register.

Incorrect.

---

### Mistake 2

Assigning a `reg` using `assign`.

Incorrect.

`assign` drives nets.

---

### Mistake 3

Thinking `reg` keeps its value forever in synthesized hardware.

Retention depends on the synthesized logic.

---

### Mistake 4

Confusing simulator storage with hardware storage.

Simulation behavior and synthesized hardware are related but not identical.

---

## 13. Interview Questions

### Q1

Why is `reg` called a variable data type?

---

### Q2

Can a `reg` be assigned using `assign`?

---

### Q3

Does every `reg` become a flip-flop?

---

### Q4

Can a `wire` replace a `reg` inside an always block?

---

### Q5

What is the default value of a `reg` in simulation?

---

### Q6

Can a `reg` store multiple bits?

---

### Q7

Can a `reg` infer combinational logic?

---

### Q8

Can a `reg` infer a latch?

---

### Q9

Can a `reg` infer a flip-flop?

---

### Q10

What is the biggest difference between `wire` and `reg`?

---

## 14. Key Takeaways

- `reg` is a variable data type.
- It stores its last assigned value.
- Assigned inside procedural blocks.
- Does not automatically imply hardware registers.
- Hardware depends on coding style.
- One of the most important Verilog data types for RTL design.