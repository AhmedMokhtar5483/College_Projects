`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cairo University
// Engineer: Ahmed Abusaif
// Create Date: 05/17/2022 02:00:18 PM
// Module Name: Complex_Multiplier
// Project Name: 32 FFT  
//////////////////////////////////////////////////////////////////////////////////

module MUX_4x1#(parameter length = 32)(
input  [length-1:0]in1_real ,in2_real, in3_real, in4_real,
input  [length-1:0]in1_imag ,in2_imag, in3_imag, in4_imag,

input  [1:0]select,
output reg [length-1:0]out_real,
output reg [length-1:0]out_imag

    );
always@*  
case(select)
    2'b00:
    begin
        out_real = in1_real ; 
        out_imag = in1_imag ; 
    end
    2'b01:
    begin
        out_real = in2_real ; 
        out_imag = in2_imag ; 
    end   
    2'b10:
    begin
        out_real = in3_real ; 
        out_imag = in3_imag ; 
    end 
    2'b11:
    begin
        out_real = in4_real ; 
        out_imag = in4_imag ; 
    end 
    default: 
    begin
    end
endcase

    

endmodule
