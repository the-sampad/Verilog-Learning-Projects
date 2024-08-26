`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2022 03:45:35 PM
// Design Name: 
// Module Name: jk_flipflop
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


module jk_flipflop(
    input j,k,clk,
    output reg q,qbar
    );
    always@(posedge clk)
    begin
        if(j==0 & k==1)
        begin
        q = 0;
        qbar = ~q;
        end
        else if(j==1 & k==0)
        begin
        q = 1;
        qbar = ~q;
        end
        else if(j==0 & k==0)
        begin
        q = q;
        qbar = ~q;
        end
        else if(j==1 & k==1)
        begin
        q = qbar;
        qbar = ~q;
        end
    end   
endmodule
