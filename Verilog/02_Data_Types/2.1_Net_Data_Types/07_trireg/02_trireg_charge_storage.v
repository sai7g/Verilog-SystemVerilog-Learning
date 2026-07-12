module trireg_charge_storage;

reg drive_enable;
reg drive_value;

trireg data;

assign data = drive_enable ? drive_value : 1'bz;

initial begin
    drive_enable = 1'b1;
    drive_value  = 1'b1;
    #1;
    $display("Step 1 : data = %b", data);

    drive_enable = 1'b0;
    #1;
    $display("Step 2 : data = %b", data);

    drive_enable = 1'b1;
    drive_value  = 1'b0;
    #1;
    $display("Step 3 : data = %b", data);

    drive_enable = 1'b0;
    #1;
    $display("Step 4 : data = %b", data);

    $finish;
end

endmodule

/* Expected output 
Step 1 : data = 1
Step 2 : data = 1
Step 3 : data = 0
Step 4 : data = 0 */
