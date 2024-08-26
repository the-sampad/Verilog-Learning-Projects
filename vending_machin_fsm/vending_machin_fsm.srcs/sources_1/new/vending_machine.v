`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2022 07:58:24 PM
// Design Name: 
// Module Name: vending_machine
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


module vending_machine(
    input [2:0]x,
    input clk,rst,
    output reg [2:0]return = 3'b000,
    output reg y,
    output reg [3:0]ps,ns);
    
    parameter s0 = 4'b0000,
              s1 = 4'b0001,
              s2 = 4'b0010,
              s3 = 4'b0011,
              s4 = 4'b0100,
              s5 = 4'b0101,
              s6 = 4'b0110,
              s7 = 4'b0111,
              s8 = 4'b1000,
              s9 = 4'b1001,
              s10 = 4'b1010,
              rs1 = 3'b001,
              rs2 = 3'b010,
              rs5 = 3'b101;
                            
              
    
    always@(posedge clk, posedge rst)
    begin
        if(rst==1)            
            ps = s0;
        else
            ps = ns;
    return = 3'b000;
    end
    
    always@(ps,x)
    begin   
    case(ps)
    
        s0:begin
            if (x==rs1) ns = s1; 
            else if(x==rs2) ns = s2;
            else if(x==rs5) ns = s5;         
        y = 0;
        end

        s1:begin
            if (x==rs1) ns = s2; 
            else if(x==rs2) ns = s3;
            else if(x==rs5) ns = s6;         
        y = 0;
        end
        
        s2:begin
            if (x==rs1) ns = s3; 
            else if(x==rs2) ns = s4;
            else if(x==rs5) ns = s7;         
        y = 0;
        end
        
        s3:begin
            if (x==rs1) ns = s4; 
            else if(x==rs2) ns = s5;
            else if(x==rs5) ns = s8;         
        y = 0;
        end
        
        s4:begin
            if (x==rs1) ns = s5; 
            else if(x==rs2) ns = s6;
            else if(x==rs5) ns = s9;         
        y = 0;
        end
        
        s5:begin
            if (x==rs1) ns = s6; 
            else if(x==rs2) ns = s7;
            else if(x==rs5) ns = s10;         
        y = 0;
        end
        
        s6:begin
            if (x==rs1)ns = s7;
            else if(x==rs2)ns = s8;
            else if(x==rs5)begin
                ns = s10;         
                return = 3'b001;
            end
        y = 0;
        end
        
        s7:begin
            if (x==rs1)ns = s8;
            else if(x==rs2)ns = s9;
            else if(x==rs5)begin 
                ns = s10;
                return = 3'b010;
            end  
        y = 0;
        end
        
        s8:begin
            if (x==rs1)ns = s9;
            else if(x==rs2)ns = s10;
            else if(x==rs5)begin
                ns = s10;
                return = 3'b011;
            end         
        y = 0;
        end
        
        s9:begin
            if (x==rs1)ns = s10;
            else if(x==rs2)begin
                ns = s10;
                return = 3'b001;
            end
            else if(x==rs5)begin
                ns = s10;
                return = 3'b100;
            end         
        y = 0;
        end
        
        s10:begin
            if (x==rs1) ns = s1; 
            else if(x==rs2) ns = s2;
            else if(x==rs5) ns = s5;         
        y = 1;
        end   
    endcase    
    end           
endmodule
