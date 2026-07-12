module trireg_unknown_values;

reg drive_enable;
reg drive_unknown;

trireg data;

assign data = drive_enable ? drive_unknown : 1'bz;

initial begin
    drive_enable  = 1'b1;
    drive_unknown = 1'bx;
    #1;
    $display("Step 1 : data = %b", data);

    drive_enable = 1'b0;
    #1;
    $display("Step 2 : data = %b", data);

    $finish;
end

endmodule

/* Expected output
Step 1 : data = x
Step 2 : data = x */
