`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2026 06:13:49 PM
// Design Name: 
// Module Name: Dec2to4
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


module Dec2to4(
    input d0,
    input d1,
    output y0,
    output y1,
    output y2,
    output y3
    );
    assign y0=(~d0)&(~d1);
    assign y1=(d0)&(~d1);
    assign y2=(~d0)&(d1);
    assign y3=(d0)&(d1);
endmodule
