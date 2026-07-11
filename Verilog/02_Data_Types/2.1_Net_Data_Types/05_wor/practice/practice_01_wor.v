module practice_01;

wor result;

assign result = 1'b0;

initial begin
    $display("result = %b", result);
    $finish;
end

endmodule
