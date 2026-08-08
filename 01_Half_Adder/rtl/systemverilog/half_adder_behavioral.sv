module half_adder_behavioral (
    input  logic A,
    input  logic B,
    output logic Sum,
    output logic Carry
);

always_comb begin
    Sum   = A ^ B;
    Carry = A & B;
end

endmodule