# Verilog Notes — Integer Data Type

## Definition

An integer is a **32-bit signed variable data type** in Verilog.

It is designed for storing whole numbers.

---

# Why does Integer exist?

Imagine writing a loop:

```verilog
for(i = 0; i < 16; i = i + 1)
```

If Verilog did not have integers, every loop counter would require a manually sized register.

The integer data type makes simulation and RTL coding easier.

---

# Internal Representation

```
31                    0
+----------------------+
|      32 bits         |
+----------------------+
```

Always 32 bits.

Always signed.

Uses two's complement.

---

# Signed Number Example

```
00000000000000000000000000001010

= +10
```

```
11111111111111111111111111110110

= -10
```

---

# Declaration

```verilog
integer count;
```

Multiple declarations

```verilog
integer a, b, c;
```

---

# Assignment

```verilog
count = 25;

count = -15;
```

---

# Arithmetic

Supported operators

```
+
-
*
/
%
```

Example

```verilog
sum = a + b;
```

---

# Comparison Operators

Supported

```
==
!=
<
>
<=
>=
```

Example

```verilog
if(a > b)
```

---

# Loop Counter

The most common application.

```verilog
integer i;

for(i=0;i<8;i=i+1)
```

Almost every RTL engineer writes this daily.

---

# Simulation Usage

Very common.

Examples

- Delay calculations
- Counters
- Scoreboards
- Statistics
- File operations
- Loop control

---

# RTL Usage

Allowed for

- Loop variables
- Temporary calculations

Not recommended for

- Hardware registers
- Data buses
- Storage elements

Instead use

```verilog
reg [7:0] data;
```

---

# Synthesizability

Example

```verilog
integer i;

always @(*) begin
    for(i=0;i<8;i=i+1)
        ...
end
```

Synthesizable.

Example

```verilog
integer counter;

always @(posedge clk)
    counter <= counter + 1;
```

May synthesize, but is poor coding style because it creates a 32-bit register.

Better

```verilog
reg [4:0] counter;
```

---

# Integer Overflow

Maximum

```
2147483647
```

Minimum

```
-2147483648
```

Overflow wraps around.

Exactly like normal two's complement arithmetic.

---

# Integer vs Reg

Example

```verilog
reg [7:0] data;
```

Hardware width

8 bits

Example

```verilog
integer data;
```

Hardware width

32 bits

Signed

---

# Common Beginner Mistakes

## Mistake 1

Using integer for hardware registers.

Better

```verilog
reg [7:0] counter;
```

---

## Mistake 2

Assuming integer width changes automatically.

It is always 32 bits.

---

## Mistake 3

Using integer for buses.

Better use vectors.

---

## Mistake 4

Ignoring signed arithmetic.

Negative values are stored using two's complement.

---

# Interview Questions

### Q1

How many bits is an integer?

Answer:

32 bits.

---

### Q2

Is integer signed or unsigned?

Answer:

Signed.

---

### Q3

Can integer be synthesized?

Answer:

Yes, but mainly for loop variables and temporary calculations. Using it for hardware storage is generally discouraged because it always synthesizes as a 32-bit signed register.

---

### Q4

Why use integer instead of reg?

Answer:

For arithmetic calculations, loop counters, and simulation variables.

---

### Q5

Can integer represent fractional numbers?

Answer:

No.

Only whole numbers.

---

### Q6

Which is preferred for hardware storage?

Answer:

```
reg [N:0]
```

or (in SystemVerilog)

```
logic [N:0]
```

---

# Industry Best Practices

✔ Use integer for loop counters.

✔ Use integer for simulation calculations.

✔ Use vectors for hardware storage.

✔ Explicitly define hardware widths.

✔ Keep synthesizable RTL width-controlled.

---

# Key Takeaways

- Integer is a variable data type.
- Fixed width of 32 bits.
- Signed by default.
- Ideal for loops and arithmetic.
- Common in verification environments.
- Limited use in synthesizable hardware.
- Prefer vectors for RTL registers and buses.