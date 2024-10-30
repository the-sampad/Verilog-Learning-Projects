`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2022 09:07:16 PM
// Design Name: 
// Module Name: parity_gen_tb
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


module parity_gen_tb();
    reg [3:0]x;
    reg e;
    wire ep,op;
    parity_generator uut(x,e,ep,op);
    initial
        begin
        e = 0;
        x = 4'b1010;
        #250;
        x = 4'b0010;
        #250
        e = 1;
        x = 4'b1110;
        #250
        x = 4'b1001;
        end
endmodule
