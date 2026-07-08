`timescale 1ns/1ps

module tb_combinational_always;

reg a;
reg b;
reg c;

wire y;

combinational_always uut (

    .a(a),
    .b(b),
    .c(c),
    .y(y)

);

initial begin

    $dumpfile("combinational_always.vcd");
    $dumpvars(0, tb_combinational_always);

    $monitor("Time=%0t a=%b b=%b c=%b y=%b", $time, a, b, c, y);

    a = 0; b = 0; c = 0;
    #10;

    a = 0; b = 0; c = 1;
    #10;

    a = 0; b = 1; c = 0;
    #10;

    a = 0; b = 1; c = 1;
    #10;

    a = 1; b = 0; c = 0;
    #10;

    a = 1; b = 0; c = 1;
    #10;

    a = 1; b = 1; c = 1;
    #10;

    a = 1; b = 1; c = 1;
    #10;

    $finish;

end

endmodule
