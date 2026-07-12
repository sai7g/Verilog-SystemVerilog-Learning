module practice_04;

trior result1;
trior result2;
trior result3;
trior result4;

assign result1 = 1'b0;
assign result1 = 1'bz;

assign result2 = 1'b1;
assign result2 = 1'bz;

assign result3 = 1'bx;
assign result3 = 1'b1;

assign result4 = 1'bz;
assign result4 = 1'bz;

initial begin
    $display("0 | z = %b", result1);
    $display("1 | z = %b", result2);
    $display("x | 1 = %b", result3);
    $display("z | z = %b", result4);
    $finish;
end

endmodule
