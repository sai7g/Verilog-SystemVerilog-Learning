module initial_block;

reg a;
reg b;
reg [3:0] data;

initial begin
    a = 1'b0;
    b = 1'b1;
    data = 4'd10;

    $display("a = %b", a);
    $display("b = %b", b);
    $display("data = %d", data);

    $finish;
end

endmodule
