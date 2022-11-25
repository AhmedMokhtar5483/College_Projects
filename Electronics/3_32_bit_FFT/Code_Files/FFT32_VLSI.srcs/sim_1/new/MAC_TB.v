`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cairo University
// Engineer: Ahmed Abusaif
// 
// Create Date: 05/17/2022 02:00:18 PM
// Module Name: Complex_Multiplier
// Project Name: 32 FFT  
//////////////////////////////////////////////////////////////////////////////////

module MAC_TB();
parameter length = 24 ; 
reg  [length-1:0]data1_real ; 
reg  [length-1:0]data1_imag ; 

reg  [length-1:0]data2_real ; 
reg  [length-1:0]data2_imag ; 

reg  [length-1:0]weight_real ; 
reg  [length-1:0]weight_imag ;

wire [length-1:0]out1_real ;
wire [length-1:0]out1_imag ;
wire [length-1:0]out2_real ;
wire [length-1:0]out2_imag ;

MAC_2#(.length(length)) M(

data1_real ,data1_imag , 
data2_real ,data2_imag , 
weight_real ,weight_imag , 

out1_real ,out1_imag ,
out2_real ,out2_imag
    );

initial 
begin 
    #00 data1_real = -1000; data1_imag = 1000; data2_real = 2000; data2_imag = 2000; weight_real = 1500 ; weight_imag = 1500 ;
    #10 data1_real = -1300; data1_imag = -1500; data2_real = 2500; data2_imag = 2000; weight_real = 1500 ; weight_imag = 1500 ;
    #10 data1_real = 1500; data1_imag = 2000; data2_real = 5000; data2_imag = 2000; weight_real = 1500 ; weight_imag = 1500 ;
    #10 data1_real = 1900; data1_imag = 5000; data2_real = 5600; data2_imag = 2000; weight_real = 1500 ; weight_imag = 1500 ;


    #10 $stop ;
end

endmodule

