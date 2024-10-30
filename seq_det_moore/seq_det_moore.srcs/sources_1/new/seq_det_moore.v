`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2022 08:22:24 PM
// Design Name: 
// Module Name: seq_det_moore
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


module seq_det_moore(
    input x,
    input clk,rst,
    output reg y,
    output reg [2:0]count=3'b000);
    reg [2:0]ps,ns;
    integer clck = 0;
    parameter s0 = 3'b000,
              s1 = 3'b001,
              s2 = 3'b010,
              s3 = 3'b011,
              s4 = 3'b100;
    
    always@(posedge clk, posedge rst)
    begin               
            if (rst == 1)
                ps = s0;
            else
                ps = ns;
    end
    
    always@(ps,x)
    begin
    case(ps)
        s0:begin
        if (x==1)
            ns = s1;
        else
            ns = s0;
        y = 0;
        end
        
        s1:begin
        if (x==0)
            ns = s2;
        else
            ns = s1;
        y = 0;
        end
        
        s2:begin
        if (x==1)
            ns = s3;
        else
            ns = s0;
        y = 0;
        end
        
        s3:begin
        if (x==1)
            ns = s4;
        else
            ns = s2;
        y = 0;
        end
        
        s4:begin
        if (x==1)
            ns = s1;
        else
            ns = s2;
        y = 1;
        end
        
        default:begin
        ns = s0;
        y = 0;
        end
    endcase
    end
    always@(y)
    if(y == 1)
        count = count+1'b1;
endmodule
