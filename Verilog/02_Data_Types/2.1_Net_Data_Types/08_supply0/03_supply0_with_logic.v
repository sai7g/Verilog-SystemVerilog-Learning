module supply0_with_logic;

supply0 gnd;

wire out_and;
wire out_or;

assign out_and = gnd & 1'b1;
assign out_or  = gnd | 1'b1;

initial begin
    $display("out_and = %b", out_and);
    $display("out_or  = %b", out_or);
    $finish;
end

endmodule

/* Expected Resuult
out_and = 0
out_or  = 1 */