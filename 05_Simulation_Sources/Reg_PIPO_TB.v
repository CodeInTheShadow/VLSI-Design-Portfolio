`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2026 08:38:44 PM
// Design Name: 
// Module Name: Reg_PIPO_TB
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


module Reg_PIPO_TB();
reg [3:0]D;
reg clear, clk, XL, XR;
reg[1:0]CTRL;
wire [3:0]Q;
Reg_PIPO rp(D, CTRL, clk, clear, XL, XR, Q);
initial clk=0;
always #20 clk=~clk;
initial begin
    clear=0;
    XL=1; XR=0; D=4'b0011;
    #10 CTRL=11;
    #100 CTRL=01;
    #100 CTRL=10;
    #100 CTRL=00;
    #80 $finish;
end
endmodule
