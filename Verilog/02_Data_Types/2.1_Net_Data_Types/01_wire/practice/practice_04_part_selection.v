module practice_04;

wire [7:0] data;
wire [3:0] upper_nibble;
wire [3:0] lower_nibble;

assign data = 8'b11010110;
assign upper_nibble = data[7:4];
assign lower_nibble = data[3:0];

endmodule