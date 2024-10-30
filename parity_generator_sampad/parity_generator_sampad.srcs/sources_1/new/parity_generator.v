`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2022 10:04:11 AM
// Design Name: 
// Module Name: parity_generator
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


module parity_generator(
    input [3:0]x,
    input e,
    output reg ep, op
    );
    always@(*)
    begin
    if(e==0)
    begin
    ep = x[3]^x[2]^x[1]^x[0];
    op = 0;
    end
    else if(e==1)
    begin
    op = ~(x[3]^x[2]^x[1]^x[0]);
    ep = 0;
    end
    end  
endmodule
