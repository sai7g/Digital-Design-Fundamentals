module mux2to1_behavioral(
    input I0,
    input I1,
    input Sel,
    output reg y
);

always @(*) begin
    if (Sel)
        Y = I1;
    else
        Y = I0;
end

endmodule