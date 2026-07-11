module practice_06;

wire [7:0]data;
wire [3:0]nibble;

assign nibble = 4'b1010;
assign data = {2{nibble}};

endmodule