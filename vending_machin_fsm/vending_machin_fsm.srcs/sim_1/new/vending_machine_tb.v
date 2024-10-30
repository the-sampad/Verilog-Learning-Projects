`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2022 08:38:47 PM
// Design Name: 
// Module Name: vending_machine_tb
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


module vending_machine_tb();
    reg [2:0]x;
    reg clk,rst;
    wire y;
    wire [2:0]return;
    wire [3:0]ps,ns;
    vending_machine uut(x,clk,rst,return,y,ps,ns);
    initial
    begin
    clk = 0;
    rst = 1;
    #1;
    rst = 0;
    x = 3'b001;
    #179;
    x = 3'b101;
    #20;
    x = 3'b001;
    #20;
    x = 3'b010;
    #20;
    x = 3'b101;
    #20;
    x = 3'b101;
    #20;
    x = 3'b010;
    #20;
    x = 3'b000;
    end
    always #10 clk = ~clk;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
endmodule
