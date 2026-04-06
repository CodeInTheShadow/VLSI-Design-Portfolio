`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2026 02:20:11 AM
// Design Name: 
// Module Name: Count_4_Johnson
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


module Count_4_Johnson(
    input clk,
    input reset,
    output reg [3:0] count
    );
    reg [3:0]temp;
    always @(posedge clk or posedge reset) begin
        if(reset==1) temp=4'b0000;
        else begin
            temp={~temp[0],temp[3:1]};
        end
        count=temp;
    end
endmodule
