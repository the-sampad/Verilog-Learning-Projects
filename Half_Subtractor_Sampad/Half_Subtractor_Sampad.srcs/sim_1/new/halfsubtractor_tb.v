`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/25/2022 09:42:35 AM
// Design Name: 
// Module Name: halfsubtractor_tb
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


module halfsubtractor_tb();
    reg x,y;
    wire diff,b;
    
    half_subtractor uut(x,y,diff,b);
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
