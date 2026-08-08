module mux2to1_dataflow(
    input logic I0,
    input logic I1,
    input logic Sel,
    output logic Y
);

assign Y = Sel ? I1 : I0;

endmodule