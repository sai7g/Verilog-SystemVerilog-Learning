# Example 05: Module Connection Using Wire

## Objective

Learn how to connect two Verilog modules using the `wire` data type.

## Files

| File | Description |
|------|-------------|
| and_gate.v | AND gate module |
| module_connection.v | Top module that instantiates the AND gate |
| tb_module_connection.v | Testbench for simulation |

## Learning Outcomes

- Module instantiation
- Named port mapping
- Using wires for module interconnection
- Basic testbench creation

## Compile

```bash
iverilog -o sim and_gate.v module_connection.v tb_module_connection.v
```

## Run

```bash
vvp sim
```