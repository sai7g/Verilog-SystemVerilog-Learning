module basic_declaration;

logic a;

initial begin
    a = 1'b0;
    $display("Value of a = %b", a);

    a = 1'b1;
    $display("Value of a = %b", a);
end

endmodule
