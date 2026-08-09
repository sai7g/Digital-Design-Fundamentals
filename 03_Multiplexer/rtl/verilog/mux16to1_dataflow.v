module mux16to1_dataflow (
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
    output Y
);

assign Y = (Sel == 4'd0)  ? I0  :
           (Sel == 4'd1)  ? I1  :
           (Sel == 4'd2)  ? I2  :
           (Sel == 4'd3)  ? I3  :
           (Sel == 4'd4)  ? I4  :
           (Sel == 4'd5)  ? I5  :
           (Sel == 4'd6)  ? I6  :
           (Sel == 4'd7)  ? I7  :
           (Sel == 4'd8)  ? I8  :
           (Sel == 4'd9)  ? I9  :
           (Sel == 4'd10) ? I10 :
           (Sel == 4'd11) ? I11 :
           (Sel == 4'd12) ? I12 :
           (Sel == 4'd13) ? I13 :
           (Sel == 4'd14) ? I14 :
                            I15;

endmodule