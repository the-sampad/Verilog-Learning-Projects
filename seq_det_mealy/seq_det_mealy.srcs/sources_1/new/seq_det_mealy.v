`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2022 07:38:20 PM
// Design Name: 
// Module Name: seq_det_mealy
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


module seq_det_mealy(
    input x,clk,rst,
    output reg y
    );
    reg [2:0]ps,ns;
    parameter s0 = 3'b000,
              s1 = 3'b001,
              s2 = 3'b010,
              s3 = 3'b011;
     always@(posedge clk, posedge rst)
     begin
        if(rst==1)
            ps=s0;
         else
            ps = ns;
     end
     
     always@(ps,x)
     begin
        case(ps)
            s0:begin
            if (x==1)
            begin
                ns  = s1;
                y = 0;
            end
            else
            begin
                ns = s0;
                y = 0;
            end
            end
            
            s1:begin
            if (x==0)
            begin
                ns = s2;
                y = 0;
            end
            else
            begin
                ns = s1;
                y = 0;
            end
            end
            
            s2:begin
            if (x==1)
            begin
                ns = s3;
                y = 0;
            end
            else
            begin
                ns = s0;
                y = 0;
            end
            end
            
            s3:begin
            if (x==1)
            begin
                ns = s0;
                y = 1;
            end
            else
            begin
                ns = s2;
                y = 0;
            end
            end
        endcase
     end
        
endmodule