module mux16to1_behavioral (
    input  logic I0,
    input  logic I1,
    input  logic I2,
    input  logic I3,
    input  logic I4,
    input  logic I5,
    input  logic I6,
    input  logic I7,
    input  logic I8,
    input  logic I9,
    input  logic I10,
    input  logic I11,
    input  logic I12,
    input  logic I13,
    input  logic I14,
    input  logic I15,
    input  logic [3:0] Sel,
    output logic Y
);

always_comb begin
    case (Sel)
        4'd0:  Y = I0;
        4'd1:  Y = I1;
        4'd2:  Y = I2;
        4'd3:  Y = I3;
        4'd4:  Y = I4;
        4'd5:  Y = I5;
        4'd6:  Y = I6;
        4'd7:  Y = I7;
        4'd8:  Y = I8;
        4'd9:  Y = I9;
        4'd10: Y = I10;
        4'd11: Y = I11;
        4'd12: Y = I12;
        4'd13: Y = I13;
        4'd14: Y = I14;
        4'd15: Y = I15;
        default: Y = 1'b0;
    endcase
end

endmodule