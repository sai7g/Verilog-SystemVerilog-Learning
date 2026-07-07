`timescale 1ns/1ps

module tb_combinational_always;

reg a;
reg b;

wire y;

combinational_always uut (

    .a(a),
    .b(b),
    .y(y)

);

initial begin

    $dumpfile("combinational_always.vcd");
    $dumpvars(0, tb_combinational_always);

    $monitor("Time=%0t a=%b b=%b y=%b", $time, a, b, y);

    a = 0; b = 0;
    #10;

    a = 0; b = 1;
    #10;

    a = 1; b = 0;
    #10;

    a = 1; b = 1;
    #10;

    $finish;

end

endmodule
