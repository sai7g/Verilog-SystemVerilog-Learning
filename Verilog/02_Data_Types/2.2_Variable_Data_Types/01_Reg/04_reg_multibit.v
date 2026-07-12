module reg_multibit;

reg [7:0] data;

initial begin
    data = 8'b10101100;
    $display("Complete data      = %b", data);

    $display("MSB               = %b", data[7]);
    $display("LSB               = %b", data[0]);

    $display("Upper nibble      = %b", data[7:4]);
    $display("Lower nibble      = %b", data[3:0]);

    data[3] = 1'b1;
    $display("After bit update  = %b", data);

    data[7:4] = 4'b0101;
    $display("After part update = %b", data);

    data = 8'hA5;
    $display("Hex assignment    = %b", data);

    $finish;
end

endmodule

/* Expected output 
Complete data      = 10101100
MSB               = 1
LSB               = 0
Upper nibble      = 1010
Lower nibble      = 1100
After bit update  = 10101100
After part update = 01011100
Hex assignment    = 10100101 */