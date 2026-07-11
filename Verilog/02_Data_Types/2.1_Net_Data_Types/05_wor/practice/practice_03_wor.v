module practice_03;

wor result;

assign result = 1'b0;
assign result = 1'bx;

initial begin
    $display("result = %b", result);
    $finish;
end

endmodule
