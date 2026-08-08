module full_adder_behavioral(
    input A,
    input B,
    input Cin,
    output reg Sum,
    output reg Cout
);

always @(*) begin
    Sum = A ^ B ^ Cin;
    Cout = (A & B) | (B & Cin) | (Cin & A);
end

endmodule