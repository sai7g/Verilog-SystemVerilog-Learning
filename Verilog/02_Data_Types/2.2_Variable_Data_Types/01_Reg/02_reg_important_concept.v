module reg_important_concept;

reg data;

initial begin
    $display("Initial value = %b", data);

    data = 1'b0;
    $display("After first assignment = %b", data);

    data = 1'b1;
    $display("After second assignment = %b", data);

    data = 1'b0;
    $display("After third assignment = %b", data);

    $finish;
end

endmodule

/* Expected output
Initial value = x
After first assignment = 0
After second assignment = 1
After third assignment = 0 */
