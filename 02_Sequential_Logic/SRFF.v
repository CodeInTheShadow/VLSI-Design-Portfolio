`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2026 01:02:31 AM
// Design Name: 
// Module Name: SRFF
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


module SRFF(
    input s,
    input r,
    input clk,
    output reg q,
    output reg qbar
    );
    always @(posedge clk) begin
        if(s==1 & r==0) begin
            q<=1;
            qbar<=0;
        end
        else if(s==1 & r==0) begin
            q<=0;
            qbar<=1;
        end
        else if(s==0 & r==0) begin
            q<=q;
            qbar<=qbar;
        end
    end
endmodule
