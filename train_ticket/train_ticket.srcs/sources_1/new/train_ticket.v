`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2022 09:02:19 PM
// Design Name: 
// Module Name: train_ticket
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


module train_ticket(
    input [2:0]x,
    input clk,rst, 
    input d,l,p,//Delhi, Lucknow and Patna
    output reg [5:0]return,
    output reg y,error,
    output reg [2:0]ps,ns);
    
    //delhi to lucknow = rs 20
    //delhi to patna = rs 25
    //lucknow to patna = rs 10
    
    parameter sd = 3'b000,
              sl = 3'b001,
              sp = 3'b010;
              
    reg rs10 = 3'b001;
    reg rs20 = 3'b010;
    reg rs50 = 3'b101;          
              

    always@(posedge clk, posedge rst)
    begin
        if(rst==1)          
            ps = sd;
        else if(rst==0)
            ps = ns;
    end
    
    always@(ps,x,l,d,p)
    begin  
    case(ps)
        sd:begin
            if (l==1)begin
                if(x==3'b010)begin
                    ns = sl;
                    y = 1;
                    error = 0;
                    return = 0;
                end
                else if(x==3'b010)begin
                    ns = sd;
                    y = 0;
                    error = 1;
                    return = 6'b001010;                    
                end
                else if(x==3'b101)begin
                    ns = sl;
                    y = 1;
                    error = 0;
                    return = 6'b011110;                   
                end
            end    
            else if (p==1)begin
                if(x==3'b010)begin 
                    ns = sd;
                    y = 0;
                    error = 1;
                    return = 6'b010100;
                end
                else if(x==3'b001)begin
                    ns = sd;
                    y = 0;
                    error = 1;
                    return = 6'b001010;                    
                end
                else if(x==3'b101)begin
                    ns = sp;
                    y = 1;
                    error = 0;
                    return = 6'b011001;                   
                end
            end   
           end
           
        sp:begin
               if (l==1)begin
                   if(x==3'b010)begin 
                       ns = sl;
                       y = 1;
                       error = 0;
                       return = 6'b000101;
                   end
                   else if(x==3'b001)begin
                       ns = sl;
                       y = 1;
                       error = 0;
                       return = 0;                    
                   end
                   else if(x==3'b101)begin
                       ns = sl;
                       y = 1;
                       error = 0;
                       return = 6'b101000;                   
                   end
               end    
               else if (d==1)begin
                   if(x==3'b010)begin 
                       ns = sp;
                       y = 0;
                       error = 1;
                       return = 6'b010100;
                   end
                   else if(x==3'b001)begin
                       ns = sp;
                       y = 0;
                       error = 1;
                       return = 6'b001010;                    
                   end
                   else if(x==3'b101)begin
                       ns = sd;
                       y = 1;
                       error = 0;
                       return = 6'b011001;                   
                   end
               end   
            end
        sl:begin
         if (p==1)begin
             if(x==3'b010)begin 
                 ns = sp;
                 y = 1;
                 error = 0;
                 return = 6'b000101;
             end
             else if(x==3'b001)begin
                 ns = sp;
                 y = 1;
                 error = 0;
                 return = 0;                    
             end
             else if(x==3'b101)begin
                 ns = sp;
                 y = 1;
                 error = 0;
                 return = 6'b101000;                   
             end
         end    
         else if (d==1)begin
             if(x==3'b010)begin 
                 ns = sd;
                 y = 1;
                 error = 0;
                 return = 0;
             end
             else if(x==3'b001)begin
                 ns = sl;
                 y = 0;
                 error = 1;
                 return = 6'b001010;                    
             end
             else if(x==3'b101)begin
                 ns = sd;
                 y = 1;
                 error = 0;
                 return = 6'b011110;                   
             end
         end   
       end
    endcase
    end
    
    
endmodule
