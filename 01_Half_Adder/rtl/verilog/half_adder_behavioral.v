module half_adder_behavioral (
    input A,
    input B,
    output reg Sum,
    output reg Carry
);

always @(*) begin
    Sum = A ^ B;
    Carry = A & B;
end

endmodule