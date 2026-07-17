module integer_basic;

integer count;
integer temperature;
integer balance;

initial begin
    count = 25;
    temperature = -10;
    balance = 1500;

    $display("count       = %0d", count);
    $display("temperature = %0d", temperature);
    $display("balance     = %0d", balance);

    $finish;
end

endmodule

/* Expected output
count       = 25
temperature = -10
balance     = 1500 */
