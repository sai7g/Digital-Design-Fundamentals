module mux8to1_dataflow(
    input  logic I0,
    input  logic I1,
    input  logic I2,
    input  logic I3,
    input  logic I4,
    input  logic I5,
    input  logic I6,
    input  logic I7,
    input  logic [2:0] Sel,
    output logic Y
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