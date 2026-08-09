module demux1to8_structural (
    input  logic       din,
    input  logic [2:0] sel,
    output logic [7:0] y
);

logic nsel0;
logic nsel1;
logic nsel2;

not (nsel0, sel[0]);
not (nsel1, sel[1]);
not (nsel2, sel[2]);

and (y[0], din, nsel2, nsel1, nsel0);
and (y[1], din, nsel2, nsel1, sel[0]);
and (y[2], din, nsel2, sel[1], nsel0);
and (y[3], din, nsel2, sel[1], sel[0]);
and (y[4], din, sel[2], nsel1, nsel0);
and (y[5], din, sel[2], nsel1, sel[0]);
and (y[6], din, sel[2], sel[1], nsel0);
and (y[7], din, sel[2], sel[1], sel[0]);

endmodule