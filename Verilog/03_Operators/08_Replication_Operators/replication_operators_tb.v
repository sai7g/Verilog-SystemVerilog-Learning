`timescale 1ns/1ps

module tb_replication_operator;

reg a;
reg [1:0] b;

wire [7:0] out1;
wire [7:0] out2;

replication_operator uut (

    .a(a),
    .b(b),
    .out1(out1),
    .out2(out2)

);

initial begin

    $dumpfile("replication_operator.vcd");
    $dumpvars(0, tb_replication_operator);

    a = 1'b0; b = 2'b10; #10;

    a = 1'b1; b = 2'b01; #10;

    a = 1'b1; b = 2'b11; #10;

    $finish;

end

endmodule