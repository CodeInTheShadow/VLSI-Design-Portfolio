`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2026 09:10:39 PM
// Design Name: 
// Module Name: FSM_up_down_count
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


module FSM_up_down_count(
input clk, reset, dir,
output reg [1:0]z
);
reg[1:0]state;
parameter s0=2'b00, s1=2'b01, s2=2'b10, s3=2'b11;
always @(posedge clk) begin
    if(reset==1) state<=s0;
    else state<=state;
end
always @(posedge clk) begin
    case(state)
        s0: begin
        if(dir==0) #10 state<=s1;
        else #10 state<=s3;
        z<=2'b00;
        end
        s1: begin
        if(dir==0) #10 state<=s2;
        else #10 state<=s0;
        z<=2'b01;
        end
        s2: begin
        if(dir==0) #10 state<=s3;
        else #10 state<=s1;
        z<=2'b10;
        end
        s3: begin
        if(dir==0) #10 state<=s0;
        else #10 state<=s2;
        z<=2'b11;
        end
    endcase
end
endmodule
