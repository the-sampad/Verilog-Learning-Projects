`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/25/2022 08:13:33 PM
// Design Name: 
// Module Name: fullsubtractor_tb
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


module fullsubtractor_tb();
    reg x,y,bin;
    wire diff,bout;
    full_subtractor uut(x,y,bin,diff,bout);
        initial
            begin
            x=0;
            y=0;
            bin=0;
            #125;
            
            bin=1;
            #125;
            
            y=1;
            #125;
            
            bin=0;
            #125;
            
            x=1;
            #125;
            
            bin=1;
            #125;
            
            y=0;
            #125;
            
            bin=0;
            #125;
            end
endmodule
