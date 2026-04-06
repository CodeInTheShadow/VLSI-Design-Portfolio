`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2026 02:27:01 AM
// Design Name: 
// Module Name: SIPO_16bit
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


module SIPO_16bit(
    input Din,
    input clk,
    input load,
    output [15:0] Q
    );
    SIPO_4bit s0(Din, clk, load, Q[15:12]);
    SIPO_4bit s1(Q[12], clk, load, Q[11:8]);
    SIPO_4bit s2(Q[8], clk, load, Q[7:4]);
    SIPO_4bit s3(Q[4], clk, load, Q[3:0]);
endmodule
