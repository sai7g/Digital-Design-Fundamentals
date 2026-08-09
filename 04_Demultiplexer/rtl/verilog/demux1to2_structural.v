module demux1to2_structural (
    input I,
    input Sel,
    output Y0,
    output Y1
);

wire Sel_bar;

not (Sel_bar, Sel);
and (Y0, I, Sel_bar);
and (Y1, I, Sel);

endmodule