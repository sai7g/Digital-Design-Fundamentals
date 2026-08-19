module encoder2to4_dataflow(
    input logic [3:0] I,
    output wire [1:0] Y
);

assign Y[0] = I[1] | I[3];
assign Y[1] = I[2] | I[3];

endmodule