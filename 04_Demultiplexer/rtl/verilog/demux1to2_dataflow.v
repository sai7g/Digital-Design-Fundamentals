module demux1to2_dataflow (
    input I,
    input Sel,
    output Y0,
    output Y1
);

assign Y0 = ~Sel & I;
assign Y1 = Sel & I;

endmodule