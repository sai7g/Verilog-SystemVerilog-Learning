module concatenation_operator(

    input  wire [3:0] a,
    input  wire [3:0] b,

    output wire [7:0] out

);

assign out = {a,b};

endmodule