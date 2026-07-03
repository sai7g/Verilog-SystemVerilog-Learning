`timescale 1ns/1ps

module concatenation_operator_tb;

reg [3:0] a;
reg [3:0] b;

wire [7:0] out;


concatenation_operator DUT(
.a(a),
.b(b),
.out(out)
);

initial begin

$dumpfile("concatenation_operator.vcd");
$dumpvars(0,concatenation_operator_tb);


a = 4'b1010; b = 4'b1100; #10;

a = 4'b1111; b = 4'b0000; #10;

a = 4'b0101; b = 4'b0011; #10;

a = 4'b1001; b = 4'b0110; #10;

a = 4'b0000; b = 4'b1111; #10;

$finish;

end

endmodule