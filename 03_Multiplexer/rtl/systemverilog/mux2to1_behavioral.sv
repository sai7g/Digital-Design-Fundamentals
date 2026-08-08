module mux2to1_behavioral(
    input logic I0,
    input logic I1,
    input logic Sel,
    output logic Y
);

always_comb begin
    if (Sel)
        Y = I1;
    else
        Y = I0;
end

endmodule