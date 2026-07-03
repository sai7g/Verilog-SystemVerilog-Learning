`timescale 1ns/1ps

module reduction_operators_tb;

    // Testbench signals
    reg [3:0] data;

    wire and_out;
    wire nand_out;
    wire or_out;
    wire nor_out;
    wire xor_out;
    wire xnor_out;

    reduction_operators DUT (
        .data(data),
        .and_out(and_out),
        .nand_out(nand_out),
        .or_out(or_out),
        .nor_out(nor_out),
        .xor_out(xor_out),
        .xnor_out(xnor_out)
    );

    initial begin

        $dumpfile("reduction_operators.vcd");
        $dumpvars(0, reduction_operators_tb);

      
        data = 4'b0000; #10;

        data = 4'b1111; #10;

        data = 4'b1010; #10;

        data = 4'b1000; #10;

        data = 4'b0111; #10;

        data = 4'b1101; #10;

        $finish;

    end

endmodule