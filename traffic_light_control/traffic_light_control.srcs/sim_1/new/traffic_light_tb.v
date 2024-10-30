`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2022 08:42:32 PM
// Design Name: 
// Module Name: traffic_light_tb
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


module traffic_light_tb();
    reg clk,rst;
    wire [2:0]n_s,w_e,s_n,e_w;
    
    traffic_light uut(clk,rst,n_s,s_n,e_w,w_e);
    initial
    begin
    clk = 0;
    rst = 1;
    #0.1;
    rst = 0;
    end
    always #2 clk = ~clk;
    
endmodule
