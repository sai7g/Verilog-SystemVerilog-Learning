module wor_basic;

wor result;

assign result = 1'b0;

initial begin
    $display("result = %b", result);
    $finish;
end

endmodule

/*Expected Result
result = 0 */