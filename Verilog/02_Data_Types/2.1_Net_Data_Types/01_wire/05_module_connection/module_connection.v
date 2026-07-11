module module_connection;

wire a;
wire b;
wire y;

assign a = 1'b1;
assign b = 1'b0;

and_gate uut(
    .a(a),
    .b(b),
    .y(y)
);

endmodule