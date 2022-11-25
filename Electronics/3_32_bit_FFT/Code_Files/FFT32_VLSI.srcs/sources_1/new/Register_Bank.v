`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cairo University
// Engineer: Ahmed Abusaif
// Create Date: 05/17/2022 02:00:18 PM
// Module Name: Complex_Multiplier
// Project Name: 32 FFT  
//////////////////////////////////////////////////////////////////////////////////


module Register_Bank#(parameter length = 32)(
input clk, rst,
input [length-1:0] in0_re,in1_re,in2_re,in3_re,in4_re,in5_re,in6_re,in7_re,in8_re,in9_re,in10_re,
input [length-1:0] in11_re,in12_re,in13_re,in14_re,in15_re,in16_re,in17_re,in18_re,in19_re,in20_re,
input [length-1:0] in21_re,in22_re,in23_re,in24_re,in25_re,in26_re,in27_re,in28_re,in29_re,in30_re,in31_re,

input [length-1:0] in0_im,in1_im,in2_im,in3_im,in4_im,in5_im,in6_im,in7_im,in8_im,in9_im,in10_im,
input [length-1:0] in11_im,in12_im,in13_im,in14_im,in15_im,in16_im,in17_im,in18_im,in19_im,in20_im,
input [length-1:0] in21_im,in22_im,in23_im,in24_im,in25_im,in26_im,in27_im,in28_im,in29_im,in30_im,in31_im,

output reg[length-1:0] out0_re,out1_re,out2_re,out3_re,out4_re,out5_re,out6_re,out7_re,out8_re,out9_re,
output reg[length-1:0] out10_re,out11_re,out12_re,out13_re,out14_re,out15_re,out16_re,out17_re,out18_re,
output reg[length-1:0] out19_re,out20_re,out21_re,out22_re,out23_re,out24_re,out25_re,out26_re,out27_re,
output reg[length-1:0] out28_re,out29_re,out30_re,out31_re,

output reg[length-1:0] out0_im,out1_im,out2_im,out3_im,out4_im,out5_im,out6_im,out7_im,out8_im,out9_im,
output reg[length-1:0] out10_im,out11_im,out12_im,out13_im,out14_im,out15_im,out16_im,out17_im,out18_im,
output reg[length-1:0] out19_im,out20_im,out21_im,out22_im,out23_im,out24_im,out25_im,out26_im,out27_im,
output reg[length-1:0] out28_im,out29_im,out30_im,out31_im
    );

always@(posedge clk, posedge rst)
begin 
    if(rst == 1)
    begin
        out0_re=0; out1_re=0; out2_re=0; out3_re=0; out4_re=0; out5_re=0; out6_re=0; out7_re=0; 
        out8_re=0; out9_re=0; out10_re=0; out11_re=0; out12_re=0; out13_re=0; out14_re=0; out15_re=0;
        out16_re=0; out17_re=0; out18_re=0; out19_re=0; out20_re=0; out21_re=0; out22_re=0; out23_re=0; 
        out24_re=0; out25_re=0; out26_re=0; out27_re=0; out28_re=0; out29_re=0; out30_re=0; out31_re=0;
        
        out0_im=0; out1_im=0; out2_im=0; out3_im=0; out4_im=0; out5_im=0; out6_im=0; out7_im=0;
        out8_im=0; out9_im=0; out10_im=0; out11_im=0; out12_im=0; out13_im=0; out14_im=0; out15_im=0; 
        out16_im=0; out17_im=0; out18_im=0; out19_im=0; out20_im=0; out21_im=0; out22_im=0; out23_im=0; 
        out24_im=0; out25_im=0; out26_im=0; out27_im=0; out28_im=0; out29_im=0; out30_im=0; out31_im=0;
        
    end
    else
    begin
        out0_re=in0_re; out1_re=in1_re; out2_re=in2_re; out3_re=in3_re; out4_re=in4_re; out5_re=in5_re; 
        out6_re=in6_re; out7_re=in7_re; out8_re=in8_re; out9_re=in9_re; out10_re=in10_re;out11_re=in11_re; 
        out12_re=in12_re; out13_re=in13_re; out14_re=in14_re; out15_re=in15_re; out16_re=in16_re; 
        out17_re=in17_re; out18_re=in18_re; out19_re=in19_re; out20_re=in20_re; out21_re=in21_re;
        out22_re=in22_re; out23_re=in23_re; out24_re=in24_re; out25_re=in25_re; out26_re=in26_re; 
        out27_re=in27_re; out28_re=in28_re; out29_re=in29_re; out30_re=in30_re; out31_re=in31_re;
        
        out0_im=in0_im; out1_im=in1_im; out2_im=in2_im; out3_im=in3_im; out4_im=in4_im; out5_im=in5_im; 
        out6_im=in6_im; out7_im=in7_im; out8_im=in8_im; out9_im=in9_im; out10_im=in10_im;out11_im=in11_im; 
        out12_im=in12_im; out13_im=in13_im; out14_im=in14_im; out15_im=in15_im; out16_im=in16_im; 
        out17_im=in17_im; out18_im=in18_im; out19_im=in19_im; out20_im=in20_im; out21_im=in21_im;
        out22_im=in22_im; out23_im=in23_im; out24_im=in24_im; out25_im=in25_im; out26_im=in26_im; 
        out27_im=in27_im; out28_im=in28_im; out29_im=in29_im; out30_im=in30_im; out31_im=in31_im;
    end
end


endmodule







