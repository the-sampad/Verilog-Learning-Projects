`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2022 03:58:38 PM
// Design Name: 
// Module Name: t_flipflop_tb
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


module t_flipflop_tb();
    reg t,clk,clr;
    wire qn,qnbar;
    t_flipflop uut(t,clk,clr,qn,qnbar);
    initial
    begin
    clk = 0;
    forever #20 clk=~clk;
    end
    initial
    begin
    clr = 1;
    t = 0;
    #100;
    clr = 0;
    t = 1;
    #100;
    t = 0;
    #200;
    t = 1;
    #200;
    t = 0;
    #200;
    t = 1;
    end
endmodule
