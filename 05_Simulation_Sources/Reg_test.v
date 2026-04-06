`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2026 08:32:56 PM
// Design Name: 
// Module Name: Reg_test
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


module Reg_test();
reg [3:0]D;
reg clk, clear, load;
wire [3:0]Q;
Reg_4bit_clear d0(D, clk, load, clear, Q);
initial clk=0;
always #20 clk=~clk;
initial begin
    clear=1;
    #20 load=1; D=4'b1010;
    #50 clear=0;
    #100 load=0; D=4'b1001;
    #50 load=1; D=4'b0101;
    #20 $finish;
end
endmodule
