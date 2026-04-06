`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/27/2026 08:57:15 PM
// Design Name: 
// Module Name: FSM_counter
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


module FSM_counter(clk, reset, din, z);
input clk, reset, din;
output reg [1:0]z;
reg[1:0] state;
parameter s0=2'b00, s1=2'b01, s2=2'b10, s3=2'b11;
always @(posedge clk) begin
    if(reset==1) state<=s0;
    else state<=state;
end
always @(posedge clk) begin
    case(state)
    2'b00: begin
        if(din==1) #10 state<=s1;
        else #10 state<=s0;
    end
    2'b01: begin
        if(din==1) #10 state<=s2;
        else #10 state<=s1;
    end
    2'b00: begin
        if(din==1) #10 state<=s3;
        else #10 state<=s2;
    end
    2'b00: begin
        if(din==1) #10 state<=s0;
        else #10 state<=s3;
    end
    endcase
end
always @(posedge clk)
    #10 assign z=state;
endmodule
