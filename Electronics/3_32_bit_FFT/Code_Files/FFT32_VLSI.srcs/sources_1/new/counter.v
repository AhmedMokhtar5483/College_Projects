`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cairo University
// Engineer: Ahmed Abusaif
// Create Date: 05/17/2022 02:00:18 PM
// Module Name: Complex_Multiplier
// Project Name: 32 FFT  
//////////////////////////////////////////////////////////////////////////////////

module counter(
input clk ,
input rst , 
output [1:0]sel
    );
reg [1:0]sel_reg ; 
assign sel = sel_reg ;

always@(posedge clk)
begin 
    if (rst == 1)
        sel_reg = 0 ; 
    else 
        sel_reg = sel_reg + 1 ; 
end 
endmodule
