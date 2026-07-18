module integer_array_index;

reg [7:0] memory [0:7];
integer i;

initial begin
    for (i = 0; i < 8; i = i + 1)
        memory[i] = i * 10;

    for (i = 0; i < 8; i = i + 1)
        $display("memory[%0d] = %0d", i, memory[i]);

    $finish;
end

endmodule
