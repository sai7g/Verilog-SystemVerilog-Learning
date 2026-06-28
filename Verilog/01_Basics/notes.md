# Verilog Basics - Notes

---

# Module 1: Introduction to Verilog

## What is Verilog?

Verilog HDL is a Hardware Description Language (HDL) used to model, design, and verify digital circuits such as processors, FPGAs, and ASICs. It supports multiple abstraction levels—Gate Level, Dataflow, and Behavioral—allowing engineers to describe hardware from logic gates to complete systems.

## What is HDL?

HDL (Hardware Description Language) is used to describe digital hardware. Unlike programming languages such as C or Python, HDL models hardware that operates in parallel.

## Why Verilog?

* Describes digital circuits
* Supports simulation before hardware implementation
* Used in FPGA and ASIC design
* Enables hardware verification
* Widely used in the semiconductor industry

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
* `initial` – Executes once during simulation.
* `begin/end` – Groups multiple statements.
* `$display` – Prints text to the console.
* `$finish` – Ends the simulation.
* `endmodule` – Ends the module definition.

## Simulation Flow

1. Write `hello.v`
2. Compile

```bash
iverilog -o hello hello.v
```

3. Run

```bash
vvp hello
```

## Key Takeaways

* Verilog describes hardware.
* Every design starts with a module.
* `initial` executes once during simulation.
* `$display` prints simulation messages.
* `$finish` ends the simulation.

---

# Module 2: Module Structure and Ports

## Objective

Understand Verilog modules, ports, module instantiation, and testbenches.

## What is a Module?

A module is the basic building block of every Verilog design.

Every digital circuit—such as an AND gate, ALU, counter, UART, or processor—is represented as a module.

General syntax:

```verilog
module module_name(
    input  a,
    input  b,
    output y
);

// RTL logic

endmodule
```

## Ports

### Input

Receives signals from outside the module.

```verilog
input a;
```

### Output

Sends signals outside the module.

```verilog
output y;
```

## Example: AND Gate

```verilog
module module_ports(
    input a,
    input b,
    output y
);

assign y = a & b;

endmodule
```

## Hardware Representation

```
     a ----\
            AND ---- y
     b ----/
```

## Module Instantiation

```verilog
module_ports dut(
    .a(a),
    .b(b),
    .y(y)
);
```

* `module_ports` → Module name
* `dut` → Instance name
* `.a(a)` → Named port mapping

## Testbench

A testbench verifies the design by applying inputs and observing outputs.

A testbench is **not synthesized into hardware**.

## Waveform Generation

```verilog
$dumpfile("module_ports.vcd");
$dumpvars(0, tb_module_ports);
```

Open the waveform:

```bash
gtkwave module_ports.vcd
```

## Truth Table

| a | b | y |
| - | - | - |
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

## Key Takeaways

* A module is the basic building block of Verilog.
* Ports connect modules to the outside world.
* `assign` performs continuous assignments.
* Modules can be instantiated inside other modules.
* Testbenches verify functionality before synthesis.

## Interview Questions

1. What is a Verilog module?
2. What is module instantiation?
3. What is named port mapping?
4. Why do we use testbenches?
5. What is the purpose of `$dumpfile` and `$dumpvars`?

---

# Overall Summary

After completing the Basics module, I can:

* Write basic Verilog programs.
* Understand module structure.
* Declare input and output ports.
* Use continuous assignments.
* Write and simulate testbenches.
* Generate and analyze waveforms using GTKWave.
