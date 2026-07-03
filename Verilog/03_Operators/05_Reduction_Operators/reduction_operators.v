module reduction_operators (
    input  wire [3:0] data,

    output wire and_out,
    output wire nand_out,
    output wire or_out,
    output wire nor_out,
    output wire xor_out,
    output wire xnor_out
);

    assign and_out  = &data;
    assign nand_out = ~&data;
    assign or_out   = |data;
    assign nor_out  = ~|data;
    assign xor_out  = ^data;
    assign xnor_out = ~^data;

endmodule