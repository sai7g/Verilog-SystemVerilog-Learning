module wor_unknown_values;

wor result_1;
wor result_2;
wor result_3;
wor result_4;

assign result_1 = 1'b0;
assign result_1 = 1'bx;

assign result_2 = 1'b1;
assign result_2 = 1'bx;

assign result_3 = 1'b0;
assign result_3 = 1'bz;

assign result_4 = 1'b1;
assign result_4 = 1'bz;

initial begin
    $display("0 | x = %b", result_1);
    $display("1 | x = %b", result_2);
    $display("0 | z = %b", result_3);
    $display("1 | z = %b", result_4);
    $finish;
end

endmodule

/*Expected Output
0 | x = x
1 | x = 1
0 | z = x
1 | z = 1 */