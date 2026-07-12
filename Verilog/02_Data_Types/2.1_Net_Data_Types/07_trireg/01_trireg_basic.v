module trireg_basic;

trireg out;

assign out = 1'b1;

initial begin
    $display("out = %b", out);
    $finish;
end

endmodule

/* Expected output:
out = 1 */
