module practice_03;

trior result;

assign result = 1'bx;
assign result = 1'b0;

initial begin 
    $display("result = %b", result);
    $finish;
end

endmodule
