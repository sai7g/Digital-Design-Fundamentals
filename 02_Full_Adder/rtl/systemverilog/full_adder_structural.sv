module full_adder_structural(
    input logic A,
    input logic B,
    input logic Cin,
    output logic Sum,
    output logic Cout
);

logic t1, t2, t3;

and (t1, A, B);
and (t2, B, Cin);
and (t3, A, Cin);

xor (Sum, A, B, Cin);

or (Cout, t1, t2, t3);

endmodule