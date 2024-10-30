`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/25/2022 08:52:57 AM
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb();
    wire sum,carry;
    reg x,y;
    half_adder uut(x,y,sum,carry);
    initial
        begin
        x=1;
        y=1;
        #400;
        x=0;
        #400;
        y=0;
        #400;
        x=1;
        #400;
        end
endmodule
