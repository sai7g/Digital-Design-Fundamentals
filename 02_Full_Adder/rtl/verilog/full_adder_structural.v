module full_adder_structural(
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
);

wire t1, t2, t3;

and (t1, A, B);
and (t2, B, Cin);
and (t3, A, Cin);
xor (Sum, A, B, Cin);
or  (Cout, t1, t2, t3);

endmodule