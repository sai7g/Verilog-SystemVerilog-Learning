module reg_vector(
    input [3:0] a,
    output reg [3:0] y
);

always @(*) begin
    y = a;
end 

endmodule