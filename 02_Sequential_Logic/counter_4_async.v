`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2026 01:38:50 AM
// Design Name: 
// Module Name: counter_4_async
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


module counter_4_async(clk,count);
    input clk;
    output reg [3:0] count;
    initial count=4'b0000;
    always @(posedge clk) count[0]<=~count[0];
    always @(posedge count[0]) count[1]<=~count[1];
    always @(posedge count[1]) count[2]<=~count[2];
    always @(posedge count[2]) count[3]<=~count[3];
endmodule
