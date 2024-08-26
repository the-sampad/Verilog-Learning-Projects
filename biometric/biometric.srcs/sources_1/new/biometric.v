`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2022 01:50:43 PM
// Design Name: 
// Module Name: biometric
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

module biometric(
    input [1:50]bf,l,d, //b = breakfast, l = lunch , d= dinner
    input clk,
    output reg [10:0]count_b,count_l,count_d);
    
    integer j; //j represents number of days
    always@(posedge clk)
        begin
        count_b = 0;
        count_l = 0;
        count_d = 0;        
        
            for (j = 1; j <=50; j = j + 1)
            begin
                if(bf[j]==1'b1)count_b = count_b + 1'b1;
                if(l[j]==1'b1)count_l = count_l + 1'b1;
                if(d[j]==1'b1)count_d = count_d + 1'b1;
            end
    end 
endmodule 