`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2022 08:22:55 PM
// Design Name: 
// Module Name: seq_det_moore_tb
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


module seq_det_moore_tb ;
    reg clk,rst,x;
    wire y;
    wire [2:0]count;
    integer i;
    reg[0:23]in;
    seq_det_moore uut(.clk(clk),.rst(rst),.x(x),.y(y),.count(count));
    initial 
    begin
        in=24'b100110101011101110101011;
        clk=0;
        rst=1;
        x=1'b0;
        #60;
        rst=0;
        #60;
        
        for(i=0;i<24;i=i+1)
        begin
            if (rst==0)begin
                x=in[i];
                #20;
                end
        end
    end
    always #10 clk=~clk;    
endmodule