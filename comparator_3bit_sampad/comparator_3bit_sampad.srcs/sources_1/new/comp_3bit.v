`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2022 09:30:02 PM
// Design Name: 
// Module Name: comp_3bit
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


module comp_3bit(
    input [2:0]x,y,
    output less, great, equal
    );
    assign equal = (x[2]^~y[2])&(x[1]^~y[1])&(x[0]^~y[0]);
    assign great = (x[2]&~y[2])|((x[2]^~y[2])&x[1]&~y[1])|((x[2]^~y[2])&(x[1]^~y[1])&x[0]&~y[0]);
    assign less = (~x[2]&y[2])|((x[2]^~y[2])&~x[1]&y[1])|((x[2]^~y[2])&(x[1]^~y[1])&~x[0]&y[0]);
endmodule
