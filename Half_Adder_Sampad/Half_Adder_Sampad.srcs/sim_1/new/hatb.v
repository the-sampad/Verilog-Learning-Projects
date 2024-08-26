`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/25/2022 08:41:59 AM
// Design Name: 
// Module Name: hatb
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


module hatb();
    wire sum, carry;
    reg x,y;
    hatb uut(x,y,sum,carry);
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
