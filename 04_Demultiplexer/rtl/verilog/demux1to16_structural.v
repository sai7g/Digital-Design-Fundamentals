module demux1to16_structural (
    input din,
    input [3:0] sel,
    output [15:0] y
);

wire nsel0;
wire nsel1;
wire nsel2;
wire nsel3;

not (nsel0, sel[0]);
not (nsel1, sel[1]);
not (nsel2, sel[2]);
not (nsel3, sel[3]);

and (y[0],  din, nsel3, nsel2, nsel1, nsel0);
and (y[1],  din, nsel3, nsel2, nsel1, sel[0]);
and (y[2],  din, nsel3, nsel2, sel[1], nsel0);
and (y[3],  din, nsel3, nsel2, sel[1], sel[0]);

and (y[4],  din, nsel3, sel[2], nsel1, nsel0);
and (y[5],  din, nsel3, sel[2], nsel1, sel[0]);
and (y[6],  din, nsel3, sel[2], sel[1], nsel0);
and (y[7],  din, nsel3, sel[2], sel[1], sel[0]);

and (y[8],  din, sel[3], nsel2, nsel1, nsel0);
and (y[9],  din, sel[3], nsel2, nsel1, sel[0]);
and (y[10], din, sel[3], nsel2, sel[1], nsel0);
and (y[11], din, sel[3], nsel2, sel[1], sel[0]);

and (y[12], din, sel[3], sel[2], nsel1, nsel0);
and (y[13], din, sel[3], sel[2], nsel1, sel[0]);
and (y[14], din, sel[3], sel[2], sel[1], nsel0);
and (y[15], din, sel[3], sel[2], sel[1], sel[0]);

endmodule