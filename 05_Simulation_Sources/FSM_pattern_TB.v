`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/02/2026 01:45:34 AM
// Design Name: 
// Module Name: FSM_pattern_TB
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


module FSM_pattern_TB();
reg din, clk, reset;
wire Z;
FSM_pattern_mealy p0(din, clk, reset, Z);
always #20 clk=~clk;
initial clk=1;
initial begin
reset=1;
#50 reset=0;
#10 din=1;
#40 din=0;
#40 din=1;
#40 din=1;
#40 din=1;
#40 din=0;
#40 din=1;
#40 din=1;
#40 din=0;
#40 din=0;
#40 din=0;
#40 din=1;
#40 din=1;
#40 din=1;
#40 din=1;
#40 din=0;
#40 din=1;
#40 din=1;
#40 din=1;
#50 $finish;
end
endmodule
