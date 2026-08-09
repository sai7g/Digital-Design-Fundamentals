module mux16to1_dataflow (
    input logic I0,
    input logic I1,
    input logic I2,
    input logic I3,
    input logic I4,
    input logic I5,
    input logic I6,
    input logic I7,
    input logic I8,
    input logic I9,
    input logic I10,
    input logic I11,
    input logic I12,
    input logic I13,
    input logic I14,
    input logic I15,
    input logic [3:0] Sel,
    output logic Y
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