`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2022 04:27:17 PM
// Design Name: 
// Module Name: d_flipflop
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

module sr_flipflop(
    input s,r,clk,
    output reg q,qbar
    );
    always@(posedge clk)
    begin
       if(s==0 & r==1)
       begin
       q = 0;
       qbar = ~q;
       end
       else if(s==1 & r==0)
       begin
       q = 1;
       qbar = ~q;
       end 
       else if(s==0 & r==0)
       begin
       q = q;
       qbar = ~q;
       end
       else if(s==1 & r==1)
       begin
       q = 1'bZ;
       qbar = 1'bZ;
       end    
    end
endmodule

module d_flipflop(
    input d,clk,
    output qn,qnbar
    );
    sr_flipflop u1(d,~d,clk,qn,qnbar);
endmodule
