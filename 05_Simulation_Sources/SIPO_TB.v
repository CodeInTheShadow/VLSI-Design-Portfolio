`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2026 09:00:42 PM
// Design Name: 
// Module Name: SIPO_TB
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


module SIPO_TB();
reg Din, clk, load;
wire [3:0]Q;
SIPO_4bit sp(Din, clk, load, Q);
initial clk=0;
always #20 clk=~clk;
initial begin
load=1;
#10 Din=1;
#200 Din=0;
#250 load=0;
#100 Din=1;
#80 $finish;
end
endmodule
