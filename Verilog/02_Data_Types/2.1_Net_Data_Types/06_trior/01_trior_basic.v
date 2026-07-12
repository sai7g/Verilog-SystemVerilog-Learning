module trior_basic;

trior out;

assign out = 1'b1;

initial begin
    $display("out = %b", out);
    $finish;
end

endmodule

/* Expected Output
Out = 1 */
