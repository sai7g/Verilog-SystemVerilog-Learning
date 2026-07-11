module practice_02;

wire a;
wire b;
wire c;
wire d;

assign a = 1'b1;
assign b = 1'b0;
assign c = a ^ b;
assign d = a & c;

endmodule