module combinational_always(

    input wire a,
    input wire b,
    input wire c,
    output reg y

);

always @(*) begin
    y = a & b & c;
end

endmodule
