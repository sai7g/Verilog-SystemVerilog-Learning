`timescale 1ns/1ps

module tb_module_ports;

reg a;
reg b;
wire y;

module_ports dut (
    .a(a),
    .b(b),
    .y(y)
);

initial begin
    $dumpfile("module_ports.vcd");
    $dumpvars(0, tb_module_ports);

    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;

    $finish;
end

endmodule