`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2022 01:53:27 PM
// Design Name: 
// Module Name: biometric_tb
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


module biometric_tb;
    reg [1:50]bf,l,d; //bf = breakfast, l = lunch , d= dinner
    reg clk;
    wire [10:0]count_b,count_l,count_d;
    reg residents[49:0];
    
    biometric uut(bf,l,d,clk,count_b,count_l,count_d);
    initial
    begin
    clk = 0;
    #1;


    bf = 50'b10110101010110100010001010000101010100011010001000;
    l =  50'b11101011101110100011011101001110100111110100101010;
    d =  50'b01011101110110010101011010110111011111101100010101;
    #20;
    
    bf = 50'b11011111101100010010001000101000010101010001101010;
    l =  50'b00101011011101001101010101101000100011111010010100;
    d =  50'b11101101110110010101011010110111011111101100010101;
    #20;

    bf = 50'b01000110101111101100010010001000101000010101010100;
    l =  50'b11111011000101001001101010101101000100011111010010;
    d =  50'b00011010001110110010101011010110111011111101100001;
    #20;
    
    bf = 50'b10110101010110100010001010000101010100011010001000;
    l =  50'b11101011101110100011011101001110100111110100101010;
    d =  50'b01011101110110010101011010110111011111101100010101;
    #20;
    
    bf = 50'b01010000101010100011010001000010000101010001101010;
    l =  50'b10100011011101001110011010101010100011111010010100;
    d =  50'b11101101110110010101011010110111011111101100010101;
    #20;

    bf = 50'b01000110101111101100010010001000101000010101010100;
    l =  50'b11111011000101001001101010101101000100011111010010;
    d =  50'b10111011111101100110101011010110111011111101100001;
    #20;

    bf = 50'b11010101010111111001011010000101010100011010001000;
    l =  50'b010100010111010100011011101001110100111110100101010;
    d =  50'b010010111110101010001011010110111011111101100010101;
    #20;
    
    bf = 50'b11011111101011010110001010100011010101010001101010;
    l =  50'b00101011011101001101010101001010000011111010010100;
    d =  50'b11101101110110010101011011100101011111101100010101;
    #20;

    bf = 50'b01001101000101101100010010001000101000010101010100;
    l =  50'b11111010101001001001101010101101000100011111010010;
    d =  50'b00011101011110110010101011010110111011111101100001;
    #20;
    
    bf = 50'b10110101010110100010101000111001010100011010001000;
    l =  50'b11101011101110100101000101011110100111110100101010;
    d =  50'b01011101110110010110101000100111011111101100010101;
    #20;
    
    bf = 50'b01010000101010100011010001011001100101000101101010;
    l =  50'b10100011011101001110011010101010100001010110100100;
    d =  50'b11101101110110010101011010101101011010101100010101;
    #20;

    bf = 50'b01000110101111101100010010001000101101101001110000;
    l =  50'b11111011000101001001101010101101000110100101010010;
    d =  50'b10111011111101100110101011010110000101101100010101;
    #20;
    
    bf = 50'b01001101000101101100010010001000101000010101010100;
    l =  50'b11111010101001001001101010101101000100011111010010;
    d =  50'b00011101011110110010101011010110111011111101100001;
    #20;
    
    bf = 50'b10110101010110100010101000111001010100011010001000;
    l =  50'b11101011101110100101000101011110100111110100101010;
    d =  50'b01011101110110010110101000100111011111101100010101;
    #20;
    
    bf = 50'b01010000101010100011010001011001100101000101101010;
    l =  50'b10100011011101001110011010101010100001010110100100;
    d =  50'b11101101110110010101011010101101011010101100010101;
    #20;
    
    bf = 50'b01000110101111101100010010001000101000010101010100;
    l =  50'b11111011000101001001101010101101000100011111010010;
    d =  50'b00011010001110110010101011010110111011111101100001;
    #20;
    
    bf = 50'b10110101010110100010001010000101010100011010001000;
    l =  50'b11101011101110100011011101001110100111110100101010;
    d =  50'b01011101110110010101011010110111011111101100010101;
    #20;
    
    bf = 50'b01010000101010100011010001000010000101010001101010;
    l =  50'b10100011011101001110011010101010100011111010010100;
    d =  50'b11101101110110010101011010110111011111101100010101;
    #20;

    bf = 50'b01001101000101101100010010001000101000010101010100;
    l =  50'b11111010101001001001101010101101000100011111010010;
    d =  50'b00011101011110110010101011010110111011111101100001;
    #20;
    
    bf = 50'b10110101010110100010101000111001010100011010001000;
    l =  50'b11101011101110100101000101011110100111110100101010;
    d =  50'b01011101110110010110101000100111011111101100010101;
    #20;
    
    bf = 50'b01000110101111101100010010001000101000010101010100;
    l =  50'b11111011000101001001101010101101000100011111010010;
    d =  50'b10111011111101100110101011010110111011111101100001;
    #20;

    bf = 50'b11010101010111111001011010000101010100011010001000;
    l =  50'b010100010111010100011011101001110100111110100101010;
    d =  50'b010010111110101010001011010110111011111101100010101;
    #20;
    
    bf = 50'b11011111101011010110001010100011010101010001101010;
    l =  50'b00101011011101001101010101001010000011111010010100;
    d =  50'b11101101110110010101011011100101011111101100010101;
    #20;

    bf = 50'b01001101000101101100010010001000101000010101010100;
    l =  50'b11111010101001001001101010101101000100011111010010;
    d =  50'b00011101011110110010101011010110111011111101100001;
    #20;
    
    bf = 50'b10110101010110100010101000111001010100011010001000;
    l =  50'b11101011101110100101000101011110100111110100101010;
    d =  50'b01011101110110010110101000100111011111101100010101;
    #20;

    bf = 50'b11011111101100010010001000101000010101010001101010;
    l =  50'b00101011011101001101010101101000100011111010010100;
    d =  50'b11101101110110010101011010110111011111101100010101;
    #20;

    bf = 50'b01000110101111101100010010001000101000010101010100;
    l =  50'b11111011000101001001101010101101000100011111010010;
    d =  50'b00011010001110110010101011010110111011111101100001;
    #20;
    
    bf = 50'b10110101010110100010001010000101010100011010001000;
    l =  50'b11101011101110100011011101001110100111110100101010;
    d =  50'b01011101110110010101011010110111011111101100010101;
    #20;
    
    bf = 50'b01010000101010100011010001000010000101010001101010;
    l =  50'b10100011011101001110011010101010100011111010010100;
    d =  50'b11101101110110010101011010110111011111101100010101;
    #20;

    bf = 50'b01000110101111101100010010001000101000010101010100;
    l =  50'b11111011000101001001101010101101000100011111010010;
    d =  50'b10111011111101100110101011010110111011111101100001;
    #20;

    bf = 50'b01010000101010100011010001011001100101000101101010;
    l =  50'b10100011011101001110011010101010100001010110100100;
    d =  50'b11101101110110010101011010101101011010101100010101;
    #20;
    
    bf = 50'b01000110101111101100010010001000101000010101010100;
    l =  50'b11111011000101001001101010101101000100011111010010;
    d =  50'b00011010001110110010101011010110111011111101100001;
    #20;
    
    bf = 50'b10110101010110100010001010000101010100011010001000;
    l =  50'b11101011101110100011011101001110100111110100101010;
    d =  50'b01011101110110010101011010110111011111101100010101;
    #20;
    
    bf = 50'b01010000101010100011010001000010000101010001101010;
    l =  50'b10100011011101001110011010101010100011111010010100;
    d =  50'b11101101110110010101011010110111011111101100010101;
    #20;

    bf = 50'b01001101000101101100010010001000101000010101010100;
    l =  50'b11111010101001001001101010101101000100011111010010;
    d =  50'b00011101011110110010101011010110111011111101100001;
    #20;

    bf = 50'b10110101010110100010001010000101010100011010001000;
    l =  50'b11101011101110100011011101001110100111110100101010;
    d =  50'b01011101110110010101011010110111011111101100010101;
    #20;
    
    bf = 50'b01010000101010100011010001000010000101010001101010;
    l =  50'b10100011011101001110011010101010100011111010010100;
    d =  50'b11101101110110010101011010110111011111101100010101;
    #20;

    bf = 50'b01000110101111101100010010001000101000010101010100;
    l =  50'b11111011000101001001101010101101000100011111010010;
    d =  50'b10111011111101100110101011010110111011111101100001;
    #20;

    bf = 50'b01010000101010100011010001000010000101010001101010;
    l =  50'b10100011011101001110011010101010100011111010010100;
    d =  50'b11101101110110010101011010110111011111101100010101;
    #20;

    bf = 50'b01001101000101101100010010001000101000010101010100;
    l =  50'b11111010101001001001101010101101000100011111010010;
    d =  50'b00011101011110110010101011010110111011111101100001;
    #20;
    
    bf = 50'b10110101010110100010101000111001010100011010001000;
    l =  50'b11101011101110100101000101011110100111110100101010;
    d =  50'b01011101110110010110101000100111011111101100010101;
    #20;
    
    bf = 50'b01000110101111101100010010001000101000010101010100;
    l =  50'b11111011000101001001101010101101000100011111010010;
    d =  50'b10111011111101100110101011010110111011111101100001;
    #20;

    bf = 50'b11010101010111111001011010000101010100011010001000;
    l =  50'b010100010111010100011011101001110100111110100101010;
    d =  50'b010010111110101010001011010110111011111101100010101;
    #20;
    
    bf = 50'b11011111101011010110001010100011010101010001101010;
    l =  50'b00101011011101001101010101001010000011111010010100;
    d =  50'b11101101110110010101011011100101011111101100010101;
    #20;

    bf = 50'b01001101000101101100010010001000101000010101010100;
    l =  50'b11111010101001001001101010101101000100011111010010;
    d =  50'b00011101011110110010101011010110111011111101100001;
    #20;
    
    bf = 50'b10110101010110100010101000111001010100011010001000;
    l =  50'b11101011101110100101000101011110100111110100101010;
    d =  50'b01011101110110010110101000100111011111101100010101;
    #20;

    bf = 50'b11011111101100010010001000101000010101010001101010;
    l =  50'b00101011011101001101010101101000100011111010010100;
    d =  50'b11101101110110010101011010110111011111101100010101;
    #20;

    bf = 50'b01000110101111101100010010001000101000010101010100;
    l =  50'b11111011000101001001101010101101000100011111010010;
    d =  50'b00011010001110110010101011010110111011111101100001;
    #20;
    
    bf = 50'b10110101010110100010001010000101010100011010001000;
    l =  50'b11101011101110100011011101001110100111110100101010;
    d =  50'b01011101110110010101011010110111011111101100010101;
    #20;
    
    bf = 50'b01010000101010100011010001000010000101010001101010;
    l =  50'b10100011011101001110011010101010100011111010010100;
    d =  50'b11101101110110010101011010110111011111101100010101;
    #20;


    end
    always #10 clk = ~clk;
endmodule


















