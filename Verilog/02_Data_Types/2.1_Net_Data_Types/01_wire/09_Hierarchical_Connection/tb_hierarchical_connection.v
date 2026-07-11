`timescale 1ns/1ps

module tb_hierarchical_connection;

reg a;
wire y;

inverter uut(
    .a(a),
    .y(y)
);

initial begin
    $dumpfile("hierarchical_connection.vcd");
    $dumpvars(0,tb_hierarchical_connection);

    a = 0;
    #10 a = 1;
    #10 $finish;
end

endmodule