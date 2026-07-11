module practice_02;

wor result;

assign result = 1'b0;
assign result = 1'b1;
assign result = 1'b0;

initial begin
    $display("result = %b", result);
    $finish;
end

endmodule