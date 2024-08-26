`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2022 10:29:29 AM
// Design Name: 
// Module Name: fa_ha_tb
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


module fa_ha_tb();
    reg x,y,cin;
    wire sum,cout;
    fa_ha uut(x,y,cin,sum,cout);
        initial
            begin
            x=0;
            y=0;
            cin=0;
            #125;
            
            cin=1;
            #125;
            
            y=1;
            #125;
            
            cin=0;
            #125;
            
            x=1;
            #125;
            
            cin=1;
            #125;
            
            y=0;
            #125;
            
            cin=0;
            #125;
            end          
endmodule
