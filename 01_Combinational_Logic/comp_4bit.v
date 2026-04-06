`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2026 07:37:57 PM
// Design Name: 
// Module Name: comp_4bit
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


module comp_4bit(
    input [3:0] a,
    input [3:0] b,
    output g,
    output e,
    output s
    );
    wire [3:0]p,o,q;
    comp_1bit d3(a[3], b[3], p[3], o[3], q[3]);
    comp_1bit d2(a[2], b[2], p[2], o[2], q[2]);
    comp_1bit d1(a[1], b[1], p[1], o[1], q[1]);
    comp_1bit d0(a[0], b[0], p[0], o[0], q[0]);    
    assign g=p[3]|(o[3]&p[2])|(o[3]&o[2]&p[1])|(o[3]&o[2]&o[1]&p[0]);
    assign e=o[3]&o[2]&o[1]&o[0];
    assign s=q[3]|(o[3]&q[2])|(o[3]&o[2]&q[1])|(o[3]&o[2]&o[1]&q[0]);
endmodule
