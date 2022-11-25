`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cairo University
// Engineer: Ahmed Abusaif
// Create Date: 05/17/2022 02:00:18 PM
// Module Name: Complex_Multiplier
// Project Name: 32 FFT  
//////////////////////////////////////////////////////////////////////////////////

module TOP_TB();
parameter length = 24 ;

reg clk_25M  ;
reg clk_100M ; 
reg rst ;
reg [length-1:0] in0_re,in1_re,in2_re,in3_re,in4_re,in5_re,in6_re,in7_re,in8_re,in9_re,in10_re;
reg [length-1:0] in11_re,in12_re,in13_re,in14_re,in15_re,in16_re,in17_re,in18_re,in19_re,in20_re;
reg [length-1:0] in21_re,in22_re,in23_re,in24_re,in25_re,in26_re,in27_re,in28_re,in29_re,in30_re,in31_re;

reg [length-1:0] in0_im,in1_im,in2_im,in3_im,in4_im,in5_im,in6_im,in7_im,in8_im,in9_im,in10_im;
reg [length-1:0] in11_im,in12_im,in13_im,in14_im,in15_im,in16_im,in17_im,in18_im,in19_im,in20_im;
reg [length-1:0] in21_im,in22_im,in23_im,in24_im,in25_im,in26_im,in27_im,in28_im,in29_im,in30_im,in31_im;

wire [length-1:0] out0_re,out1_re,out2_re,out3_re,out4_re,out5_re,out6_re,out7_re,out8_re,out9_re ;
wire [length-1:0] out10_re,out11_re,out12_re,out13_re,out14_re,out15_re,out16_re,out17_re,out18_re ;
wire [length-1:0] out19_re,out20_re,out21_re,out22_re,out23_re,out24_re,out25_re,out26_re,out27_re ;
wire [length-1:0] out28_re,out29_re,out30_re,out31_re ;

wire [length-1:0] out0_im,out1_im,out2_im,out3_im,out4_im,out5_im,out6_im,out7_im,out8_im,out9_im ;
wire [length-1:0] out10_im,out11_im,out12_im,out13_im,out14_im,out15_im,out16_im,out17_im,out18_im ;
wire [length-1:0] out19_im,out20_im,out21_im,out22_im,out23_im,out24_im,out25_im,out26_im,out27_im ;
wire [length-1:0] out28_im,out29_im,out30_im,out31_im ;



TOP #(.length(length)) T1(
.clk_25M(clk_25M) ,
.clk_100M(clk_100M) , 
.rst(rst) ,
.in0_re(in0_re),.in1_re(in1_re),.in2_re(in2_re),.in3_re(in3_re),.in4_re(in4_re),.in5_re(in5_re),.in6_re(in6_re),.in7_re(in7_re),.in8_re(in8_re),.in9_re(in9_re),.in10_re(in10_re),
.in11_re(in11_re),.in12_re(in12_re),.in13_re(in13_re),.in14_re(in14_re),.in15_re(in15_re),.in16_re(in16_re),.in17_re(in17_re),.in18_re(in18_re),.in19_re(in19_re),.in20_re(in20_re),
.in21_re(in21_re),.in22_re(in22_re),.in23_re(in23_re),.in24_re(in24_re),.in25_re(in25_re),.in26_re(in26_re),.in27_re(in27_re),.in28_re(in28_re),.in29_re(in29_re),.in30_re(in30_re),.in31_re(in31_re),

.in0_im(in0_im),.in1_im(in1_im),.in2_im(in2_im),.in3_im(in3_im),.in4_im(in4_im),.in5_im(in5_im),.in6_im(in6_im),.in7_im(in7_im),.in8_im(in8_im),.in9_im(in9_im),.in10_im(in10_im),
.in11_im(in11_im),.in12_im(in12_im),.in13_im(in13_im),.in14_im(in14_im),.in15_im(in15_im),.in16_im(in16_im),.in17_im(in17_im),.in18_im(in18_im),.in19_im(in19_im),.in20_im(in20_im),
.in21_im(in21_im),.in22_im(in22_im),.in23_im(in23_im),.in24_im(in24_im),.in25_im(in25_im),.in26_im(in26_im),.in27_im(in27_im),.in28_im(in28_im),.in29_im(in29_im),.in30_im(in30_im),.in31_im(in31_im),

.out0_re(out0_re),.out1_re(out1_re),.out2_re(out2_re),.out3_re(out3_re),.out4_re(out4_re),.out5_re(out5_re),.out6_re(out6_re),.out7_re(out7_re),.out8_re(out8_re),.out9_re(out9_re),
.out10_re(out10_re),.out11_re(out11_re),.out12_re(out12_re),.out13_re(out13_re),.out14_re(out14_re),.out15_re(out15_re),.out16_re(out16_re),.out17_re(out17_re),.out18_re(out18_re),
.out19_re(out19_re),.out20_re(out20_re),.out21_re(out21_re),.out22_re(out22_re),.out23_re(out23_re),.out24_re(out24_re),.out25_re(out25_re),.out26_re(out26_re),.out27_re(out27_re),
.out28_re(out28_re),.out29_re(out29_re),.out30_re(out30_re),.out31_re(out31_re),

.out0_im(out0_im),.out1_im(out1_im),.out2_im(out2_im),.out3_im(out3_im),.out4_im(out4_im),.out5_im(out5_im),.out6_im(out6_im),.out7_im(out7_im),.out8_im(out8_im),.out9_im(out9_im),
.out10_im(out10_im),.out11_im(out11_im),.out12_im(out12_im),.out13_im(out13_im),.out14_im(out14_im),.out15_im(out15_im),.out16_im(out16_im),.out17_im(out17_im),.out18_im(out18_im),
.out19_im(out19_im),.out20_im(out20_im),.out21_im(out21_im),.out22_im(out22_im),.out23_im(out23_im),.out24_im(out24_im),.out25_im(out25_im),.out26_im(out26_im),.out27_im(out27_im),
.out28_im(out28_im),.out29_im(out29_im),.out30_im(out30_im),.out31_im(out31_im)
);

initial 
begin
    clk_100M = 0 ;
    forever 
        #5 clk_100M = ~clk_100M ;
end

initial 
begin
    clk_25M = 0 ;
    forever 
        #20 clk_25M = ~clk_25M ; 
end
    
initial 
begin 
    #200 
    rst = 1 ; 
    #20
    rst = 0 ;
    #00 in0_re = 256 ;  in0_im = 24'h000000 ; 
    #00 in1_re = 256 ;  in1_im = 24'h000000 ; 
    #00 in2_re = 256 ;  in2_im = 24'h000000 ; 
    #00 in3_re = 256 ;  in3_im = 24'h000000 ;
    #00 in4_re = 256 ;  in4_im = 24'h000000 ; 
    #00 in5_re = 256 ;  in5_im = 24'h000000 ; 
    #00 in6_re = 256 ;  in6_im = 24'h000000 ; 
    #00 in7_re = 256 ;  in7_im = 24'h000000 ; 
    #00 in8_re = 256 ;  in8_im = 24'h000000 ; 
    #00 in9_re = 256 ;  in9_im = 24'h000000 ; 
    #00 in10_re = 256 ; in10_im = 24'h000000 ; 
    #00 in11_re = 256 ; in11_im = 24'h000000 ;
    #00 in12_re = 256 ; in12_im = 24'h000000 ; 
    #00 in13_re = 256 ; in13_im = 24'h000000 ; 
    #00 in14_re = 256 ; in14_im = 24'h000000 ; 
    #00 in15_re = 256 ; in15_im = 24'h000000 ;
    #00 in16_re = 256 ; in16_im = 24'h000000 ; 
    #00 in17_re = 256 ; in17_im = 24'h000000 ; 
    #00 in18_re = 256 ; in18_im = 24'h000000 ; 
    #00 in19_re = 256 ; in19_im = 24'h000000 ;
    #00 in20_re = 256 ; in20_im = 24'h000000 ; 
    #00 in21_re = 256 ; in21_im = 24'h000000 ; 
    #00 in22_re = 256 ; in22_im = 24'h000000 ; 
    #00 in23_re = 256 ; in23_im = 24'h000000 ;
    #00 in24_re = 256 ; in24_im = 24'h000000 ; 
    #00 in25_re = 256 ; in25_im = 24'h000000 ; 
    #00 in26_re = 256 ; in26_im = 24'h000000 ; 
    #00 in27_re = 256 ; in27_im = 24'h000000 ;
    #00 in28_re = 256 ; in28_im = 24'h000000 ; 
    #00 in29_re = 256 ; in29_im = 24'h000000 ; 
    #00 in30_re = 256 ; in30_im = 24'h000000 ; 
    #00 in31_re = 256 ; in31_im = 24'h000000 ;
    
    #40 in0_re = 256 ;  in0_im = 24'h000000 ; 
    #00 in1_re = 256 ;  in1_im = 24'h000000 ; 
    #00 in2_re = 256 ;  in2_im = 24'h000000 ; 
    #00 in3_re = 256 ;  in3_im = 24'h000000 ;
    #00 in4_re = 256 ;  in4_im = 24'h000000 ; 
    #00 in5_re = 256 ;  in5_im = 24'h000000 ; 
    #00 in6_re = 256 ;  in6_im = 24'h000000 ; 
    #00 in7_re = 256 ;  in7_im = 24'h000000 ; 
    #00 in8_re = 512 ;  in8_im = 24'h000000 ; 
    #00 in9_re = 512 ;  in9_im = 24'h000000 ; 
    #00 in10_re = 512 ; in10_im = 24'h000000 ; 
    #00 in11_re = 512 ; in11_im = 24'h000000 ;
    #00 in12_re = 512 ; in12_im = 24'h000000 ; 
    #00 in13_re = 512 ; in13_im = 24'h000000 ; 
    #00 in14_re = 512 ; in14_im = 24'h000000 ; 
    #00 in15_re = 512 ; in15_im = 24'h000000 ;
    #00 in16_re = 768 ; in16_im = 24'h000000 ; 
    #00 in17_re = 768 ; in17_im = 24'h000000 ; 
    #00 in18_re = 768 ; in18_im = 24'h000000 ; 
    #00 in19_re = 768 ; in19_im = 24'h000000 ;
    #00 in20_re = 768 ; in20_im = 24'h000000 ; 
    #00 in21_re = 768 ; in21_im = 24'h000000 ; 
    #00 in22_re = 768 ; in22_im = 24'h000000 ; 
    #00 in23_re = 768 ; in23_im = 24'h000000 ;
    #00 in24_re = 1024 ; in24_im = 24'h000000 ; 
    #00 in25_re = 1024 ; in25_im = 24'h000000 ; 
    #00 in26_re = 1024 ; in26_im = 24'h000000 ; 
    #00 in27_re = 1024 ; in27_im = 24'h000000 ;
    #00 in28_re = 1024 ; in28_im = 24'h000000 ; 
    #00 in29_re = 1024 ; in29_im = 24'h000000 ; 
    #00 in30_re = 1024 ; in30_im = 24'h000000 ; 
    #00 in31_re = 1024 ; in31_im = 24'h000000 ;
    
    #40 in0_re = 24'h007_f00 ;  in0_im = 24'h000000 ; 
    #00 in1_re = 24'hff8_100 ;  in1_im = 24'h000000 ; 
    #00 in2_re = 24'h007_f00 ;  in2_im = 24'h000000 ; 
    #00 in3_re = 24'hff8_100 ;  in3_im = 24'h000000 ;
    #00 in4_re = 24'h007_f00 ;  in4_im = 24'h000000 ; 
    #00 in5_re = 24'hff8_100 ;  in5_im = 24'h000000 ; 
    #00 in6_re = 24'h007_f00 ;  in6_im = 24'h000000 ; 
    #00 in7_re = 24'hff8_100 ;  in7_im = 24'h000000 ; 
    #00 in8_re = 24'h007_f00 ;  in8_im = 24'h000000 ; 
    #00 in9_re = 24'hff8_100 ;  in9_im = 24'h000000 ; 
    #00 in10_re = 24'h007_f00 ; in10_im = 24'h000000 ; 
    #00 in11_re = 24'hff8_100 ; in11_im = 24'h000000 ;
    #00 in12_re = 24'h007_f00 ; in12_im = 24'h000000 ; 
    #00 in13_re = 24'hff8_100 ; in13_im = 24'h000000 ; 
    #00 in14_re = 24'h007_f00 ; in14_im = 24'h000000 ; 
    #00 in15_re = 24'hff8_100 ; in15_im = 24'h000000 ;
    #00 in16_re = 24'h007_f00 ; in16_im = 24'h000000 ; 
    #00 in17_re = 24'hff8_100 ; in17_im = 24'h000000 ; 
    #00 in18_re = 24'h007_f00 ; in18_im = 24'h000000 ; 
    #00 in19_re = 24'hff8_100 ; in19_im = 24'h000000 ;
    #00 in20_re = 24'h007_f00 ; in20_im = 24'h000000 ; 
    #00 in21_re = 24'hff8_100 ; in21_im = 24'h000000 ; 
    #00 in22_re = 24'h007_f00 ; in22_im = 24'h000000 ; 
    #00 in23_re = 24'hff8_100 ; in23_im = 24'h000000 ;
    #00 in24_re = 24'h007_f00 ; in24_im = 24'h000000 ; 
    #00 in25_re = 24'hff8_100 ; in25_im = 24'h000000 ; 
    #00 in26_re = 24'h007_f00 ; in26_im = 24'h000000 ; 
    #00 in27_re = 24'hff8_100 ; in27_im = 24'h000000 ;
    #00 in28_re = 24'h007_f00 ; in28_im = 24'h000000 ; 
    #00 in29_re = 24'hff8_100 ; in29_im = 24'h000000 ; 
    #00 in30_re = 24'h007_f00 ; in30_im = 24'h000000 ; 
    #00 in31_re = 24'hff8_100 ; in31_im = 24'h000000 ;
    
    #260 $stop;
end

endmodule
