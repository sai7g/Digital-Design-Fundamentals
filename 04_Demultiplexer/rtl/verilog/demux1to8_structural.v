module demux1to8_structural (
    input I,
    input [2:0] Sel,
    output Y0,
    output Y1,
    output Y2,
    output Y3,
    output Y4,
    output Y5,
    output Y6,
    output Y7
);

wire w0;
wire w1;

demux1to2_structural d0 (
    .I(I),
    .Sel(Sel[2]),
    .Y0(w0),
    .Y1(w1)
);

demux1to4_structural d1 (
    .I(w0),
    .Sel(Sel[1:0]),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);

demux1to4_structural d2 (
    .I(w1),
    .Sel(Sel[1:0]),
    .Y0(Y4),
    .Y1(Y5),
    .Y2(Y6),
    .Y3(Y7)
);

endmodule