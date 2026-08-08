module half_adder_behavioral_tb;

reg A;
reg B;

wire Sum;
wire Carry;

half_adder_behavioral dut(
    .A(A),
    .B(B),
    .Sum(Sum),
    .Carry(Carry)
);

initial begin
    $dumpfile("01_Half_Adder/waveforms/half_adder_behavioral.vcd");
    $dumpvars(0, half_adder_behavioral_tb);

    $display("Time\tA\tB\TSum\tCarry");
    $display("%0t\t%b\t%b\t%b\t%b", $time, A, B, Sum, Carry);

    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;

    $finish;
end

endmodule