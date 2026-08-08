module full_adder_behavioral(
    input logic A,
    input logic B,
    input logic Cin,
    output logic Sum,
    output logic Cout
);

always_comb begin
    Sum  = (A ^ B ^ Cin);
    Cout = (A & B) | (B & Cin) | (Cin & A);
end

endmodule