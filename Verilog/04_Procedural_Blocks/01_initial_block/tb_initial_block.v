`timescale 1ns/1ps

module tb_initial_block;

initial begin

    $dumpfile("initial_block.vcd");
    $dumpvars(0, tb_initial_block);

    $display("Simulation Started");

    #5;
    $display("Time = %0t", $time);

    #5;
    $display("Simulation Finished");

    $finish;

end

endmodule
