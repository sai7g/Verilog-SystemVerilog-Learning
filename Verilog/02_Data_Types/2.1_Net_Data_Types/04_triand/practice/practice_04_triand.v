module practice_04;

triand result;

assign result = 1'b1;
assign result = 1'bz;

initial begin
    $display("result = %b", result);
    $finish;
end

endmodule