`timescale 1ns/1ps

module demux1to8_structural_tb;

reg I;
reg [2:0] Sel;

wire Y0;
wire Y1;
wire Y2;
wire Y3;
wire Y4;
wire Y5;
wire Y6;
wire Y7;

demux1to8_structural dut (
    .I(I),
    .Sel(Sel),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3),
    .Y4(Y4),
    .Y5(Y5),
    .Y6(Y6),
    .Y7(Y7)
);

initial begin
    $dumpfile("demux1to8_structural_tb.vcd");
    $dumpvars(0, demux1to8_structural_tb);

    $display("Time\tI\tSel\tY0\tY1\tY2\tY3\tY4\tY5\tY6\tY7");
    $monitor("%0t\t%b\t%03b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b",
             $time, I, Sel, Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7);

    I = 0; Sel = 3'b000; #10;
    I = 1; Sel = 3'b000; #10;
    I = 1; Sel = 3'b001; #10;
    I = 1; Sel = 3'b010; #10;
    I = 1; Sel = 3'b011; #10;
    I = 1; Sel = 3'b100; #10;
    I = 1; Sel = 3'b101; #10;
    I = 1; Sel = 3'b110; #10;
    I = 1; Sel = 3'b111; #10;
    I = 0; Sel = 3'b000; #10;

    $finish;
end

endmodule