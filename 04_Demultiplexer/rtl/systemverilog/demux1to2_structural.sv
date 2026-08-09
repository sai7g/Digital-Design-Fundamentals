module demux1to2_structural (
    input logic I,
    input logic Sel,
    output logic Y0,
    output logic Y1
);

logic Sel_bar;

not (Sel_bar, Sel);
and (Y0, I, Sel_bar);
and (Y1, I, Sel);

endmodule