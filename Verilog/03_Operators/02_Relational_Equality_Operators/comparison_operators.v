module comparison_operators;

reg [3:0] a;
reg [3:0] b;

initial begin
    a = 4'd8;
    b = 4'd5;

    $display ("a = %d, b = %d", a, b);
    $display ("a < b = %d", (a < b));
    $display ("a > b = %d", (a > b));
    $display ("a >= b = %d", (a >= b));
    $display ("a <= b = %d", (a <= b));
    $display ("a != b = %d", (a != b));
    $display ("a == b = %d", (a == b));

    $finish;
end

endmodule