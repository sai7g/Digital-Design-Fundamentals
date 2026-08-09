module mux8to1_dataflow(
    input I0,
    input I1,
    input I2,
    input I3,
    input I4,
    input I5,
    input I6,
    input I7,
    input [2:0] Sel,
    output Y
);

assign Y = (Sel == 3'b000) ? I0 :
           (Sel == 3'b001) ? I1 :
           (Sel == 3'b010) ? I2 :
           (Sel == 3'b011) ? I3 :
           (Sel == 3'b100) ? I4 :
           (Sel == 3'b101) ? I5 :
           (Sel == 3'b110) ? I6 :
                             I7;

endmodule