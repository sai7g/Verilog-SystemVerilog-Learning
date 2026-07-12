module practice_01;

trior out;

assign out = 1'b1;

initial begin
    $display("out = %b", out);
    $finish;
end

endmodule
