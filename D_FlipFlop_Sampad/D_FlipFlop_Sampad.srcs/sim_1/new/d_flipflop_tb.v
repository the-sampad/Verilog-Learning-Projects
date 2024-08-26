`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2022 04:34:49 PM
// Design Name: 
// Module Name: d_flipflop_tb
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


module d_flipflop_tb();
    reg d,clk;
    wire q,qbar;
    d_flipflop uut(d,clk,q,qbar);
        initial
        begin
        clk = 0;
        forever #20 clk = ~clk;
        end
        initial
        begin
        d = 0;
        #250;
        d = 1;
        #250;
        d=0;
        end 
endmodule
