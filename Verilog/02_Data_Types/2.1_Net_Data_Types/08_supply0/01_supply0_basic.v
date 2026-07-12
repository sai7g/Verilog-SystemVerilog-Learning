module supply0_basic;

supply0 gnd;

assign gnd = 1'b0;

initial begin
    $display("gnd = %b", gnd);
    $finish;
end

endmodule

/*Expected output :
gnd = 0 */
