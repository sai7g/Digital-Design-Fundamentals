module demux1to2_behavioral (
    input I,
    input Sel,
    output reg Y0,
    output reg Y1
);

always @(*) begin
    Y0 = 1'b0;
    Y1 = 1'b0;

    case (Sel)
        1'b0: Y0 = I;
        1'b1: Y1 = I;
        default: begin
            Y0 = 1'b0;
            Y1 = 1'b0;
        end
    endcase
end

endmodule