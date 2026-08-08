module mux2to1_structural(
    input I0,
    input I1,
    input Sel,
    output Y
);

wire Sel_bar;
wire W0;
wire W1;

not (Sel_bar, Sel);
and (W0, I0, Sel_bar);
and (W1, I1, Sel);
or (Y, W0, W1);

endmodule