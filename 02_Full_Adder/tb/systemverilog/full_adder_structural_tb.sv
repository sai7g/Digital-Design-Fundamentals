`timescale 1ns/1ps

module full_adder_structural_tb;

logic A;
logic B;
logic Cin;

logic Sum;
logic Cout;

full_adder_structural dut(
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin
    $dumpfile("full_adder_structural.vcd");
    $dumpvars(0, full_adder_structural_tb);

    $display("A B Cin | Sum Cout");
    $monitor("%b %b %b | %b %b", A, B, Cin, Sum, Cout);

    A=0; B=0; Cin=0; #10;
    A=0; B=0; Cin=1; #10;
    A=0; B=1; Cin=0; #10;
    A=0; B=1; Cin=1; #10;
    A=1; B=0; Cin=0; #10;
    A=1; B=0; Cin=1; #10;
    A=1; B=1; Cin=0; #10;
    A=1; B=1; Cin=1; #10;

    $finish;
end

endmodule