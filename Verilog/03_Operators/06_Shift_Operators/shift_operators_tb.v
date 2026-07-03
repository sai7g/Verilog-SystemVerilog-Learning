`timescale 1ns/1ps

module shift_operators_tb;

reg signed [7:0] data;

wire [7:0] logical_left;
wire [7:0] logical_right;
wire [7:0] arithmetic_left;
wire signed [7:0] arithmetic_right;

shift_operators DUT(

.data(data),
.logical_left(logical_left),
.logical_right(logical_right),
.arithmetic_left(arithmetic_left),
.arithmetic_right(arithmetic_right)

);

initial begin

$dumpfile("shift_operators.vcd");
$dumpvars(0,shift_operators_tb);

data = 8'b11111000; #10;

data = 8'b00110110; #10;

data = 8'b10000001; #10;

data = 8'b01111111; #10;

data = 8'b00001111; #10;

$finish;

end

endmodule