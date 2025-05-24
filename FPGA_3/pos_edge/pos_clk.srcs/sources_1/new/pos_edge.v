`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2025 02:59:21 PM
// Design Name: 
// Module Name: pos_edge
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module pos_edge_det (
    input  wire clk,
    input  wire signal,
    output reg  pos_edge
);

    reg signal_d;

    always @(posedge clk) begin
        signal_d <= signal;
        pos_edge <= signal & ~signal_d;
    end

endmodule
