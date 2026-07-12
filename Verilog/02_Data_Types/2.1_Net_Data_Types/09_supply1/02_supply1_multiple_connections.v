module supply1_multiple_connections;

supply1 vdd;

wire a;
wire b;
wire c;

assign a = vdd;
assign b = vdd;
assign c = vdd;

initial begin
    $display("a = %b", a);
    $display("b = %b", b);
    $display("c = %b", c);
    $finish;
end

endmodule

/* Expected output :
a = 1
b = 1
c = 1 */
