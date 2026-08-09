module mux4to1_dataflow(
    input  logic I0,
    input  logic I1,
    input  logic I2,
    input  logic I3,
    input  logic [1:0] Sel,
    output logic Y
);

assign Y = (Sel == 2'b00) ? I0 :
           (Sel == 2'b01) ? I1 :
           (Sel == 2'b10) ? I2 :
                            I3;

endmodule