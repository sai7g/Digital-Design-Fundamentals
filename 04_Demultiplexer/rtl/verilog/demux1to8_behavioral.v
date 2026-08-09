module demux1to8_behavioral (
    input I,
    input [2:0] Sel,
    output reg Y0,
    output reg Y1,
    output reg Y2,
    output reg Y3,
    output reg Y4,
    output reg Y5,
    output reg Y6,
    output reg Y7
);

always @(*) begin
    Y0 = 1'b0;
    Y1 = 1'b0;
    Y2 = 1'b0;
    Y3 = 1'b0;
    Y4 = 1'b0;
    Y5 = 1'b0;
    Y6 = 1'b0;
    Y7 = 1'b0;

    case (Sel)
        3'b000: Y0 = I;
        3'b001: Y1 = I;
        3'b010: Y2 = I;
        3'b011: Y3 = I;
        3'b100: Y4 = I;
        3'b101: Y5 = I;
        3'b110: Y6 = I;
        3'b111: Y7 = I;
        default: begin
            Y0 = 1'b0;
            Y1 = 1'b0;
            Y2 = 1'b0;
            Y3 = 1'b0;
            Y4 = 1'b0;
            Y5 = 1'b0;
            Y6 = 1'b0;
            Y7 = 1'b0;
        end
    endcase
end

endmodule