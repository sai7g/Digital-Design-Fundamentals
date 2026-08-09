module demux1to4_structural (
    input I,
    input [1:0] Sel,
    output Y0,
    output Y1,
    output Y2,
    output Y3
);

wire w0;
wire w1;

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