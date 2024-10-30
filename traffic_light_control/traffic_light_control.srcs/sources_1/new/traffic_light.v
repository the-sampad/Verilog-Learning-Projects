`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2022 10:45:44 AM
// Design Name: 
// Module Name: traffic_light
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


module traffic_light(
    input clk,rst,
    output reg [2:0]n_s,s_n,e_w,w_e
    );
    reg [2:0]ps,ns;
    integer count;
    parameter s0 = 3'b000,
              s1 = 3'b001,
              s2 = 3'b010,
              s3 = 3'b011,
              s4 = 3'b100,
              s5 = 3'b101,
              s6 = 3'b110,
              s7 = 3'b111;
                            
    
    always@(posedge clk, posedge rst)
    begin
    if (rst==1)begin
        ps = s0;
        count = 0;
        end
    else if(rst==0)begin
        ps = ns;
        count = count+1;
        end
    end
    
    always@(ps,count)
    begin
        case(ps)
        s0: begin
            n_s = 3'b001;
            w_e = 3'b100;
            s_n = 3'b100;
            e_w = 3'b100;
            if(count<25)
                ns = s0;
            else if(count==25)
                ns = s1;
        end
        
        s1:begin
            n_s = 3'b001;
            w_e = 3'b010;
            s_n = 3'b100;
            e_w = 3'b100;
            if(count>=25 & count<30)
                ns = s1;
            else if(count==30)
                ns = s2;
        end
        
        s2:begin
            n_s = 3'b100;
            w_e = 3'b001;
            s_n = 3'b100;
            e_w = 3'b100;
            if(count>=30 & count<55)
                ns = s2;
            else if(count==55)
                ns = s3;
        end
        
        s3:begin
            n_s = 3'b100;
            w_e = 3'b001;
            s_n = 3'b010;
            e_w = 3'b100;
            if(count>=55 & count<60)
                ns = s3;
            else if(count==60)
                ns = s4;
        end
        
        s4:begin
            n_s = 3'b100;
            w_e = 3'b100;
            s_n = 3'b001;
            e_w = 3'b100;
            if(count>=60 & count<85)
                ns = s4;
            else if(count==85)
                ns = s5;
        end
        
        s5:begin
            n_s = 3'b100;
            w_e = 3'b100;
            s_n = 3'b001;
            e_w = 3'b010;
            if(count>=85 & count<90)
                ns = s5;
            else if(count==90)
                ns = s6;
        end
        
        s6:begin
            n_s = 3'b100;
            w_e = 3'b100;
            s_n = 3'b100;
            e_w = 3'b001;
            if(count>=90 & count<115)
                ns = s6;
            else if(count==115)
                ns = s7;
        end
        s7:begin
            n_s = 3'b010;
            w_e = 3'b100;
            s_n = 3'b100;
            e_w = 3'b001;
            if(count>=115 & count<120)
                ns = s7;
            else if(count==120)begin
                ns = s0;
                count = 0;
                end
        end
        endcase
     end
      
endmodule

