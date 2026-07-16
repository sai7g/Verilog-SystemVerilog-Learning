# Variable Data Types Notes

## Introduction

Verilog data types are divided into two major categories:

1. Net Data Types
2. Variable Data Types

You have already completed all Net Data Types. This module focuses on Variable Data Types.

---

# Why Do Variable Data Types Exist?

A net simply reflects the value driven onto it.

A variable stores a value assigned during procedural execution.

Example concept:

```text
Net:
assign out = a & b;

Variable:
always @(*) begin
    out = a & b;
end
```

The second example requires a variable because the assignment occurs inside an `always` block.

---

# Available Variable Data Types

## 1. reg

General-purpose procedural variable.

Used in:

* Combinational logic
* Sequential logic
* Testbenches

---

## 2. integer

32-bit signed integer.

Used for:

* Loop counters
* Arithmetic calculations
* Simulation variables

---

## 3. time

64-bit unsigned value used for simulation time.

Commonly used with:

* `$time`
* Delay measurements

---

## 4. real

Double-precision floating-point value.

Used only in simulation.

Examples:

* Mathematical calculations
* Analog modeling

---

## 5. realtime

Floating-point simulation time.

Provides higher precision than `time`.

Used mainly for timing analysis in simulation.

---

# General Characteristics

Variable data types:

* Store values
* Are assigned procedurally
* Can be updated multiple times
* Retain their value until changed
* Are widely used in RTL and verification

---

# Comparison with Net Data Types

| Feature         | Net Data Types      | Variable Data Types |
| --------------- | ------------------- | ------------------- |
| Represents      | Physical connection | Stored value        |
| Assignment      | Continuous          | Procedural          |
| Uses `assign`   | Yes                 | No                  |
| Uses `initial`  | No                  | Yes                 |
| Uses `always`   | No                  | Yes                 |
| Can store value | No                  | Yes                 |

---

# Common Beginner Mistakes

### Mistake 1

Trying to assign a net inside an `always` block.

Incorrect idea:

* Nets cannot be assigned procedurally.

---

### Mistake 2

Thinking `reg` always creates a hardware register.

Reality:

* `reg` is a variable data type.
* Whether hardware becomes combinational logic or a flip-flop depends on the procedural code, not the keyword itself.

---

### Mistake 3

Using variables without understanding procedural execution.

Remember:

* Variables change only when the procedural block executes.

---

# Synthesizability

Some variable types are synthesizable.

| Data Type | Synthesizable                                                             |
| --------- | ------------------------------------------------------------------------- |
| reg       | ✅ Yes                                                                     |
| integer   | ✅ Mostly (tool dependent, commonly for loop indices and certain RTL uses) |
| time      | ❌ No                                                                      |
| real      | ❌ No                                                                      |
| realtime  | ❌ No                                                                      |

---

# Practical Usage

Variable data types appear in almost every RTL design:

* Registers
* Counters
* FSMs
* Pipeline stages
* Arithmetic units
* Memories
* Testbenches

Understanding them is essential before learning procedural blocks and sequential circuit design.

---

# Interview Questions

1. What is the difference between a net and a variable?
2. Why can't a `wire` be assigned inside an `always` block?
3. Does `reg` always infer a flip-flop?
4. Which variable data types are synthesizable?
5. What is the purpose of `integer`?
6. Where are `real` and `realtime` used?

---

# Key Takeaways

* Variable data types store values assigned procedurally.
* They are different from net data types.
* `reg` is the most important variable type in Verilog RTL.
* `integer` is commonly used for counting and loops.
* `time`, `real`, and `realtime` are primarily simulation-oriented.
* A strong understanding of variables is essential before learning procedural blocks, FSMs, and sequential logic.
