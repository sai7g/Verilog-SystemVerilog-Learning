# Practice 01 – Buffer

## Objective

Design a simple 1-bit buffer in Verilog.

## Theory

A buffer passes the input directly to the output without modification.

Y = A

## Files

- buffer.v
- tb_buffer.v

## Simulation

Compile

```bash
iverilog -o buffer_sim buffer.v tb_buffer.v
```

Run

```bash
vvp buffer_sim
```

Waveform

```bash
gtkwave buffer.vcd
```

## Expected Truth Table

| A | Y |
|---|---|
|0|0|
|1|1|

## Learning Outcomes

- Module declaration
- Port declaration
- Continuous assignment
- Testbench creation
- Module instantiation