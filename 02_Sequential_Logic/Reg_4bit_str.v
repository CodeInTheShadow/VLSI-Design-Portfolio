`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2026 06:33:10 PM
// Design Name: 
// Module Name: Reg_4bit_str
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


module Reg_4bit_str(
    input [3:0] D,
    input clk,
    input load,
    output wire[3:0] Q
    );
    wire [3:0]S;
    MUX_2x1_gate d0(Q[0],D[0],load,S[0]);
    MUX_2x1_gate d1(Q[1],D[1],load,S[1]);
    MUX_2x1_gate d2(Q[2],D[2],load,S[2]);
    MUX_2x1_gate d3(Q[3],D[3],load,S[3]);
    DFF d4(S[0],clk,Q[0]);
    DFF d5(S[1],clk,Q[1]);
    DFF d6(S[2],clk,Q[2]);
    DFF d7(S[3],clk,Q[3]);
endmodule
