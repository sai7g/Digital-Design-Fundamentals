module full_adder_dataflow(
    input A,
    input B,
    input Cin,
    output wire Sum,
    output wire Cout
);

assign Sum  = (A ^ B ^ Cin);
assign Cout = (A & B) | (B & Cin) | (Cin & A);
endmodule