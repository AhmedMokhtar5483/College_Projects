`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cairo University
// Engineer: Ahmed Abusaif
// Create Date: 05/17/2022 02:00:18 PM
// Module Name: Complex_Multiplier
// Project Name: 32 FFT  
//////////////////////////////////////////////////////////////////////////////////

module MAC2_Controlled#(parameter length = 32)(
input clk,
input rst,
input [length-1:0]d1_real,d2_real,d3_real,d4_real,
input [length-1:0]d1_imag,d2_imag,d3_imag,d4_imag,

input [length-1:0]d5_real,d6_real,d7_real,d8_real,
input [length-1:0]d5_imag,d6_imag,d7_imag,d8_imag,

input [length-1:0]w1_real,w2_real,w3_real,w4_real,
input [length-1:0]w1_imag,w2_imag,w3_imag,w4_imag,

output [length-1:0]out1_real,out2_real,
output [length-1:0]out1_imag,out2_imag,

output [length-1:0]out3_real,out4_real,
output [length-1:0]out3_imag,out4_imag,

output [length-1:0]out5_real,out6_real,
output [length-1:0]out5_imag,out6_imag,

output [length-1:0]out7_real,out8_real,
output [length-1:0]out7_imag,out8_imag

    );

wire [length-1:0]data1_real ;
wire [length-1:0]data1_imag ;

wire [length-1:0]data2_real ;
wire [length-1:0]data2_imag ;

wire [length-1:0]weight_real ;
wire [length-1:0]weight_imag ;

wire [1:0] sel ;
wire en1, en2, en3, en4 ; 

wire [length-1:0]MAC_Out1_real ; 
wire [length-1:0]MAC_Out1_imag ; 
wire [length-1:0]MAC_Out2_real ; 
wire [length-1:0]MAC_Out2_imag ; 

counter C1(
.clk(clk) ,
.rst(rst) , 
.sel(sel)
    );
    
MUX_4x1#(.length(length)) MUX_1(
.in1_real(d1_real) ,.in2_real(d3_real), .in3_real(d5_real), .in4_real(d7_real),
.in1_imag(d1_imag) ,.in2_imag(d3_imag), .in3_imag(d5_imag), .in4_imag(d7_imag),
.select(sel),
.out_real(data1_real),
.out_imag(data1_imag)
    );
MUX_4x1#(.length(length)) MUX_2(
.in1_real(d2_real) ,.in2_real(d4_real), .in3_real(d6_real), .in4_real(d8_real),
.in1_imag(d2_imag) ,.in2_imag(d4_imag), .in3_imag(d6_imag), .in4_imag(d8_imag),
.select(sel),
.out_real(data2_real),
.out_imag(data2_imag)
    );
MUX_4x1#(.length(length)) MUX_3(
.in1_real(w1_real) ,.in2_real(w2_real), .in3_real(w3_real), .in4_real(w4_real),
.in1_imag(w1_imag) ,.in2_imag(w2_imag), .in3_imag(w3_imag), .in4_imag(w4_imag),
.select(sel),
.out_real(weight_real),
.out_imag(weight_imag)
    );

MAC_2#(.length(length)) M(
.data1_real(data1_real)  , .data1_imag(data1_imag) , 
.data2_real(data2_real)  , .data2_imag(data2_imag) , 
.weight_real(weight_real) , .weight_imag(weight_imag) , 

.out1_real(MAC_Out1_real) , .out1_imag(MAC_Out1_imag) ,
.out2_real(MAC_Out2_real) , .out2_imag(MAC_Out2_imag)
    );

DECODER D1(
.select(sel),
.en1(en1),.en2(en2),.en3(en3),.en4(en4)
    );

Register_file#(.length(length)) RF1(
.clk(clk) , .rst(rst) , 
.en1(en1) , .en2(en2) , .en3(en3) , .en4(en4) , 
.data_real(MAC_Out1_real) , .data_imag(MAC_Out1_imag) , 
.r1_real(out1_real) , .r1_imag(out1_imag) , 
.r2_real(out3_real) , .r2_imag(out3_imag) , 
.r3_real(out5_real) , .r3_imag(out5_imag) , 
.r4_real(out7_real) , .r4_imag(out7_imag) 
    );
    
Register_file#(.length(length)) RF2(
.clk(clk) , .rst(rst) , 
.en1(en1) , .en2(en2) , .en3(en3) , .en4(en4) , 
.data_real(MAC_Out2_real) , .data_imag(MAC_Out2_imag) , 
.r1_real(out2_real) , .r1_imag(out2_imag) , 
.r2_real(out4_real) , .r2_imag(out4_imag) , 
.r3_real(out6_real) , .r3_imag(out6_imag) , 
.r4_real(out8_real) , .r4_imag(out8_imag) 
    );

endmodule
