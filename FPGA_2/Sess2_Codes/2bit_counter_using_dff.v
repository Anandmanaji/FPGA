module d_flip_flop (
    input clk,
    input rst,
    input d,
    output reg q
);
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            q <= 0;
        end else begin
            q <= d;
        end
    end
endmodule

module two_bit_counter (
    input clk,
    input rst,
    output [1:0] count
);
    wire q0, q1;
    d_flip_flop dff0 (
        .clk(clk),
        .rst(rst),
        .d(~q0),
        .q(q0)
    );
    d_flip_flop dff1 (
        .clk(clk),
        .rst(rst),
        .d(~q1),
        .q(q1)
    );

    assign count = {q1, q0};
endmodule
