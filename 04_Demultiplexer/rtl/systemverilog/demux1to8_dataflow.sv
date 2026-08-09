module demux1to8_dataflow (
    input  logic       din,
    input  logic [2:0] sel,
    output logic [7:0] y
);

assign y[0] = (~sel[2] & ~sel[1] & ~sel[0]) & din;
assign y[1] = (~sel[2] & ~sel[1] &  sel[0]) & din;
assign y[2] = (~sel[2] &  sel[1] & ~sel[0]) & din;
assign y[3] = (~sel[2] &  sel[1] &  sel[0]) & din;
assign y[4] = ( sel[2] & ~sel[1] & ~sel[0]) & din;
assign y[5] = ( sel[2] & ~sel[1] &  sel[0]) & din;
assign y[6] = ( sel[2] &  sel[1] & ~sel[0]) & din;
assign y[7] = ( sel[2] &  sel[1] &  sel[0]) & din;

endmodule