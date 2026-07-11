module practice_05;

wire [3:0]a;
wire [3:0]b;
wire [7:0]result;

assign a = 4'b1010;
assign b = 4'b1100;
assign result = {a, b};

endmodule