# Verilog Basics

## Objective

Learn the fundamental structure of a Verilog program.

## Concepts Covered

* What is Verilog?
* Hardware Description Language (HDL)
* Module Structure
* initial Block
* begin-end Block
* $display
* $finish

## Files

| File     | Description            |
| -------- | ---------------------- |
| hello.v  | First Verilog program  |
| notes.md | Notes and explanations |

## Compilation

```bash
iverilog -o hello hello.v
```

## Simulation

```bash
vvp hello
```

## Output

```
Hello, Verilog!
```

## Learning Outcome

After completing this section, I understand:

* Basic Verilog syntax
* Module structure
* Simulation flow
* Using Icarus Verilog for compilation and simulation
