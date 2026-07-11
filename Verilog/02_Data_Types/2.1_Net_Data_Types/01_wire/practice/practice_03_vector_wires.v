module practice_03;

wire [7:0] data;
wire msb;
wire lsb;

assign data = 8'b10110011;
assign msb = data[7];
assign lsb = data[0];

endmodule