module replication_operator(

    input wire a,
    input wire [1:0] b,

    output wire [7:0] out1,
    output wire [7:0] out2

);

assign out1 = {8{a}};
assign out2 = {4{b}};

endmodule