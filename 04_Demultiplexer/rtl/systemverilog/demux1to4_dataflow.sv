module demux1to4_dataflow (
    input logic I,
    input logic [1:0] Sel,
    output logic Y0,
    output logic Y1,
    output logic Y2,
    output logic Y3
);

assign Y0 = ~Sel[1] & ~Sel[0] & I;
assign Y1 = ~Sel[1] &  Sel[0] & I;
assign Y2 =  Sel[1] & ~Sel[0] & I;
assign Y3 =  Sel[1] &  Sel[0] & I;

endmodule