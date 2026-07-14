module reg_vs_wire;

wire w;
reg  r;

assign w = 1'b1;

initial begin
    r = 1'b0;

    $display("wire = %b", w);
    $display("reg  = %b", r);

    r = 1'b1;

    $display("wire = %b", w);
    $display("reg  = %b", r);

    $finish;
end

endmodule

/* Expected output:
wire = 1
reg  = 0
wire = 1
reg  = 1 */