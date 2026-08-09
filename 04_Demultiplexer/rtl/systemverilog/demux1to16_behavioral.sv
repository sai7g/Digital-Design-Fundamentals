module demux1to16_behavioral (
    input  logic        din,
    input  logic [3:0]  sel,
    output logic [15:0] y
);

always_comb begin
    y = 16'b0000000000000000;
    case (sel)
        4'b0000: y[0]  = din;
        4'b0001: y[1]  = din;
        4'b0010: y[2]  = din;
        4'b0011: y[3]  = din;
        4'b0100: y[4]  = din;
        4'b0101: y[5]  = din;
        4'b0110: y[6]  = din;
        4'b0111: y[7]  = din;
        4'b1000: y[8]  = din;
        4'b1001: y[9]  = din;
        4'b1010: y[10] = din;
        4'b1011: y[11] = din;
        4'b1100: y[12] = din;
        4'b1101: y[13] = din;
        4'b1110: y[14] = din;
        4'b1111: y[15] = din;
    endcase
end

endmodule