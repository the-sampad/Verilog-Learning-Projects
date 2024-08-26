`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2022 09:16:08 AM
// Design Name: 
// Module Name: u_d_count
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


module u_d_count(
    input m,clk,reset,
    output reg [3:0]q
    );
    integer clck=0;
    always@(posedge clk)
    begin
    clck=clck+1;
    if(clck == 100000000)
    begin
    clck=0;
    if (reset==1)
    begin
    q = 4'b0000;
    end
    else if (m == 0)
    begin
    q = q + 1'b1;
    end
    else if (m==1)
    begin
    q = q - 1'b1;
    end
    end
    end
endmodule
