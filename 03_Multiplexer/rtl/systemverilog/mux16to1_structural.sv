module mux16to1_structural (
    input logic I0,
    input logic I1,
    input logic I2,
    input logic I3,
    input logic I4,
    input logic I5,
    input logic I6,
    input logic I7,
    input logic I8,
    input logic I9,
    input logic I10,
    input logic I11,
    input logic I12,
    input logic I13,
    input logic I14,
    input logic I15,
    input logic [3:0] Sel,
    output logic Y
);

logic w0;
logic w1;
logic w2;
logic w3;
logic w4;
logic w5;
logic w6;
logic w7;

logic w8;
logic w9;
logic w10;
logic w11;

logic w12;
logic w13;

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