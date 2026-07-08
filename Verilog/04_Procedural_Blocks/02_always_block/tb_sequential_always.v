`timescale 1ns/1ps

module tb_sequential_always;

reg clk;
reg d;

wire q;

sequential_always uut(

    .clk(clk),
    .d(d),
    .q(q)

);

initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
end

initial begin

    $dumpfile("sequential_always.vcd");
    $dumpvars(0, tb_sequential_always);

    $monitor("Time=%0t | clk=%b | d=%b | q=%b",
              $time, clk, d, q);

    d = 1'b0;
    #12;

    d = 1'b1;
    #10;

    d = 1'b0;
    #10;

    d = 1'b1;
    #10;

    $finish;

end

endmodule
