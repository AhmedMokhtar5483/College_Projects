`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cairo University
// Engineer: Ahmed Abusaif
// Create Date: 05/17/2022 02:00:18 PM
// Module Name: Complex_Multiplier
// Project Name: 32 FFT  
//////////////////////////////////////////////////////////////////////////////////

module DECODER(
input  [1:0]select,
output reg en1,en2,en3,en4
    );

always @*  
begin
    case(select)
    2'b00:
    begin
        en1=1 ;en2=0 ;en3=0 ;en4=0 ;
    end
    2'b01:
    begin
        en1=0 ;en2=1 ;en3=0 ;en4=0 ;
    end
    2'b10:
    begin
        en1=0 ;en2=0 ;en3=1 ;en4=0 ;
    end
    2'b11:
    begin
        en1=0 ;en2=0 ;en3=0 ;en4=1 ;
    end
    default:
    begin 
        en1=0 ;en2=0 ;en3=0 ;en4=0 ;
    end
    endcase
end
endmodule
