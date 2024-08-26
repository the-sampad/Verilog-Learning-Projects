`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2022 08:38:59 PM
// Design Name: 
// Module Name: cla
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
module full_adder(
    input x,y,cin,
    output sum,cout
    );
    assign sum = x^y^cin;
    assign cout = (x&y)|(x&cin)|(y&cin);
endmodule


module cla();

endmodule
