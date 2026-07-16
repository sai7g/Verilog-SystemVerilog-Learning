module reg_if(
    input a,
    input b,
    output reg y
);

always @(*) begin
    if (a == 1) begin
        y = b;
    end
    else begin
        y = 0;
    end
end

endmodule