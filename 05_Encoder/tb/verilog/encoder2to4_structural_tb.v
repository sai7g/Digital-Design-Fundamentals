`timescale 1ns/1ps

module encoder2to4_structural_tb;

reg [3:0] I;
wire [1:0] Y;

encoder2to4_structural dut (
    .I(I),
    .Y(Y)
);

initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0, encoder2to4_structural_tb);

    $display("Time\tI\tY");
    $monitor("%0t\t%b\t%b", $time, I, Y);

    I = 4'b0000; #10;
    I = 4'b0001; #10;
    I = 4'b0010; #10;
    I = 4'b0100; #10;
    I = 4'b1000; #10;
    I = 4'b0011; #10;
    I = 4'b0110; #10;
    I = 4'b1111; #10;

    $finish;
end

endmodule