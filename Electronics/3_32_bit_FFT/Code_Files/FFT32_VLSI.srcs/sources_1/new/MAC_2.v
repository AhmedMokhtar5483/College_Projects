`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cairo University
// Engineer: Ahmed Abusaif
// Create Date: 05/17/2022 02:00:18 PM
// Module Name: Complex_Multiplier
// Project Name: 32 FFT  
//////////////////////////////////////////////////////////////////////////////////

module MAC_2#(parameter length = 32)(

input  [length-1:0]data1_real , 
input  [length-1:0]data1_imag , 

input  [length-1:0]data2_real , 
input  [length-1:0]data2_imag , 

input  [length-1:0]weight_real , 
input  [length-1:0]weight_imag , 

output [length-1:0]out1_real ,
output [length-1:0]out1_imag ,
output [length-1:0]out2_real ,
output [length-1:0]out2_imag
    );

wire [length-1:0]Mul_real ; 
wire [length-1:0]Mul_imag ; 

Complex_Multiplier #(.length(length)) CM
(
.first_in_real(data2_real), .first_in_imag(data2_imag), 
.second_in_real(weight_real), .second_in_imag(weight_imag),
.out_real(Mul_real), .out_imag(Mul_imag)
);

assign out1_real = data1_real + Mul_real ; 
assign out1_imag = data1_imag + Mul_imag ;
assign out2_real = data1_real - Mul_real ; 
assign out2_imag = data1_imag - Mul_imag ;

endmodule
