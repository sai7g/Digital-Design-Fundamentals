`timescale 1ns/1ps

module demux1to8_structural_tb;

logic din;
logic [2:0] sel;
logic [7:0] y;

demux1to8_structural dut (
    .din(din),
    .sel(sel),
    .y(y)
);

initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0, demux1to8_structural_tb);

    $display("Time\tDIN\tSEL\tY");
    $monitor("%0t\t%b\t%b\t%b", $time, din, sel, y);

    din = 0;
    sel = 3'b000;
    #10;

    din = 1; sel = 3'b000; #10;
    sel = 3'b001; #10;
    sel = 3'b010; #10;
    sel = 3'b011; #10;
    sel = 3'b100; #10;
    sel = 3'b101; #10;
    sel = 3'b110; #10;
    sel = 3'b111; #10;

    din = 0; sel = 3'b000; #10;
    sel = 3'b001; #10;
    sel = 3'b010; #10;
    sel = 3'b011; #10;
    sel = 3'b100; #10;
    sel = 3'b101; #10;
    sel = 3'b110; #10;
    sel = 3'b111; #10;

    $finish;
end

endmodule