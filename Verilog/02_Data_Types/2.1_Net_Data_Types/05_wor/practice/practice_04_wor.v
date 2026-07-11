module practice_04;

wor result;

assign result = 1'b0;
assign result = 1'bz;

initial begin
    $display("result = %b", result);
    $finish;
end

endmodule
