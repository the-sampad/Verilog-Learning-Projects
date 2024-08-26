`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2022 12:00:09 AM
// Design Name: 
// Module Name: u_d_count_moore_tb
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


module u_d_count_moore_tb();
    reg clk,rst,x;
    wire [0:3]count;
    wire y;
    u_d_count_moore uut(x,clk,rst,y,count);
    initial
    begin
        clk = 0;
        rst = 1;
        #1;
        rst = 0;
        x = 0;
        #400;
        x = 1;
        
    end
    always #5 clk=~clk;   
endmodule
