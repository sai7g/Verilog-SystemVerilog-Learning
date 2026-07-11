module wire_vs_reg;

wire a;
wire b;
wire y;

reg c;

assign a = 1'b1;
assign b = 1'b0;
assign y = a | b;

initial begin
    c = 1'b1;
end

endmodule