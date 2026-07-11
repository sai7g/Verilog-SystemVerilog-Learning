module hierarchical_connection;

wire a;
wire y;

assign a = 1'b0;

inverter u1(
    .a(a),
    .y(y)
);

endmodule