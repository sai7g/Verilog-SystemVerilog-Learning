module reg_basic;

reg data;

initial begin
    $display("Initial value of data = %b", data);

    data = 1'b0;
    $display("After assigning 0 = %b", data);

    data = 1'b1;
    $display("After assigning 1 = %b", data);

    $finish;
end

endmodule

/* Expected output
Initial value of data = x
After assigning 0 = 0
After assigning 1 = 1 */
