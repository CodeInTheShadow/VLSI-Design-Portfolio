`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2026 01:17:59 PM
// Design Name: 
// Module Name: JKFF
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


module JKFF(
    input J,
    input K,
    input clk,
    output reg Q
    );
    initial Q=0;
    always @(posedge clk) begin
        case({J,K})
            2'b00: Q<=Q;
            2'b01: Q<=0;
            2'b10: Q<=1;
            2'b11: Q<=~Q;
        endcase
    end
endmodule
