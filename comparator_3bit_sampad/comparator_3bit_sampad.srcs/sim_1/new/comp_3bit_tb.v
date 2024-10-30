`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2022 12:00:43 AM
// Design Name: 
// Module Name: comp_3bit_tb
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


module comp_3bit_tb();
    reg [2:0]x,y;
    wire great,less,equal;
    comp_3bit uut(x,y,less,great,equal);
    initial
        begin
        x = 3'b011;
        y = 3'b010;
        #250;
        x = 3'b001;
        y = 3'b110;
        #250;
        x = 3'b100;
        y = 3'b100;
        #250;
        x = 3'b101;
        y = 3'b011;
        #250;
        end
endmodule
