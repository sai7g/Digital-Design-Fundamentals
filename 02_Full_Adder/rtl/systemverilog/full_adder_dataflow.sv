module full_adder_dataflow(
    input logic A,
    input logic B,
    input logic Cin,
    output logic Sum,
    output logic Cout
);

assign Sum = A ^ B ^ Cin;
assign Cout = (A & B) | (B & Cin) | (A & Cin);

endmodule