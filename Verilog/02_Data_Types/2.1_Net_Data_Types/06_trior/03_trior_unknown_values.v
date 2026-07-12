module trior_unknown_values;

trior result;

assign result = 1'bx;
assign result = 1'b1;

initial begin
    $display("result = %b", result);
    $finish;
end

endmodule

/* Expected Output
Out = x */
