`timescale 1ns/1ps

module bitwise_operators_tb;

    reg  [3:0] a;
    reg  [3:0] b;

    wire [3:0] and_out;
    wire [3:0] or_out;
    wire [3:0] xor_out;
    wire [3:0] not_a_out;
    wire [3:0] xnor_out;

    bitwise_operators DUT (
        .a(a),
        .b(b),
        .and_out(and_out),
        .or_out(or_out),
        .xor_out(xor_out),
        .not_a_out(not_a_out),
        .xnor_out(xnor_out)
    );

    initial begin

        $dumpfile("bitwise_operators.vcd");
        $dumpvars(0, bitwise_operators_tb);

        a = 4'b1010; b = 4'b1100; #10;
        a = 4'b1111; b = 4'b0000; #10;
        a = 4'b0101; b = 4'b0011; #10;
        a = 4'b1001; b = 4'b0110; #10;
        a = 4'b1111; b = 4'b1111; #10;

        $finish;

    end

endmodule