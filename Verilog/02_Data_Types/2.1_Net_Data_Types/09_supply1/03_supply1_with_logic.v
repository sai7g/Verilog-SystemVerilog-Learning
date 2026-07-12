module supply1_with_logic;

supply1 vdd;

wire out_and;
wire out_or;

assign out_and = vdd & 1'b0;
assign out_or  = vdd | 1'b0;

initial begin
    $display("out_and = %b", out_and);
    $display("out_or  = %b", out_or);
    $finish;
end

endmodule

/* Expected output
out_and = 0
out_or  = 1 */
