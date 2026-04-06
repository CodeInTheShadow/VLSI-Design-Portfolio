`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2026 07:54:07 PM
// Design Name: 
// Module Name: Reg_PIPO
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


module Reg_PIPO(
    input [3:0] D,
    input [1:0] CTRL,
    input clk,
    input clear,
    input XL,
    input XR,
    output [3:0] Q
    );
    wire [3:0]S;
    MUX4x1 d0(Q[0],XL,Q[1],D[0],CTRL[1],CTRL[0],S[0]);
    MUX4x1 d1(Q[1],Q[0],Q[2],D[1],CTRL[1],CTRL[0],S[1]);
    MUX4x1 d2(Q[2],Q[1],Q[3],D[2],CTRL[1],CTRL[0],S[2]);
    MUX4x1 d3(Q[3],Q[2],XR,D[3],CTRL[1],CTRL[0],S[3]);
    DFF_clr df0(S[0],clear,clk,Q[0]);
    DFF_clr df1(S[1],clear,clk,Q[1]);
    DFF_clr df2(S[2],clear,clk,Q[2]);
    DFF_clr df3(S[3],clear,clk,Q[3]);
endmodule
