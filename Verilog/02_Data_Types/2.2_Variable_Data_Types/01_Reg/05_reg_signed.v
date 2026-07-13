  module reg_signed;

reg [7:0] unsigned_data;
reg signed [7:0] signed_data;

initial begin
    unsigned_data = 8'b11111011;
    signed_data   = 8'b11111011;

    $display("Unsigned (Binary) = %b", unsigned_data);
    $display("Unsigned (Decimal)= %0d", unsigned_data);

    $display("Signed (Binary)   = %b", signed_data);
    $display("Signed (Decimal)  = %0d", signed_data);

    signed_data = -8'd25;

    $display("Signed (-25) Binary  = %b", signed_data);
    $display("Signed (-25) Decimal = %0d", signed_data);

    $finish;
end

endmodule

/* Expected output
Unsigned (Binary) = 11111011
Unsigned (Decimal)= 251
Signed (Binary)   = 11111011
Signed (Decimal)  = -5
Signed (-25) Binary  = 11100111
Signed (-25) Decimal = -25 */
