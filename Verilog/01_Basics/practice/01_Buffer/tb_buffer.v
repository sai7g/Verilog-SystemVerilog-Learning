`timescale 1ns/1ps

module tb_buffer;

reg a;
wire y;

buffer uut (
    .a(a),
    .y(y)
);

initial begin
    $dumpfile("buffer.vcd");
    $dumpvars(0, tb_buffer);


    a = 0; #10;

    a = 1; #10;

    a = 0; #10;

    $finish;
end

endmodule