module integer_arithmetic;

integer a;
integer b;
integer sum;
integer difference;
integer product;
integer quotient;
integer remainder;

initial begin
    a = 20;
    b = 6;

    sum = a + b;
    difference = a - b;
    product = a * b;
    quotient = a / b;
    remainder = a % b;

    $display("a          = %0d", a);
    $display("b          = %0d", b);
    $display("sum        = %0d", sum);
    $display("difference = %0d", difference);
    $display("product    = %0d", product);
    $display("quotient   = %0d", quotient);
    $display("remainder  = %0d", remainder);

    $finish;
end

endmodule

/*Expected output
a          = 20
b          = 6
sum        = 26
difference = 14
product    = 120
quotient   = 3
remainder  = 2 */