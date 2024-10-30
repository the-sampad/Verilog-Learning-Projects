`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2022 12:06:22 PM
// Design Name: 
// Module Name: sr_tb
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


module sr_tb();
    reg s,r,clk;
    wire q,qbar;
    sr_flipflop uut(s,r,clk,q,qbar);
        initial
        begin
        clk = 0;
        forever #20 clk = ~clk;
        end
        initial
        begin
        s=0;
        r=1;
        #100;
        s=1;
        r=0;
        #100;
        s=0;
        r=0;
        #100;
        s=1;
        r=1;
        #100;
        end
endmodule
