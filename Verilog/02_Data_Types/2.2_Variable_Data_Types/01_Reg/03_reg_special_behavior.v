module reg_special_behavior;

reg data;

initial begin
    $display("Time=%0t data=%b", $time, data);

    #5 data = 1'b1;
    $display("Time=%0t data=%b", $time, data);

    #5 data = 1'b0;
    $display("Time=%0t data=%b", $time, data);

    #5;
    $display("Time=%0t data=%b", $time, data);

    $finish;
end

endmodule

/* Expected result
Time=0 data=x
Time=5 data=1
Time=10 data=0
Time=15 data=0 */