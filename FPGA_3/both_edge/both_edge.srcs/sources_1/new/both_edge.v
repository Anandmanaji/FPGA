`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2025 03:30:30 PM
// Design Name: 
// Module Name: both_edge
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
