module trior_multiple_drivers;

trior result;

assign result = 1'b0;
assign result = 1'b1;

initial begin
    $display("result = %b", result);
    $finish;
end

endmodule

/* Expected Output
result = 0 */
