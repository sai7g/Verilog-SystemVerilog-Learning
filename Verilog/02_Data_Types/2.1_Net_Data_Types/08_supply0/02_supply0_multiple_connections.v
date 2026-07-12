module supply0_multiple_connections;

supply0 gnd;

wire a;
wire b;
wire c;

assign a = gnd;
assign b = gnd;
assign c = gnd;

initial begin
    $display("a = %b", a);
    $display("b = %b", b);
    $display("c = %b", c);
    $finish;
end

endmodule

/*Expected Result
a = 0
b = 0
c = 0 */
