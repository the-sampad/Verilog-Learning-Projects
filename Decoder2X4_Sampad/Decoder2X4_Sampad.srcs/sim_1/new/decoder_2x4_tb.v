`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/15/2022 01:09:12 PM
// Design Name: 
// Module Name: decoder_2x4_tb
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


module decoder_2x4_tb();
    reg x,y;
    wire d0,d1,d2,d3;
    decoder_2x4 uut(x,y,d0,d1,d2,d3);
        initial
        begin
        x = 0;
        y = 0;
        #250;
        y = 1;
        #250;
        x = 1;
        y = 0;
        #250;
        x = 1;
        y = 1;
        #250;
        end
endmodule
