module wor_multiple_drivers;

wor result;

assign result = 1'b0;
assign result = 1'b1;

initial begin
    $display("result = %b", result);
    $finish;
end

endmodule

/*Expectes Output
result = 1 */
