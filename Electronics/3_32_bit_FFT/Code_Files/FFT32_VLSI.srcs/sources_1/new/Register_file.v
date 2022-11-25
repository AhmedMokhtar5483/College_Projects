`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cairo University
// Engineer: Ahmed Abusaif
// Create Date: 05/17/2022 02:00:18 PM
// Module Name: Complex_Multiplier
// Project Name: 32 FFT  
//////////////////////////////////////////////////////////////////////////////////

module Register_file#(parameter length = 32)(
input clk , rst , 
input en1 , en2 , en3 , en4 , 
input  [length-1:0]data_real , data_imag , 
output reg [length-1:0]r1_real , r1_imag , 
output reg [length-1:0]r2_real , r2_imag , 
output reg [length-1:0]r3_real , r3_imag , 
output reg [length-1:0]r4_real , r4_imag 
    );

always@(posedge clk)
begin 
    if(rst == 1)
    begin 
    r1_real = 0; r1_imag = 0;
    r2_real = 0; r2_imag = 0;
    r3_real = 0; r3_imag = 0;
    r4_real = 0; r4_imag = 0;
    end
    else 
    case({en1,en2,en3,en4})
        4'b1000:
            begin 
            r1_real = data_real ;
            r1_imag = data_imag ;
            end
        4'b0100:
            begin 
            r2_real = data_real ;
            r2_imag = data_imag ;
            end
        4'b0010:
            begin 
            r3_real = data_real ;
            r3_imag = data_imag ;
            end
        4'b0001:
            begin 
            r4_real = data_real ;
            r4_imag = data_imag ;
            end
        default:begin end
    endcase
end

endmodule













