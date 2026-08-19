`timescale 1ns/1ps

module encoder8to3_structural_tb;

reg [7:0] I;
wire [2:0] Y;

encoder8to3_structural dut(
    .I(I),
    .Y(Y)
);

initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0, encoder8to3_structural_tb);

    $display("Time\tI\t\tY");
    $monitor("%0t\t%b\t%b", $time, I, Y);

    I = 8'b00000001;
    #10 I = 8'b00000010;
    #10 I = 8'b00000100;
    #10 I = 8'b00001000;
    #10 I = 8'b00010000;
    #10 I = 8'b00100000;
    #10 I = 8'b01000000;
    #10 I = 8'b10000000;
    #10 I = 8'b00000000;
    #10 I = 8'b00000011;
    #10 I = 8'b00000110;
    #10 I = 8'b11111111;
    #10 $finish;
end

endmodule