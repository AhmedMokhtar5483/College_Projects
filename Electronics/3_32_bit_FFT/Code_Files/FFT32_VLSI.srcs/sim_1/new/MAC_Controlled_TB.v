`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cairo University
// Engineer: Ahmed Abusaif
// Create Date: 05/17/2022 02:00:18 PM
// Module Name: Complex_Multiplier
// Project Name: 32 FFT  
//////////////////////////////////////////////////////////////////////////////////

module MAC_Controlled_TB();
parameter length = 24 ;
reg clk;
reg rst;
reg [length-1:0]d1_real,d2_real,d3_real,d4_real;
reg [length-1:0]d1_imag,d2_imag,d3_imag,d4_imag;

reg [length-1:0]d5_real,d6_real,d7_real,d8_real;
reg [length-1:0]d5_imag,d6_imag,d7_imag,d8_imag;

reg [length-1:0]w1_real,w2_real,w3_real,w4_real;
reg [length-1:0]w1_imag,w2_imag,w3_imag,w4_imag;

wire [length-1:0]out1_real,out2_real;
wire [length-1:0]out1_imag,out2_imag;

wire [length-1:0]out3_real,out4_real;
wire [length-1:0]out3_imag,out4_imag;

wire [length-1:0]out5_real,out6_real;
wire [length-1:0]out5_imag,out6_imag;

wire [length-1:0]out7_real,out8_real;
wire [length-1:0]out7_imag,out8_imag;

MAC2_Controlled#(.length(length)) MC(
clk,rst,
d1_real,d2_real,d3_real,d4_real,
d1_imag,d2_imag,d3_imag,d4_imag,

d5_real,d6_real,d7_real,d8_real,
d5_imag,d6_imag,d7_imag,d8_imag,

w1_real,w2_real,w3_real,w4_real,
w1_imag,w2_imag,w3_imag,w4_imag,

out1_real,out2_real,
out1_imag,out2_imag,

out3_real,out4_real,
out3_imag,out4_imag,

out5_real,out6_real,
out5_imag,out6_imag,

out7_real,out8_real,
out7_imag,out8_imag
 );

initial 
begin 
    clk = 0 ; 
    forever 
        #5 clk = ~clk ; 
end

initial 
begin 
    #00 rst = 1 ;
    #10 rst = 0 ; d1_real = 24'h000_000 ; d1_imag = 24'h000_000 ;d2_real = 24'h001_000 ; d2_imag = 24'h000_000 ; w1_real = 24'hfff_000 ; w1_imag = 24'h000_000 ;

    #200 $stop;

end


endmodule


