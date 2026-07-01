module logical_operators;

reg a;
reg b;

initial begin
    a = 1'b0;
    b = 1'b1;

    $display ("a = %b", a);
    $display ("b = %b", b);

    $display ("a && b = %b", a && b);
    $display ("a || b = %b", a || b);
    $display ("!a = %b", !a);
    $display ("!b = %b", !b);

    $finish;
end

endmodule