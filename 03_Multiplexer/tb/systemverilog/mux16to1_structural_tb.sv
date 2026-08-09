`timescale 1ns/1ps

module mux16to1_structural_tb;

logic I0;
logic I1;
logic I2;
logic I3;
logic I4;
logic I5;
logic I6;
logic I7;
logic I8;
logic I9;
logic I10;
logic I11;
logic I12;
logic I13;
logic I14;
logic I15;
logic [3:0] Sel;

logic Y;

mux16to1_structural dut (
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .I4(I4),
    .I5(I5),
    .I6(I6),
    .I7(I7),
    .I8(I8),
    .I9(I9),
    .I10(I10),
    .I11(I11),
    .I12(I12),
    .I13(I13),
    .I14(I14),
    .I15(I15),
    .Sel(Sel),
    .Y(Y)
);

initial begin
    $dumpfile("mux16to1_structural_tb.vcd");
    $dumpvars(0, mux16to1_structural_tb);

    $display("Time\tSel\tY");
    $monitor("%0t\t%0d\t%b", $time, Sel, Y);

    I0  = 0;
    I1  = 1;
    I2  = 0;
    I3  = 1;
    I4  = 0;
    I5  = 1;
    I6  = 0;
    I7  = 1;
    I8  = 1;
    I9  = 0;
    I10 = 1;
    I11 = 0;
    I12 = 1;
    I13 = 0;
    I14 = 1;
    I15 = 0;

    Sel = 4'd0;  #10;
    Sel = 4'd1;  #10;
    Sel = 4'd2;  #10;
    Sel = 4'd3;  #10;
    Sel = 4'd4;  #10;
    Sel = 4'd5;  #10;
    Sel = 4'd6;  #10;
    Sel = 4'd7;  #10;
    Sel = 4'd8;  #10;
    Sel = 4'd9;  #10;
    Sel = 4'd10; #10;
    Sel = 4'd11; #10;
    Sel = 4'd12; #10;
    Sel = 4'd13; #10;
    Sel = 4'd14; #10;
    Sel = 4'd15; #10;

    $finish;
end

endmodule