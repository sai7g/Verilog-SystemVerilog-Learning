module reg_array;

reg [7:0] memory [0:7];

integer i;

initial begin
    for (i = 0; i < 8; i = i + 1)
        memory[i] = i;

    $display("Complete Memory Contents");

    for (i = 0; i < 8; i = i + 1)
        $display("memory[%0d] = %0d", i, memory[i]);

    memory[3] = 8'd100;

    $display("\nAfter Updating memory[3]");

    for (i = 0; i < 8; i = i + 1)
        $display("memory[%0d] = %0d", i, memory[i]);

    $finish;
end

endmodule

/*Expected output
Complete Memory Contents
memory[0] = 0
memory[1] = 1
memory[2] = 2
memory[3] = 3
memory[4] = 4
memory[5] = 5
memory[6] = 6
memory[7] = 7

After Updating memory[3]
memory[0] = 0
memory[1] = 1
memory[2] = 2
memory[3] = 100
memory[4] = 4
memory[5] = 5
memory[6] = 6
memory[7] = 7 */
