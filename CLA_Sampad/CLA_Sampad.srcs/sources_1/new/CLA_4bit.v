`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2022 11:01:48 PM
// Design Name: 
// Module Name: CLA_4bit
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

module ha(sum,carry,a,b);
    output sum,carry;
    input a,b;
    assign sum = a^b;
    assign carry = a&b;
endmodule

module fa_ha(x,y,cin,sum,cout);
    input x,y,cin;
    output sum,cout;
    wire w1,w2,w3;
    ha u1(w1,w2,x,y);
    ha u2(sum,w3,w1,cin);
    assign cout = w2|w3;
endmodule

module CLA_4bit(x,y,cin,sum,cout);
    input [3:0] x;
    input [3:0] y;
    input cin = 1'b0;
    output [4:0] sum;
    output cout;
    wire w1,w2,w3;
    fa_ha u1(x[0],y[0],cin,sum[0],w1);
    fa_ha u2(x[1],y[1],w1,sum[1],w2);
    fa_ha u3(x[2],y[2],w2,sum[2],w3);
    fa_ha u4(x[3],y[3],w3,sum[3],cout);
    assign sum[4] = cout;
endmodule