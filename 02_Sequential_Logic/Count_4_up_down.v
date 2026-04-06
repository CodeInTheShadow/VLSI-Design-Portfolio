`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2026 08:44:45 PM
// Design Name: 
// Module Name: Count_4_up_down
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


module Count_4_up_down(
    input clk,
    input reset,
    input dir,
    output reg [3:0] Count
    );
    always @(posedge clk or posedge reset) begin
        if(reset==1) Count<=4'b0000;
        else begin
            if(dir==0) begin
                if(Count==15) Count<=0;
                else Count=Count+1;
            end
            else begin
                if(Count==0) Count<=15;
                else Count=Count-1;
            end
        end
    end
endmodule
