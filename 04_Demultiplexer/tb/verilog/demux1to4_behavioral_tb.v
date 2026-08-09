`timescale 1ns/1ps

module demux1to4_behavioral_tb;

reg I;
reg [1:0] Sel;

wire Y0;
wire Y1;
wire Y2;
wire Y3;

demux1to4_behavioral dut (
    .I(I),
    .Sel(Sel),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);

initial begin
    $dumpfile("demux1to4_behavioral_tb.vcd");
    $dumpvars(0, demux1to4_behavioral_tb);

    $display("Time\tI\tSel\tY0\tY1\tY2\tY3");
    $monitor("%0t\t%b\t%02b\t%b\t%b\t%b\t%b",
             $time, I, Sel, Y0, Y1, Y2, Y3);

    I = 0; Sel = 2'b00; #10;
    I = 1; Sel = 2'b00; #10;
    I = 1; Sel = 2'b01; #10;
    I = 1; Sel = 2'b10; #10;
    I = 1; Sel = 2'b11; #10;
    I = 0; Sel = 2'b00; #10;

    $finish;
end

endmodule