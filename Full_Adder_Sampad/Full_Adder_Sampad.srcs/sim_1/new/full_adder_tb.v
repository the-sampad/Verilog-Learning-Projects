`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/25/2022 07:15:09 PM
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();
    reg x,y,cin;
    wire sum,cout;
    full_adder uut(x,y,cin,sum,cout);
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
