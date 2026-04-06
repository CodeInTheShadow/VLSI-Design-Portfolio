`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2026 08:07:31 PM
// Design Name: 
// Module Name: Car_parking
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


module Car_parking(
    input [7:0] Cars,
    output reg [3:0] num,
    output reg [3:0] avail
    );
    always @(Cars) begin
        num=Cars[7]+Cars[6]+Cars[5]+Cars[4]+Cars[3]+Cars[2]+Cars[1]+Cars[0];
        avail=8-num;
    end
endmodule
