`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2022 01:17:34 PM
// Design Name: 
// Module Name: t_flipflop
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


module t_flipflop(
    input t,clk,clr,
    output reg qn,qnbar
    );
    always@(negedge clk)
    begin
        if (clr==1)
        begin
        qn = 0;
        qnbar = ~qn;
        end
        else if(t==1)
        begin
        qn = ~qn;
        qnbar = ~qn;
        end
        else if(t==0)
        qn = qn;
        qnbar = ~qn;
    end
endmodule
