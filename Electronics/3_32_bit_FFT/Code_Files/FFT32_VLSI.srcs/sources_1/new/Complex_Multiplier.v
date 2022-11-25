`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cairo University
// Engineer: Ahmed Abusaif
// 
// Create Date: 05/17/2022 02:00:18 PM
// Module Name: Complex_Multiplier
// Project Name: 32 FFT  
//////////////////////////////////////////////////////////////////////////////////

module Complex_Multiplier
#(parameter length = 24) 
(
input signed [length-1:0] first_in_real , 
input signed [length-1:0] first_in_imag , 
input signed [length-1:0] second_in_real ,
input signed [length-1:0] second_in_imag ,

output signed [length-1:0] out_real,
output signed [length-1:0] out_imag

);

wire [2*length-1:0] o_real ; 
wire [2*length-1:0] o_imag ;
                                      
assign out_real = o_real[length+(length/2)-1:length/2] ; 
assign out_imag = o_imag[length+(length/2)-1:length/2] ; 

assign o_real = first_in_real  * second_in_real - first_in_imag * second_in_imag ;
assign o_imag = first_in_imag  * second_in_real + first_in_real * second_in_imag ;

endmodule
