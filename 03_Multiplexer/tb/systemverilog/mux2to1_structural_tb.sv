`timescale 1ns/1ps

module mux2to1_structural_tb;

logic I0;
logic I1;
logic Sel;

logic Y;

mux2to1_structural dut (
    .I0(I0),
    .I1(I1),
    .Sel(Sel),
    .Y(Y)
);

initial begin
    $dumpfile("mux2to1_structural_tb.vcd");
    $dumpvars(0, mux2to1_structural_tb);

    $display("Time\tI0\tI1\tSel\tY");
    $monitor("%0t\t%b\t%b\t%b\t%b", $time, I0, I1, Sel, Y);

    I0 = 0; I1 = 0; Sel = 0; #10;
    I0 = 0; I1 = 1; Sel = 0; #10;
    I0 = 1; I1 = 0; Sel = 0; #10;
    I0 = 1; I1 = 1; Sel = 0; #10;

    I0 = 0; I1 = 0; Sel = 1; #10;
    I0 = 0; I1 = 1; Sel = 1; #10;
    I0 = 1; I1 = 0; Sel = 1; #10;
    I0 = 1; I1 = 1; Sel = 1; #10;

    $finish;
end

endmodule