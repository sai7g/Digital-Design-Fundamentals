`timescale 1ns/1ps

module demux1to2_dataflow_tb;

logic I;
logic Sel;

logic Y0;
logic Y1;

demux1to2_dataflow dut (
    .I(I),
    .Sel(Sel),
    .Y0(Y0),
    .Y1(Y1)
);

initial begin
    $dumpfile("demux1to2_dataflow_tb.vcd");
    $dumpvars(0, demux1to2_dataflow_tb);

    $display("Time\tI\tSel\tY0\tY1");
    $monitor("%0t\t%b\t%b\t%b\t%b", $time, I, Sel, Y0, Y1);

    I = 0; Sel = 0; #10;
    I = 1; Sel = 0; #10;
    I = 0; Sel = 1; #10;
    I = 1; Sel = 1; #10;

    $finish;
end

endmodule