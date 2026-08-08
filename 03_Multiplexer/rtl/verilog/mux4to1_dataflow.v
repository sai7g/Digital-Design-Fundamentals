module mux4to1_dataflow(
    input I0,
    input I1,
    input I2,
    input I3,
    input [1:0] Sel,
    output Y
);

assign Y = (Sel == 2'b00) ? I0 :
           (Sel == 2'b01) ? I1 :
           (Sel == 2'b10) ? I2 :
                            I3;

endmodule