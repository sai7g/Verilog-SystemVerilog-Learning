module multiple_wire_declaration;

wire a,b,c,d;
wire [3:0] data;

assign a = 1'b1;
assign b = 1'b0;
assign c = a | b;
assign d = a & b;

assign data = {a,b,c,d};

endmodule