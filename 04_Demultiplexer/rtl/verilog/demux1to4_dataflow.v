module demux1to4_dataflow (
    input I,
    input [1:0] Sel,
    output Y0,
    output Y1,
    output Y2,
    output Y3
);

assign Y0 = ~Sel[1] & ~Sel[0] & I;
assign Y1 = ~Sel[1] &  Sel[0] & I;
assign Y2 =  Sel[1] & ~Sel[0] & I;
assign Y3 =  Sel[1] &  Sel[0] & I;

endmodule