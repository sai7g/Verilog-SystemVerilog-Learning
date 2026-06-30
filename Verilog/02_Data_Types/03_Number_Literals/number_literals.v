module number_literals;
    reg [7:0] binary_num;
    reg [7:0] decimal_num;
    reg [7:0] hex_num;
    reg [7:0] octal_num;

initial begin
    binary_num = 8'b10101010;
    decimal_num = 8'd170;
    hex_num = 8'hAA;
    octal_num = 8'o252;

    $display("Binary   : %b", binary_num);
    $display("Decimal  : %d", decimal_num);
    $display("Hex      : %h", hex_num); 
    $display("Octal    : %o", octal_num);

    $finish;
end

endmodule