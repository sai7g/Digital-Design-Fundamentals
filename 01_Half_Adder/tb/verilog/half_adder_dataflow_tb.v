`timescale 1ns/1ps

module half_adder_dataflow_tb;

reg A;
reg B;

wire Sum;
wire Carry;

half_adder_dataflow dut (
    .A(A),
    .B(B),
    .Sum(Sum),
    .Carry(Carry)
);

initial begin
    $dumpfile("01_Half_Adder/waveforms/half_adder_dataflow.vcd");
    $dumpvars;

    $display("Time\tA B | Sum Carry");
    $monitor("%0t\t%b %b | %b    %b", $time, A, B, Sum, Carry);

    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;

    $finish;
end

endmodule