module arithmetic_operators;

reg [3:0] a;
reg [3:0] b;

reg [4:0] sum;
reg [4:0] difference;
reg [7:0] product;
reg [3:0] quotient;
reg [3:0] remainder;

initial begin
    a = 4'd10;
    b = 4'd3;

    sum = a + b;
    difference = a - b;
    product = a * b;
    quotient =  a / b;
    remainder = a % b;

    $display ("a = %d, b = %d", a, b);
    $display ("Sum = %d", sum);
    $display ("Difference = %d", difference);
    $display ("Product = %d", product);
    $display ("Quotient = %d", quotient);
    $display ("Remainder = %d", remainder);

    $finish;

end

endmodule