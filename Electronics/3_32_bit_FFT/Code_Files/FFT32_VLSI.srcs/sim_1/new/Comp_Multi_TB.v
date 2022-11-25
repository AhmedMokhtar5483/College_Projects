`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cairo University
// Engineer: Ahmed Abusaif
// 
// Create Date: 05/17/2022 02:00:18 PM
// Module Name: Complex_Multiplier
// Project Name: 32 FFT  
//////////////////////////////////////////////////////////////////////////////////


module Comp_Multi_TB();
parameter length = 24 ; 

reg  [length-1:0] first_in_real  ; 
reg  [length-1:0] first_in_imag  ;
reg  [length-1:0] second_in_real ;
reg  [length-1:0] second_in_imag ;

wire [length-1:0] out_real ; 
wire [length-1:0] out_imag ; 

Complex_Multiplier #(.length(length)) CM
(
.first_in_real(first_in_real), .first_in_imag(first_in_imag), 
.second_in_real(second_in_real), .second_in_imag(second_in_imag),
.out_real(out_real), .out_imag(out_imag)
);

initial 
begin 
    #00 first_in_real = 0 ; first_in_imag = 0 ; second_in_real = 0 ; second_in_imag = 0 ;
    #10 first_in_real = -3000 ; first_in_imag = 0 ; second_in_real = 3600 ; second_in_imag = 14000 ;
    #10 first_in_real = 4000 ; first_in_imag = 5000 ; second_in_real = 2000 ; second_in_imag = 1000 ;
    #10 first_in_real = 8000 ; first_in_imag = 2000 ; second_in_real = 8000 ; second_in_imag = 9000 ;
    #10 first_in_real = 1000 ; first_in_imag = 1000 ; second_in_real = 7000 ; second_in_imag = 0 ;
    #10 $stop;
end

initial 
    $monitor ("[$monitor] time=%0t out_real=%0d, out_imag=%0d", $time, out_real, out_imag);
 
endmodule
