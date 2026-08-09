module demux1to8_dataflow (
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

assign Y0 = ~Sel[2] & ~Sel[1] & ~Sel[0] & I;
assign Y1 = ~Sel[2] & ~Sel[1] &  Sel[0] & I;
assign Y2 = ~Sel[2] &  Sel[1] & ~Sel[0] & I;
assign Y3 = ~Sel[2] &  Sel[1] &  Sel[0] & I;
assign Y4 =  Sel[2] & ~Sel[1] & ~Sel[0] & I;
assign Y5 =  Sel[2] & ~Sel[1] &  Sel[0] & I;
assign Y6 =  Sel[2] &  Sel[1] & ~Sel[0] & I;
assign Y7 =  Sel[2] &  Sel[1] &  Sel[0] & I;

endmodule