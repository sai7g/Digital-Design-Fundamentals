module demux1to2_dataflow (
    input logic I,
    input logic Sel,
    output logic Y0,
    output logic Y1
);

assign Y0 = ~Sel & I;
assign Y1 = Sel & I;

endmodule