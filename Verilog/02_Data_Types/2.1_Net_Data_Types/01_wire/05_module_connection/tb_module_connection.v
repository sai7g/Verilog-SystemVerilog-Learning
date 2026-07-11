`timescale 1ns/1ps

module tb_module_connection;

wire y;
reg a;
reg b;

and_gate uut(
    .a(a),
    .b(b),
    .y(y)
);

initial begin
    $dumpfile("module_connection.vcd");
    $dumpvars(0,tb_module_connection);

    a = 0; b = 0;
    #10 a = 0; b = 1;
    #10 a = 1; b = 0;
    #10 a = 1; b = 1;
    #10 $finish;
end

endmodule