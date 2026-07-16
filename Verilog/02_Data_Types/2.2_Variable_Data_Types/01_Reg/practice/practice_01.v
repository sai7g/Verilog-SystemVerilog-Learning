module reg_practice1(
    input a, 
    output reg y
    );

always @(a) begin
    y = a;
end

endmodule