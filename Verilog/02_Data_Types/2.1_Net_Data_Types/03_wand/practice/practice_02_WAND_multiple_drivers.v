module practice_02;

wand result;

assign result = 1'b1;
assign result = 1'b0;
assign result = 1'b1;

initial begin 
    $display("result = %b", result);
end

endmodule