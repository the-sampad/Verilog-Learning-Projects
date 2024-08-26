`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2022 09:43:02 AM
// Design Name: 
// Module Name: muxtb
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


module muxtb();
    wire Out;
    reg s;
    reg x,y;
    multiplexer2to1 uut(Out,s,x,y);
    initial
    begin
    x = 1'b0;
    y = 1'b1;
    s = 1'b0;
    #100;
    s = 1'b1;
    #100;
    end
endmodule
