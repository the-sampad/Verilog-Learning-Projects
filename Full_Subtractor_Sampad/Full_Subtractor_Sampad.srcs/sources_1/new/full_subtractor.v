`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2022 08:58:45 PM
// Design Name: 
// Module Name: full_subtractor
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


module full_subtractor(
    input x,y,bin,
    output diff,bout
    );
    assign diff = x^y^bin;
    assign bout = (~x&bin)|(~x&y)|(y&bin);
endmodule
