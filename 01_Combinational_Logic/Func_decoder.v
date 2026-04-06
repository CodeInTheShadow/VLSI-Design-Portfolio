`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2026 08:52:28 PM
// Design Name: 
// Module Name: Func_decoder
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


module Func_decoder(
    input E,
    input a,
    input b,
    input c,
    output y
    );
    wire d0,d1,d2,d3,d4,d5,d6,d7;
    Dec3to8 x0(a, b, c, d0, d1, d2, d3, d4, d5, d6, d7, E);
    assign y=d0|d2|d4;
endmodule
