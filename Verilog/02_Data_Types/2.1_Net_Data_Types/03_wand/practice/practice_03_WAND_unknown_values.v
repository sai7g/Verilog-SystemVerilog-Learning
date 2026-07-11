module practice_03;

wand result;

assign result = 1'b1;
assign result = 1'bx;

initial begin
    $display("result = %b", result);
end

endmodule