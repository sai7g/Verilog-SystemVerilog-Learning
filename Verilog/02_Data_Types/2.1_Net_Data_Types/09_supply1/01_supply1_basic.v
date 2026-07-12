module supply1_basic;

supply1 vdd;

initial begin
    $display("vdd = %b", vdd);
    $finish;
end

endmodule

/* Expected output
vdd = 1 */
