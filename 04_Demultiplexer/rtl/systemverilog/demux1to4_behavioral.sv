module demux1to4_behavioral (
    input logic I,
    input logic [1:0] Sel,
    output logic Y0,
    output logic Y1,
    output logic Y2,
    output logic Y3
);

always_comb begin
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