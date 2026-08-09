module demux1to2_behavioral (
    input logic I,
    input logic Sel,
    output logic Y0,
    output logic Y1
);

always_comb begin
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