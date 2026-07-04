`timescale 1ns/1ps

module tb_conditional_operator;

reg sel;
reg [3:0] a;
reg [3:0] b;

wire [3:0] y;

conditional_operator uut(

    .sel(sel),
    .a(a),
    .b(b),
    .y(y)

);

initial begin

    $dumpfile("conditional_operator.vcd");
    $dumpvars(0, tb_conditional_operator);

    sel = 1'b0;

    a = 4'd5; b = 4'd10; #10;

    sel = 1'b1; #10;

    a = 4'd12; b = 4'd3; #10;

    sel = 1'b0; #10;

    $finish;

end

endmodule