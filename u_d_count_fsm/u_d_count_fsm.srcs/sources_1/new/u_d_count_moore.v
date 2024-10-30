`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2022 12:00:44 AM
// Design Name: 
// Module Name: u_d_count_moore
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

module u_d_count_moore(
    input x,clk,rst,
    output reg y,
    output reg [0:3]count
    );
    reg [3:0]ps,ns;
    parameter s0 = 4'b0000,
              s1 = 4'b0001,
              s2 = 4'b0010,
              s3 = 4'b0011,
              s4 = 4'b0100,
              s5 = 4'b0101,
              s6 = 4'b0110,
              s7 = 4'b0111,
              s8 = 4'b1000,
              s9 = 4'b1001;
                            
              
    
    always@(posedge clk, posedge rst)
    begin
        if(rst==1)begin
            if(x == 0)
                ps = s0;
            else if(x==1)
                ps = s8;
            count = 4'b0000;
        end
        else
            ps = ns;
    end
    always@(ps,x)
    begin
        
    case(ps)
    
        s0:begin
            if (x==0)
                ns = s1; 
            else if(x==1)
                ns = s9;                
        y = 0;
        end
        
        s1:begin
            if (x==0)
                ns = s2; 
            else if(x==1)
                ns = s0;             
        y = 0;
        end
        
        s2:begin
            if (x==0)
                ns = s3; 
            else if(x==1)
                ns = s1;                 
        y = 0;
        end
        
        s3:begin
            if (x==0)
                ns = s4; 
            else if(x==1)
                ns = s2;               
        y = 0;
        end
        
        s4:begin
            if (x==0)
                ns = s5; 
            else if(x==1)
                ns = s3;               
        y = 0;
        end
        
        s5:begin
            if (x==0) 
                ns = s6; 
            else if(x==1)
                ns = s4;                
        y = 0;
        end
        
        s6:begin
            if (x==0) 
                ns = s7; 
            else if(x==1)
                ns = s5;               
        y = 0;
        end
        
        s7:begin
            if (x==0) 
                ns = s8;
            else if(x==1)
                ns = s6;              
        y = 0;
        end
        
        s8:begin
            if (x==0) 
                ns = s9;
            else if(x==1)
                ns = s7;   
        y = 0;             
        end
        
        s9:begin
            if (x==0) 
                ns = s0; 
            else if(x==1)
                ns = s8;                
        y = 1;
        end 
        default: begin
            if(x==0)
                ns = s0;
            else if(x==1)
                ns = s8;
        y = 0;
        end     
    endcase    
    end
    
    always@(y)
    begin
        if(y==1 & x == 1)
            count = count-1'b1;
        else if(y==1 & x==0)
            count = count+1'b1;
    end           
endmodule

