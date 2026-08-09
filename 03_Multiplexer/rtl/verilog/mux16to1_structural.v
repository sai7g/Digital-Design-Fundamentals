module mux16to1_structural (
    input I0,
    input I1,
    input I2,
    input I3,
    input I4,
    input I5,
    input I6,
    input I7,
    input I8,
    input I9,
    input I10,
    input I11,
    input I12,
    input I13,
    input I14,
    input I15,
    input [3:0] Sel,
    output Y
);

wire w0;
wire w1;
wire w2;
wire w3;
wire w4;
wire w5;
wire w6;
wire w7;

wire w8;
wire w9;
wire w10;
wire w11;

wire w12;
wire w13;

mux2to1_structural m0 (.I0(I0),  .I1(I1),  .Sel(Sel[0]), .Y(w0));
mux2to1_structural m1 (.I0(I2),  .I1(I3),  .Sel(Sel[0]), .Y(w1));
mux2to1_structural m2 (.I0(I4),  .I1(I5),  .Sel(Sel[0]), .Y(w2));
mux2to1_structural m3 (.I0(I6),  .I1(I7),  .Sel(Sel[0]), .Y(w3));
mux2to1_structural m4 (.I0(I8),  .I1(I9),  .Sel(Sel[0]), .Y(w4));
mux2to1_structural m5 (.I0(I10), .I1(I11), .Sel(Sel[0]), .Y(w5));
mux2to1_structural m6 (.I0(I12), .I1(I13), .Sel(Sel[0]), .Y(w6));
mux2to1_structural m7 (.I0(I14), .I1(I15), .Sel(Sel[0]), .Y(w7));

mux2to1_structural m8  (.I0(w0), .I1(w1), .Sel(Sel[1]), .Y(w8));
mux2to1_structural m9  (.I0(w2), .I1(w3), .Sel(Sel[1]), .Y(w9));
mux2to1_structural m10 (.I0(w4), .I1(w5), .Sel(Sel[1]), .Y(w10));
mux2to1_structural m11 (.I0(w6), .I1(w7), .Sel(Sel[1]), .Y(w11));

mux2to1_structural m12 (.I0(w8),  .I1(w9),  .Sel(Sel[2]), .Y(w12));
mux2to1_structural m13 (.I0(w10), .I1(w11), .Sel(Sel[2]), .Y(w13));

mux2to1_structural m14 (.I0(w12), .I1(w13), .Sel(Sel[3]), .Y(Y));

endmodule