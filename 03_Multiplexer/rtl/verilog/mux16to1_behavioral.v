module mux16to1_behavioral (
    input I0,
    input I1,
    input I2,
    input I3,
    input I4,
    input I5,
    input I6,
    input I7,
    input I8,
    input I9,
    input I10,
    input I11,
    input I12,
    input I13,
    input I14,
    input I15,
    input [3:0] Sel,
    output reg Y
);

always @(*) begin
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