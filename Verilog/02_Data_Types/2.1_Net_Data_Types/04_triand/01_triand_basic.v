module triand_basic;

triand result;

assign result = 1'b1;

initial begin
    $display("result = %b", result);
end

endmodule