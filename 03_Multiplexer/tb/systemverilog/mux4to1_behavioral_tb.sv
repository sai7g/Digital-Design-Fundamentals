`timescale 1ns/1ps

module mux4to1_behavioral_tb;

logic I0;
logic I1;
logic I2;
logic I3;
logic [1:0] Sel;

logic Y;

mux4to1_behavioral dut (
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .Sel(Sel),
    .Y(Y)
);

initial begin
    $dumpfile("mux4to1_behavioral_tb.vcd");
    $dumpvars(0, mux4to1_behavioral_tb);

    $display("Time\tI0 I1 I2 I3 Sel Y");
    $monitor("%0t\t%b  %b  %b  %b   %b  %b",
             $time, I0, I1, I2, I3, Sel, Y);

    I0 = 0; I1 = 0; I2 = 0; I3 = 0;

    Sel = 2'b00; #10;
    I0 = 1; #10;

    I0 = 0; I1 = 1;
    Sel = 2'b01; #10;

    I1 = 0; I2 = 1;
    Sel = 2'b10; #10;

    I2 = 0; I3 = 1;
    Sel = 2'b11; #10;

    I0 = 1; I1 = 1; I2 = 1; I3 = 1;

    Sel = 2'b00; #10;
    Sel = 2'b01; #10;
    Sel = 2'b10; #10;
    Sel = 2'b11; #10;

    $finish;
end

endmodule