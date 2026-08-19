module encoder2to4_structural(
    input [3:0] I,
    output [1:0] Y
);

or (Y[0], I[1], I[3]);
or (Y[1], I[2], I[3]);

endmodule