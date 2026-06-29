`timescale 1ns / 1ps

module tb_vector_example;

reg [3:0] a;
reg [3:0] b;
wire [3:0] y;

vector_example uut (
    .a(a),
    .b(b),
    .y(y)
);

initial begin
    $dumpfile("vector_example.vcd");
    $dumpvars(0, tb_vector_example);

    a = 4'b0000; b = 4'b0000; #10;
    a = 4'b0000; b = 4'b0001; #10;
    a = 4'b0001; b = 4'b0000; #10;
    a = 4'b0001; b = 4'b0001; #10;
    a = 4'b0010; b = 4'b0011; #10
    a = 4'b0101; b = 4'b0110; #10;
    $finish;
end

endmodule