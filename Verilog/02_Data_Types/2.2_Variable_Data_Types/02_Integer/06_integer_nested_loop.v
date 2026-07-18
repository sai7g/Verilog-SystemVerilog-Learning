module integer_nested_loop;

integer row;
integer column;

initial begin
    for (row = 0; row < 3; row = row + 1) begin
        for (column = 0; column < 4; column = column + 1) begin
            $display("row = %0d, column = %0d", row, column);
        end
    end

    $finish;
end

endmodule
