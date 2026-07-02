module bitwise_operators (
    input  wire [3:0] a,
    input  wire [3:0] b,

    output wire [3:0] and_out,
    output wire [3:0] or_out,
    output wire [3:0] xor_out,
    output wire [3:0] not_a_out,
    output wire [3:0] xnor_out
);

    assign and_out  = a & b;
    assign or_out   = a | b;
    assign xor_out  = a ^ b;
    assign not_a_out = ~a;
    assign xnor_out = a ~^ b;

endmodule