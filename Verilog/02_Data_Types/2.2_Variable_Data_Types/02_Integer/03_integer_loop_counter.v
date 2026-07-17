module integer_loop_counter;

integer i;

initial begin
    for (i = 0; i < 8; i = i + 1) begin
        $display("Iteration = %0d", i);
    end

    $finish;
end

endmodule

/* Expected output
Iteration = 0
Iteration = 1
Iteration = 2
Iteration = 3
Iteration = 4
Iteration = 5
Iteration = 6
Iteration = 7 */