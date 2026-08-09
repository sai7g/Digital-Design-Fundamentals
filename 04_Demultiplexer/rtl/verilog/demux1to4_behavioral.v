module demux1to4_behavioral (
    input I,
    input [1:0] Sel,
    output reg Y0,
    output reg Y1,
    output reg Y2,
    output reg Y3
);

always @(*) begin
    Y0 = 1'b0;
    Y1 = 1'b0;
    Y2 = 1'b0;
    Y3 = 1'b0;

    case (Sel)
        2'b00: Y0 = I;
        2'b01: Y1 = I;
        2'b10: Y2 = I;
        2'b11: Y3 = I;
        default: begin
            Y0 = 1'b0;
            Y1 = 1'b0;
            Y2 = 1'b0;
            Y3 = 1'b0;
        end
    endcase
end

endmodule