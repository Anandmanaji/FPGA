module multiplier_2bit (
    input  wire [1:0] A,
    input  wire [1:0] B,
    output wire [3:0] P
);

    wire p0, p1, p2, p3;

    assign p0 = A[0] & B[0];
    assign p1 = (A[1] & B[0]) ^ (A[0] & B[1]);
    assign p2 = (A[1] & B[0]) & (A[0] & B[1]) ^ (A[1] & B[1]);
    assign p3 = (A[1] & B[0]) & (A[0] & B[1]) & (A[1] & B[1]);

    assign P = {p3, p2, p1, p0};

endmodule
