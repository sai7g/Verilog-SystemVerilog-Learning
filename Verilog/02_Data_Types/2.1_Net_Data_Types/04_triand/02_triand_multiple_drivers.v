module triand_multiple_drivers;

triand result;

assign result = 1'b1;
assign result = 1'b0;

initial begin
    $display("result = %b", result);
end

endmodule