`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/07/2026 08:01:53 PM
// Design Name: 
// Module Name: ALU_8_bit
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


module ALU_8_bit(
    input [2:0] OpCode,
    input [7:0] A,
    input [7:0] B,
    output reg [15:0] Out,
    output reg Cout
    );
    parameter Add=3'b000, Sub=3'b001, Mul=3'b010, LShift=3'b011,
    RShift=3'b100, LAND=3'b101, LOR=3'b110, LXOR=3'b111; 
    always @(*) begin
        case(OpCode)
            Add: {Cout, Out}=A+B;
            Sub: {Cout, Out}=A-B;
            Mul: Out=A*B;
            LShift: Out=A<<1;
            RShift: Out=A>>1;
            LAND: Out=A&B;
            LOR: Out=A|B;
            LXOR: Out=A^B;
            default: begin 
            Out=0;
            Cout=0;
            end
        endcase
    end
endmodule
