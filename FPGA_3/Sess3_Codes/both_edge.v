module both_edge_detector (
    input  wire clk,
    input  wire signal,
    output reg  both_edge
);
    reg signal_d;

    always @(posedge clk) begin
        signal_d <= signal;
        both_edge <= signal ^ signal_d;
    end
endmodule
