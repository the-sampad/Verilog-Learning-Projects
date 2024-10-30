`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/15/2022 01:18:31 PM
// Design Name: 
// Module Name: encoder_4x2_tb
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


module encoder_4x2_tb();
    reg d0,d1,d2,d3;
    wire x,y;
    encoder_4x2 uut(d0,d1,d2,d3,x,y);
        initial
        begin
        d0 = 0;
        d1 = 0;
        d2 = 0;
        d3 = 0;
        #100;
        d0 = 1;
        #100;
        d1 = 1;
        #100;
        d2 = 1;
        #100;
        d3 = 1;
        d1 = 0;
        #100;
        d0 = 0;
        d1 = 1;
        #100;
        d2 = 0;
        #100;
        end
endmodule
