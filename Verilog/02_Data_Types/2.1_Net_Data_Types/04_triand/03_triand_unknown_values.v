module triand_unknown_values;

triand result_1;
triand result_2;
triand result_3;
triand result_4;

assign result_1 = 1'b1;
assign result_1 = 1'bx;

assign result_2 = 1'b0;
assign result_2 = 1'bx;

assign result_3 = 1'b1;
assign result_3 = 1'bz;

assign result_4 = 1'b0;
assign result_4 = 1'bz;

initial begin
    $display("1 & x = %b", result_1);
    $display("0 & x = %b", result_2);
    $display("1 & z = %b", result_3);
    $display("0 & z = %b", result_4);
end

endmodule

/*Expected Result
1 & x = x
0 & x = 0
1 & z = x
0 & z = 0 */