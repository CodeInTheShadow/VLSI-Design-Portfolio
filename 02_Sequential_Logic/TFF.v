`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2026 01:06:27 PM
// Design Name: 
// Module Name: TFF
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


module TFF(
    input T,
    input clk,
    output reg Q
    );
    initial Q=0;
    always @(negedge clk)
    begin
        if(T==1) Q<=~Q;
        else if (T==0) Q<=Q;
    end
endmodule
