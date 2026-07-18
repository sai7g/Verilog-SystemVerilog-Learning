module integer_signed_behavior;

integer a;
integer b;
integer c;
integer d;

initial begin
    a = -15;
    b = 10;

    c = a + b;
    d = a - b;

    $display("a = %0d", a);
    $display("b = %0d", b);
    $display("a + b = %0d", c);
    $display("a - b = %0d", d);

    if (a < b)
        $display("a is less than b");
    else
        $display("a is greater than or equal to b");

    $finish;
end

endmodule

/* Expected output
a = -15
b = 10
a + b = -5
a - b = -25
a is less than b */
