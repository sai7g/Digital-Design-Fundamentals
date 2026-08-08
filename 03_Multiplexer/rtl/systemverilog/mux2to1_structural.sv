module mux2to1_structural(
    input logic I0,
    input logic I1,
    input logic Sel,
    output logic Y
);

logic Sel_bar;
logic W0;
logic W1;

not (Sel_bar, Sel);
and (W0, I0, Sel_bar);
and (W1, I1, Sel);
or (Y, W0, W1);

endmodule