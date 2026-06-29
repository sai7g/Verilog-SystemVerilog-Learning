`timescale 1ns/1ps

module tb_wire_example;

reg a;
reg b;
wire y;

wire_example uut (
    .a(a),
    .b(b),
    .y(y)
);

initial begin
    $dumpfile("wire_example.vcd");
    $dumpvars(0, tb_wire_example);

    a = 0; b = 0; #10;

    a = 0; b = 1; #10;

    a = 1; b = 0; #10;

    a = 1; b = 1; #10;

    $finish;
end

endmodule