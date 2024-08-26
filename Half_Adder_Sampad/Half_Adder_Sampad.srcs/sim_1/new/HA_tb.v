`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2022 11:55:27 PM
// Design Name: 
// Module Name: HA_tb
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


module HA_tb();
    wire sum,carry;
    reg x,y;
half_adder uut(x,y,sum,carry);
    initial
    begin
        x=0;
        y=0;
        #400;
        x=0;
        y=1;
        #400;
        x=1;
        y=0;
        #400;
        x=1;
        y=1;
    end
endmodule
