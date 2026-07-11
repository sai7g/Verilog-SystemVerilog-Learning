module practice_07;

wire [3:0] a;
wire [3:0] b;
wire [3:0] and_result;
wire [3:0] or_result;
wire [3:0] xor_result;
wire [3:0] not_result;

assign a = 4'b1010;
assign b = 4'b1100;

assign and_result = a & b;
assign or_result = a | b;
assign xor_result = a ^ b;
assign not_result = ~a;

endmodule