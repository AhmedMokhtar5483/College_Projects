`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cairo University
// Engineer: Ahmed Abusaif
// Create Date: 05/17/2022 02:00:18 PM
// Module Name: Complex_Multiplier
// Project Name: 32 FFT  
//////////////////////////////////////////////////////////////////////////////////


module Register_file_TB();
parameter length = 24 ;

reg clk ;reg rst ; 
reg en1 ;reg en2 ;reg en3 ;reg en4 ; 

reg [length-1:0]data_real ; 
reg [length-1:0]data_imag ;
wire [length-1:0]r1_real ;
wire [length-1:0]r1_imag ; 
wire [length-1:0]r2_real ; 
wire [length-1:0]r2_imag ; 
wire [length-1:0]r3_real ; 
wire [length-1:0]r3_imag ; 
wire [length-1:0]r4_real ; 
wire [length-1:0]r4_imag ;


Register_file#(.length(length)) RF(
.clk(clk) , .rst(rst) , 
.en1(en1) , .en2(en2) , .en3(en3) , .en4(en4) , 
.data_real(data_real) , .data_imag(data_imag) , 
.r1_real(r1_real) , .r1_imag(r1_imag) , 
.r2_real(r2_real) , .r2_imag(r2_imag) , 
.r3_real(r3_real) , .r3_imag(r3_imag) , 
.r4_real(r4_real) , .r4_imag(r4_imag) 
    );
    
initial 
begin
    clk = 0 ;
    forever 
    begin 
    #5 clk = ~clk ; 
    end
end

initial 
begin 
    #00 rst = 1 ; en1 = 0 ; en2 = 0 ; en3 = 0 ; en4 = 0 ; data_real = 5 ;data_imag = 12 ; 
    #10 rst = 0 ; en1 = 1 ; en2 = 0 ; en3 = 0 ; en4 = 0 ; data_real = 5 ;data_imag = 15 ; 
    #10 rst = 0 ; en1 = 0 ; en2 = 1 ; en3 = 0 ; en4 = 0 ; data_real = 6 ;data_imag = 16 ; 
    #10 rst = 0 ; en1 = 0 ; en2 = 0 ; en3 = 1 ; en4 = 0 ; data_real = 7 ;data_imag = 17 ; 
    #10 rst = 0 ; en1 = 0 ; en2 = 0 ; en3 = 0 ; en4 = 1 ; data_real = 8 ;data_imag = 18 ; 

    #10 $stop;
end
endmodule
