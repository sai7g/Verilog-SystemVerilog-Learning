module practice_03;

triand result;

assign result = 1'b1;
assign result = 1'bx;

initial begin
    $display("result = %b", result);
    $finish;
end

endmodule

/*expected output
result = x */