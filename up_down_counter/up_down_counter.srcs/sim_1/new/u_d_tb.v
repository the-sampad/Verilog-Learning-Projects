`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2022 09:21:16 AM
// Design Name: 
// Module Name: u_d_tb
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


module u_d_tb();
    reg m,clk,reset;
    wire [3:0]q;
    u_d_count uut(m,clk,reset,q);
    initial
    begin
    clk = 0;
    forever #20 clk = ~clk;
    end
    initial
    begin
    reset = 1;
    m = 0;
    #40;
    reset = 0;
    #400;
    m = 1;
    end
endmodule
