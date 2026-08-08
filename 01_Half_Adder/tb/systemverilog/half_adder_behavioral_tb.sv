`timescale 1ns/1ps

module half_adder_behavioral_tb;

logic A;
logic B;

logic Sum;
logic Carry;

half_adder_behavioral dut (
    .A(A),
    .B(B),
    .Sum(Sum),
    .Carry(Carry)
);

initial begin
    $dumpfile("01_Half_Adder/waveforms/half_adder_behavioral_sv.vcd");
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