`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2026 02:31:08 PM
// Design Name: 
// Module Name: DEMUX1x4
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


module DEMUX1x4(
    input x,
    input s1,
    input s0,
    output y0,
    output y1,
    output y2,
    output y3
    );
    assign y0=x&(~s0)&(~s1);
    assign y1=x&(~s0)&(s1);
    assign y0=x&(s0)&(~s1);
    assign y0=x&(s0)&(s1);
endmodule
