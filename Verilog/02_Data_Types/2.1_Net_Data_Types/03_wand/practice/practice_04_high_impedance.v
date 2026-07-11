module practice_04;

wand result;

assign result = 1'b1;
assign result = 1'bz;

initial begin 
    $display("result = %b", result);
end

endmodule