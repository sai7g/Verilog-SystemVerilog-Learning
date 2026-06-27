# Verilog Basics - Notes

## What is Verilog?

Verilog HDL is a hardware description language used to model, design, and verify digital circuits such as processors, FPGAs, and ASICs. It supports multiple abstraction levels — Gate Level, Dataflow, and Behavioral — enabling designers to describe hardware from low-level logic gates to high-level functional behavior.

---

## What is an HDL?

HDL, or Hardware Description Language, is a programming language specifically designed to describe the behavior, structure, and timing of digital logic circuits. Unlike traditional programming languages that execute instructions sequentially, HDLs allow engineers to model parallel operations, reflecting how hardware components operate simultaneously. 

It provides a high-level abstraction for designing complex circuits, enabling engineers to simulate, test, and optimize designs before physical implementation 


---

## Why Verilog?

* Describes digital circuits
* Supports simulation before hardware implementation
* Used for FPGA and ASIC design
* Enables hardware verification
* Widely used in the semiconductor industry

---

## Basic Structure of a Verilog Program

```verilog
module hello;

initial begin
    $display("Hello, Verilog!");
    $finish;
end

endmodule
```

### Explanation

* `module` – Defines a hardware module.
* `initial` – Executes once at the beginning of simulation.
* `begin` / `end` – Groups multiple statements.
* `$display` – Prints text to the simulation console.
* `$finish` – Ends the simulation.
* `endmodule` – Marks the end of the module.

---

## Simulation Flow

1. Write the Verilog source code (`hello.v`).
2. Compile the design:

   ```bash
   iverilog -o hello hello.v
   ```
3. Run the simulation:

   ```bash
   vvp hello
   ```
4. Observe the simulation output.

---

## Output

```text
Hello, Verilog!
```

---

## Key Takeaways

* Verilog is used to describe hardware, not software.
* Every Verilog design begins with a `module`.
* `initial` blocks are executed once during simulation.
* `$display` is useful for debugging and displaying information.
* `$finish` terminates the simulation.

---

## Commands Used

Compile:

```bash
iverilog -o hello hello.v
```

Run:

```bash
vvp hello
```

---

## Interview Questions

1. What is Verilog?
2. What is the difference between Verilog and C?
3. What is a module?
4. What is the purpose of the `initial` block?
5. What is the difference between simulation and synthesis?
6. What does `$display` do?
7. What does `$finish` do?

---

## Summary

In this module, I learned how to write, compile, and simulate my first Verilog program. I also understood the basic structure of a Verilog module and the purpose of common simulation constructs such as `initial`, `$display`, and `$finish`.
