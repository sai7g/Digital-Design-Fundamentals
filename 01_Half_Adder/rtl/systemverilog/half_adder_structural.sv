module half_adder_structural (
    input  logic A,
    input  logic B,
    output logic Sum,
    output logic Carry
);

xor (Sum, A, B);
and (Carry, A, B);

endmodule