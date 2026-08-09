module demux1to16_dataflow (
    input din,
    input [3:0] sel,
    output [15:0] y
);

assign y[0]  = (~sel[3] & ~sel[2] & ~sel[1] & ~sel[0]) & din;
assign y[1]  = (~sel[3] & ~sel[2] & ~sel[1] &  sel[0]) & din;
assign y[2]  = (~sel[3] & ~sel[2] &  sel[1] & ~sel[0]) & din;
assign y[3]  = (~sel[3] & ~sel[2] &  sel[1] &  sel[0]) & din;
assign y[4]  = (~sel[3] &  sel[2] & ~sel[1] & ~sel[0]) & din;
assign y[5]  = (~sel[3] &  sel[2] & ~sel[1] &  sel[0]) & din;
assign y[6]  = (~sel[3] &  sel[2] &  sel[1] & ~sel[0]) & din;
assign y[7]  = (~sel[3] &  sel[2] &  sel[1] &  sel[0]) & din;
assign y[8]  = ( sel[3] & ~sel[2] & ~sel[1] & ~sel[0]) & din;
assign y[9]  = ( sel[3] & ~sel[2] & ~sel[1] &  sel[0]) & din;
assign y[10] = ( sel[3] & ~sel[2] &  sel[1] & ~sel[0]) & din;
assign y[11] = ( sel[3] & ~sel[2] &  sel[1] &  sel[0]) & din;
assign y[12] = ( sel[3] &  sel[2] & ~sel[1] & ~sel[0]) & din;
assign y[13] = ( sel[3] &  sel[2] & ~sel[1] &  sel[0]) & din;
assign y[14] = ( sel[3] &  sel[2] &  sel[1] & ~sel[0]) & din;
assign y[15] = ( sel[3] &  sel[2] &  sel[1] &  sel[0]) & din;

endmodule