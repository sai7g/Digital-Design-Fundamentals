module mux4to1_structural(
    input I0,
    input I1,
    input I2,
    input I3,
    input [1:0] Sel,
    output Y
);

wire W0;
wire W1;

mux2to1_structural M0 (
    .I0(I0),
    .I1(I1),
    .Sel(Sel[0]),
    .Y(W0)
);

mux2to1_structural M1 (
    .I0(I2),
    .I1(I3),
    .Sel(Sel[0]),
    .Y(W1)
);

mux2to1_structural M2 (
    .I0(W0),
    .I1(W1),
    .Sel(Sel[1]),
    .Y(Y)
);

endmodule