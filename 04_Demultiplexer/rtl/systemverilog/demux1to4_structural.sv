module demux1to4_structural (
    input logic I,
    input logic [1:0] Sel,
    output logic Y0,
    output logic Y1,
    output logic Y2,
    output logic Y3
);

logic w0;
logic w1;

demux1to2_structural d0 (
    .I(I),
    .Sel(Sel[1]),
    .Y0(w0),
    .Y1(w1)
);

demux1to2_structural d1 (
    .I(w0),
    .Sel(Sel[0]),
    .Y0(Y0),
    .Y1(Y1)
);

demux1to2_structural d2 (
    .I(w1),
    .Sel(Sel[0]),
    .Y0(Y2),
    .Y1(Y3)
);

endmodule