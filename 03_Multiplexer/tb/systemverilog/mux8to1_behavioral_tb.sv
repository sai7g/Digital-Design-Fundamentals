`timescale 1ns/1ps

module mux8to1_behavioral_tb;

logic I0;
logic I1;
logic I2;
logic I3;
logic I4;
logic I5;
logic I6;
logic I7;
logic [2:0] Sel;

logic Y;

mux8to1_behavioral dut (
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .I4(I4),
    .I5(I5),
    .I6(I6),
    .I7(I7),
    .Sel(Sel),
    .Y(Y)
);

initial begin
    $dumpfile("mux8to1_behavioral_tb.vcd");
    $dumpvars(0, mux8to1_behavioral_tb);

    $display("Time\tSel\tY");
    $monitor("%0t\t%b\t%b", $time, Sel, Y);

    I0 = 0; I1 = 1; I2 = 0; I3 = 1;
    I4 = 0; I5 = 1; I6 = 0; I7 = 1;

    Sel = 3'b000; #10;
    Sel = 3'b001; #10;
    Sel = 3'b010; #10;
    Sel = 3'b011; #10;
    Sel = 3'b100; #10;
    Sel = 3'b101; #10;
    Sel = 3'b110; #10;
    Sel = 3'b111; #10;

    I0 = 1; I1 = 0; I2 = 1; I3 = 0;
    I4 = 1; I5 = 0; I6 = 1; I7 = 0;

    Sel = 3'b000; #10;
    Sel = 3'b001; #10;
    Sel = 3'b010; #10;
    Sel = 3'b011; #10;
    Sel = 3'b100; #10;
    Sel = 3'b101; #10;
    Sel = 3'b110; #10;
    Sel = 3'b111; #10;

    $finish;
end

endmodule