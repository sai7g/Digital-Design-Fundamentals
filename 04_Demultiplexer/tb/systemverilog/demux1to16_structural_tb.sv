`timescale 1ns/1ps

module demux1to16_structural_tb;

logic din;
logic [3:0] sel;
logic [15:0] y;

demux1to16_structural dut (
    .din(din),
    .sel(sel),
    .y(y)
);

initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0, demux1to16_structural_tb);

    $display("Time\tDIN\tSEL\tY");
    $monitor("%0t\t%b\t%04b\t%b", $time, din, sel, y);

    din = 0;
    sel = 4'b0000;
    #10;

    din = 1;

    sel = 4'b0000; #10;
    sel = 4'b0001; #10;
    sel = 4'b0010; #10;
    sel = 4'b0011; #10;
    sel = 4'b0100; #10;
    sel = 4'b0101; #10;
    sel = 4'b0110; #10;
    sel = 4'b0111; #10;
    sel = 4'b1000; #10;
    sel = 4'b1001; #10;
    sel = 4'b1010; #10;
    sel = 4'b1011; #10;
    sel = 4'b1100; #10;
    sel = 4'b1101; #10;
    sel = 4'b1110; #10;
    sel = 4'b1111; #10;

    din = 0;

    sel = 4'b0000; #10;
    sel = 4'b0101; #10;
    sel = 4'b1010; #10;
    sel = 4'b1111; #10;

    $finish;
end

endmodule