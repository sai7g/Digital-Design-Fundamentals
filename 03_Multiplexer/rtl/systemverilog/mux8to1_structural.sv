module mux8to1_structural(
    input  logic I0,
    input  logic I1,
    input  logic I2,
    input  logic I3,
    input  logic I4,
    input  logic I5,
    input  logic I6,
    input  logic I7,
    input  logic [2:0] Sel,
    output logic Y
);

logic W0;
logic W1;

mux4to1_structural M0 (
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .Sel(Sel[1:0]),
    .Y(W0)
);

mux4to1_structural M1 (
    .I0(I4),
    .I1(I5),
    .I2(I6),
    .I3(I7),
    .Sel(Sel[1:0]),
    .Y(W1)
);

mux2to1_structural M2 (
    .I0(W0),
    .I1(W1),
    .Sel(Sel[2]),
    .Y(Y)
);

endmodule