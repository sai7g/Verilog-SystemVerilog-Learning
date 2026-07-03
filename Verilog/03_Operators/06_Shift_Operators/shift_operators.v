module shift_operators(

    input signed [7:0] data,

    output [7:0] logical_left,
    output [7:0] logical_right,
    output [7:0] arithmetic_left,
    output signed [7:0] arithmetic_right

);

assign logical_left    = data << 1;

assign logical_right   = data >> 1;

assign arithmetic_left = data <<< 1;

assign arithmetic_right = data >>> 1;

endmodule