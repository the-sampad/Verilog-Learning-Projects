`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/25/2022 09:08:23 AM
// Design Name: 
// Module Name: halfadder_tb
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


module halfadder_tb();
    reg x,y;
    wire sum,c;
    halfadder uut(x,y,sum,c);
        initial
            begin
            x=0;
            y=0;
            #250;
            
            y=1;
            #250;
            
            x=1;
            #250;
            
            y=0;
            #250;
            end
endmodule
