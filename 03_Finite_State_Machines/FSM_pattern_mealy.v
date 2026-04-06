`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2026 09:47:17 PM
// Design Name: 
// Module Name: FSM_pattern_mealy
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


module FSM_pattern_mealy(
    input din,
    input clk,
    input reset,
    output reg Z
    );
    parameter Sin=2'b00, S1=2'b01, S10=2'b10, S101=2'b11;
    reg [1:0] state, next_state;
    always @(posedge clk) begin
        if(reset==1) state<=Sin;
        else state<=next_state;
    end
    always @(posedge clk) begin
        case(state)
            Sin: begin
                if(din==0) next_state<=Sin;
                else next_state<=S1;
            end
            S1: begin
                if(din==0) next_state<=S10;
                else next_state<=S1;
            end
            S10: begin
                if(din==0) next_state<=Sin;
                else next_state<=S101;
            end
            S101: begin
                if(din==0) next_state<=S10;
                else next_state<=S1;
            end  
            default: next_state<=Sin;          
        endcase
    end
    always @(posedge clk) begin
    case(state) 
        Sin: Z<=0;
        S1: Z<=0;
        S10: Z<=0;
        S101: begin
            if(din==1) Z<=1;
            else Z<=0;
        end
        default: Z<=0;
    endcase
    end
endmodule
