`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2022 10:21:18 AM
// Design Name: 
// Module Name: fa_ha
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
