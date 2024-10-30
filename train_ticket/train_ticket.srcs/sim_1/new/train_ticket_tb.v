`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2022 12:26:39 AM
// Design Name: 
// Module Name: train_ticket_tb
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


module train_ticket_tb();
    reg [2:0]x;
    reg clk,rst; 
    reg d,l,p;//Delhi, Lucknow and Patna
    wire [5:0]return;
    wire y,error;
    wire [2:0]ps,ns;
    
    train_ticket uut(x,clk,rst,d,l,p,return,y,error,ps,ns);
    
    initial
    begin
    clk = 0;
    rst = 1;
    #0.01
    rst = 0;
    l = 1;
    x = 3'b010;
    #50;
    l = 0;
    p = 1;
    x = 3'b101;
    #50;
    p = 0;
    l = 1;
    x = 3'b001;
    #50
    l = 0;
    d = 1;
    x = 3'b101;
    #50
    d = 0;
    p = 1;
    x = 3'b101;
    #50
    p = 0;
    d = 1;
    x = 3'b101;
    #50
    
    
    d = 0;
    l = 1;
    x = 3'b101;
    #50;
    l = 0;
    p = 1;
    x = 3'b001;
    #50;
    p = 0;
    l = 1;
    x = 3'b010;
    #50
    l = 0;
    d = 1;
    x = 3'b001;
    #50
    d = 0;
    p = 1;
    x = 3'b001;
    #50
    p = 0;
    d = 1;
    x = 3'b001;
    #50
    
    
    d = 0;
    l = 1;
    x = 3'b001;
    #50;
    l = 0;
    p = 1;
    x = 3'b010;
    #50;
    p = 0;
    l = 1;
    x = 3'b101;
    #50
    l = 0;
    d = 1;
    x = 3'b010;
    #50
    d = 0;
    p = 1;
    x = 3'b010;
    #50
    p = 0;
    d = 1;
    x = 3'b010;
    #50
    d = 0;
    end
    always #25 clk=~clk;
    
endmodule
