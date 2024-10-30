`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2022 04:03:59 PM
// Design Name: 
// Module Name: jk_tb
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


module jk_tb();
    reg j,k,clk;
    wire q,qbar;
    jk_flipflop uut(j,k,clk,q,qbar);
    initial
    begin
    clk = 0;
    forever #20 clk = ~clk;
    end
    initial
    begin
    j = 0; k = 0;
    #100;
    j = 0; k = 1;
    #100;
    j = 1; k = 0;
    #100;
    j = 1; k = 1;
    #100;
    j = 0; k = 1;
    #100;
    j = 1; k = 1;
    end
endmodule
