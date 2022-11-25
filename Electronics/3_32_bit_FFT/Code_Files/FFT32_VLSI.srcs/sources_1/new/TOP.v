`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cairo University
// Engineer: Ahmed Abusaif
// Create Date: 05/17/2022 02:00:18 PM
// Module Name: Complex_Multiplier
// Project Name: 32 FFT  
//////////////////////////////////////////////////////////////////////////////////

module TOP #(parameter length = 24)(
input clk_25M ,
input clk_100M , 
input rst ,
input [length-1:0] in0_re,in1_re,in2_re,in3_re,in4_re,in5_re,in6_re,in7_re,in8_re,in9_re,in10_re,
input [length-1:0] in11_re,in12_re,in13_re,in14_re,in15_re,in16_re,in17_re,in18_re,in19_re,in20_re,
input [length-1:0] in21_re,in22_re,in23_re,in24_re,in25_re,in26_re,in27_re,in28_re,in29_re,in30_re,in31_re,

input [length-1:0] in0_im,in1_im,in2_im,in3_im,in4_im,in5_im,in6_im,in7_im,in8_im,in9_im,in10_im,
input [length-1:0] in11_im,in12_im,in13_im,in14_im,in15_im,in16_im,in17_im,in18_im,in19_im,in20_im,
input [length-1:0] in21_im,in22_im,in23_im,in24_im,in25_im,in26_im,in27_im,in28_im,in29_im,in30_im,in31_im,

output [length-1:0] out0_re,out1_re,out2_re,out3_re,out4_re,out5_re,out6_re,out7_re,out8_re,out9_re,
output [length-1:0] out10_re,out11_re,out12_re,out13_re,out14_re,out15_re,out16_re,out17_re,out18_re,
output [length-1:0] out19_re,out20_re,out21_re,out22_re,out23_re,out24_re,out25_re,out26_re,out27_re,
output [length-1:0] out28_re,out29_re,out30_re,out31_re,

output [length-1:0] out0_im,out1_im,out2_im,out3_im,out4_im,out5_im,out6_im,out7_im,out8_im,out9_im,
output [length-1:0] out10_im,out11_im,out12_im,out13_im,out14_im,out15_im,out16_im,out17_im,out18_im,
output [length-1:0] out19_im,out20_im,out21_im,out22_im,out23_im,out24_im,out25_im,out26_im,out27_im,
output [length-1:0] out28_im,out29_im,out30_im,out31_im
);
   
//////////////////////////////////////////// Layyer 1 //////////////////////////////////////////// 
wire [length-1:0] con1_00re,con1_01re,con1_02re,con1_03re,con1_04re,con1_05re,con1_06re,con1_07re ;
wire [length-1:0] con1_08re,con1_09re,con1_10re,con1_11re,con1_12re,con1_13re,con1_14re,con1_15re ;
wire [length-1:0] con1_16re,con1_17re,con1_18re,con1_19re,con1_20re,con1_21re,con1_22re,con1_23re ;
wire [length-1:0] con1_24re,con1_25re,con1_26re,con1_27re,con1_28re,con1_29re,con1_30re,con1_31re ;

wire [length-1:0] con1_00im,con1_01im,con1_02im,con1_03im,con1_04im,con1_05im,con1_06im,con1_07im ;
wire [length-1:0] con1_08im,con1_09im,con1_10im,con1_11im,con1_12im,con1_13im,con1_14im,con1_15im ;
wire [length-1:0] con1_16im,con1_17im,con1_18im,con1_19im,con1_20im,con1_21im,con1_22im,con1_23im ;
wire [length-1:0] con1_24im,con1_25im,con1_26im,con1_27im,con1_28im,con1_29im,con1_30im,con1_31im ;

MAC2_Controlled#(.length(length)) MAC_C1(
.clk(clk_100M), .rst(rst),
.d1_real(in0_re), .d2_real(in16_re), .d3_real(in8_re), .d4_real(in24_re),
.d1_imag(in0_im), .d2_imag(in16_im), .d3_imag(in8_im), .d4_imag(in24_im),

.d5_real(in4_re), .d6_real(in20_re), .d7_real(in12_re), .d8_real(in28_re),
.d5_imag(in4_im), .d6_imag(in20_im), .d7_imag(in12_im), .d8_imag(in28_im),

.w1_real(24'hfff_000), .w2_real(24'hfff_000), .w3_real(24'hfff_000), .w4_real(24'hfff_000),
.w1_imag(24'h000_000), .w2_imag(24'h000_000), .w3_imag(24'h000_000), .w4_imag(24'h000_000),

.out1_real(con1_00re), .out2_real(con1_01re),
.out1_imag(con1_00im), .out2_imag(con1_01im),

.out3_real(con1_02re), .out4_real(con1_03re),
.out3_imag(con1_02im), .out4_imag(con1_03im),

.out5_real(con1_04re), .out6_real(con1_05re),
.out5_imag(con1_04im), .out6_imag(con1_05im),

.out7_real(con1_06re), .out8_real(con1_07re),
.out7_imag(con1_06im), .out8_imag(con1_07im) 
);

MAC2_Controlled#(.length(length)) MAC_C2(
.clk(clk_100M), .rst(rst),
.d1_real(in2_re), .d2_real(in18_re), .d3_real(in10_re), .d4_real(in26_re),
.d1_imag(in2_im), .d2_imag(in18_im), .d3_imag(in10_im), .d4_imag(in26_im),

.d5_real(in6_re), .d6_real(in22_re), .d7_real(in14_re), .d8_real(in30_re),
.d5_imag(in6_im), .d6_imag(in22_im), .d7_imag(in14_im), .d8_imag(in30_im),

.w1_real(24'hfff_000), .w2_real(24'hfff_000), .w3_real(24'hfff_000), .w4_real(24'hfff_000),
.w1_imag(24'h000_000), .w2_imag(24'h000_000), .w3_imag(24'h000_000), .w4_imag(24'h000_000),

.out1_real(con1_08re), .out2_real(con1_09re),
.out1_imag(con1_08im), .out2_imag(con1_09im),

.out3_real(con1_10re), .out4_real(con1_11re),
.out3_imag(con1_10im), .out4_imag(con1_11im),

.out5_real(con1_12re), .out6_real(con1_13re),
.out5_imag(con1_12im), .out6_imag(con1_13im),

.out7_real(con1_14re), .out8_real(con1_15re),
.out7_imag(con1_14im), .out8_imag(con1_15im) 
);


MAC2_Controlled#(.length(length)) MAC_C3(
.clk(clk_100M), .rst(rst),
.d1_real(in1_re), .d2_real(in17_re), .d3_real(in9_re), .d4_real(in25_re),
.d1_imag(in1_im), .d2_imag(in17_im), .d3_imag(in9_im), .d4_imag(in25_im),

.d5_real(in5_re), .d6_real(in21_re), .d7_real(in13_re), .d8_real(in29_re),
.d5_imag(in5_im), .d6_imag(in21_im), .d7_imag(in13_im), .d8_imag(in29_im),

.w1_real(24'hfff_000), .w2_real(24'hfff_000), .w3_real(24'hfff_000), .w4_real(24'hfff_000),
.w1_imag(24'h000_000), .w2_imag(24'h000_000), .w3_imag(24'h000_000), .w4_imag(24'h000_000),

.out1_real(con1_16re), .out2_real(con1_17re),
.out1_imag(con1_16im), .out2_imag(con1_17im),

.out3_real(con1_18re), .out4_real(con1_19re),
.out3_imag(con1_18im), .out4_imag(con1_19im),

.out5_real(con1_20re), .out6_real(con1_21re),
.out5_imag(con1_20im), .out6_imag(con1_21im),

.out7_real(con1_22re), .out8_real(con1_23re),
.out7_imag(con1_22im), .out8_imag(con1_23im) 
);

MAC2_Controlled#(.length(length)) MAC_C4(
.clk(clk_100M), .rst(rst),
.d1_real(in3_re), .d2_real(in19_re), .d3_real(in11_re), .d4_real(in27_re),
.d1_imag(in3_im), .d2_imag(in19_im), .d3_imag(in11_im), .d4_imag(in27_im),

.d5_real(in7_re), .d6_real(in23_re), .d7_real(in15_re), .d8_real(in31_re),
.d5_imag(in7_im), .d6_imag(in23_im), .d7_imag(in15_im), .d8_imag(in31_im),

.w1_real(24'hfff_000), .w2_real(24'hfff_000), .w3_real(24'hfff_000), .w4_real(24'hfff_000),
.w1_imag(24'h000_000), .w2_imag(24'h000_000), .w3_imag(24'h000_000), .w4_imag(24'h000_000),

.out1_real(con1_24re), .out2_real(con1_25re),
.out1_imag(con1_24im), .out2_imag(con1_25im),

.out3_real(con1_26re), .out4_real(con1_27re),
.out3_imag(con1_26im), .out4_imag(con1_27im),

.out5_real(con1_28re), .out6_real(con1_29re),
.out5_imag(con1_28im), .out6_imag(con1_29im),

.out7_real(con1_30re), .out8_real(con1_31re),
.out7_imag(con1_30im), .out8_imag(con1_31im) 
);

wire [length-1:0] con11_00re,con11_01re,con11_02re,con11_03re,con11_04re,con11_05re,con11_06re,con11_07re ;
wire [length-1:0] con11_08re,con11_09re,con11_10re,con11_11re,con11_12re,con11_13re,con11_14re,con11_15re ;
wire [length-1:0] con11_16re,con11_17re,con11_18re,con11_19re,con11_20re,con11_21re,con11_22re,con11_23re ;
wire [length-1:0] con11_24re,con11_25re,con11_26re,con11_27re,con11_28re,con11_29re,con11_30re,con11_31re ;

wire [length-1:0] con11_00im,con11_01im,con11_02im,con11_03im,con11_04im,con11_05im,con11_06im,con11_07im ;
wire [length-1:0] con11_08im,con11_09im,con11_10im,con11_11im,con11_12im,con11_13im,con11_14im,con11_15im ;
wire [length-1:0] con11_16im,con11_17im,con11_18im,con11_19im,con11_20im,con11_21im,con11_22im,con11_23im ;
wire [length-1:0] con11_24im,con11_25im,con11_26im,con11_27im,con11_28im,con11_29im,con11_30im,con11_31im ;

Register_Bank#(.length(length)) RB1(
.clk(clk_25M), .rst(rst),
.in0_re(con1_00re),.in1_re(con1_01re),.in2_re(con1_02re),.in3_re(con1_03re),.in4_re(con1_04re),.in5_re(con1_05re),.in6_re(con1_06re),.in7_re(con1_07re),.in8_re(con1_08re),.in9_re(con1_09re),.in10_re(con1_10re),
.in11_re(con1_11re),.in12_re(con1_12re),.in13_re(con1_13re),.in14_re(con1_14re),.in15_re(con1_15re),.in16_re(con1_16re),.in17_re(con1_17re),.in18_re(con1_18re),.in19_re(con1_19re),.in20_re(con1_20re),
.in21_re(con1_21re),.in22_re(con1_22re),.in23_re(con1_23re),.in24_re(con1_24re),.in25_re(con1_25re),.in26_re(con1_26re),.in27_re(con1_27re),.in28_re(con1_28re),.in29_re(con1_29re),.in30_re(con1_30re),.in31_re(con1_31re),

.in0_im(con1_00im),.in1_im(con1_01im),.in2_im(con1_02im),.in3_im(con1_03im),.in4_im(con1_04im),.in5_im(con1_05im),.in6_im(con1_06im),.in7_im(con1_07im),.in8_im(con1_08im),.in9_im(con1_09im),.in10_im(con1_10im),
.in11_im(con1_11im),.in12_im(con1_12im),.in13_im(con1_13im),.in14_im(con1_14im),.in15_im(con1_15im),.in16_im(con1_16im),.in17_im(con1_17im),.in18_im(con1_18im),.in19_im(con1_19im),.in20_im(con1_20im),
.in21_im(con1_21im),.in22_im(con1_22im),.in23_im(con1_23im),.in24_im(con1_24im),.in25_im(con1_25im),.in26_im(con1_26im),.in27_im(con1_27im),.in28_im(con1_28im),.in29_im(con1_29im),.in30_im(con1_30im),.in31_im(con1_31im),

.out0_re(con11_00re),.out1_re(con11_01re),.out2_re(con11_02re),.out3_re(con11_03re),.out4_re(con11_04re),.out5_re(con11_05re),.out6_re(con11_06re),.out7_re(con11_07re),.out8_re(con11_08re),.out9_re(con11_09re),
.out10_re(con11_10re),.out11_re(con11_11re),.out12_re(con11_12re),.out13_re(con11_13re),.out14_re(con11_14re),.out15_re(con11_15re),.out16_re(con11_16re),.out17_re(con11_17re),.out18_re(con11_18re),
.out19_re(con11_19re),.out20_re(con11_20re),.out21_re(con11_21re),.out22_re(con11_22re),.out23_re(con11_23re),.out24_re(con11_24re),.out25_re(con11_25re),.out26_re(con11_26re),.out27_re(con11_27re),
.out28_re(con11_28re),.out29_re(con11_29re),.out30_re(con11_30re),.out31_re(con11_31re),

.out0_im(con11_00im),.out1_im(con11_01im),.out2_im(con11_02im),.out3_im(con11_03im),.out4_im(con11_04im),.out5_im(con11_05im),.out6_im(con11_06im),.out7_im(con11_07im),.out8_im(con11_08im),.out9_im(con11_09im),
.out10_im(con11_10im),.out11_im(con11_11im),.out12_im(con11_12im),.out13_im(con11_13im),.out14_im(con11_14im),.out15_im(con11_15im),.out16_im(con11_16im),.out17_im(con11_17im),.out18_im(con11_18im),
.out19_im(con11_19im),.out20_im(con11_20im),.out21_im(con11_21im),.out22_im(con11_22im),.out23_im(con11_23im),.out24_im(con11_24im),.out25_im(con11_25im),.out26_im(con11_26im),.out27_im(con11_27im),
.out28_im(con11_28im),.out29_im(con11_29im),.out30_im(con11_30im),.out31_im(con11_31im)
    );
    
//////////////////////////////////////////// Layyer 2 //////////////////////////////////////////// 
wire [length-1:0] con2_00re,con2_01re,con2_02re,con2_03re,con2_04re,con2_05re,con2_06re,con2_07re ;
wire [length-1:0] con2_08re,con2_09re,con2_10re,con2_11re,con2_12re,con2_13re,con2_14re,con2_15re ;
wire [length-1:0] con2_16re,con2_17re,con2_18re,con2_19re,con2_20re,con2_21re,con2_22re,con2_23re ;
wire [length-1:0] con2_24re,con2_25re,con2_26re,con2_27re,con2_28re,con2_29re,con2_30re,con2_31re ;

wire [length-1:0] con2_00im,con2_01im,con2_02im,con2_03im,con2_04im,con2_05im,con2_06im,con2_07im ;
wire [length-1:0] con2_08im,con2_09im,con2_10im,con2_11im,con2_12im,con2_13im,con2_14im,con2_15im ;
wire [length-1:0] con2_16im,con2_17im,con2_18im,con2_19im,con2_20im,con2_21im,con2_22im,con2_23im ;
wire [length-1:0] con2_24im,con2_25im,con2_26im,con2_27im,con2_28im,con2_29im,con2_30im,con2_31im ;

MAC2_Controlled#(.length(length)) MAC_C5(
.clk(clk_100M), .rst(rst),
.d1_real(con11_00re), .d2_real(con11_02re), .d3_real(con11_01re), .d4_real(con11_03re),
.d1_imag(con11_00im), .d2_imag(con11_02im), .d3_imag(con11_01im), .d4_imag(con11_03im),

.d5_real(con11_04re), .d6_real(con11_06re), .d7_real(con11_05re), .d8_real(con11_07re),
.d5_imag(con11_04im), .d6_imag(con11_06im), .d7_imag(con11_05im), .d8_imag(con11_07im),

.w1_real(24'h000_000), .w2_real(24'hfff_000), .w3_real(24'h000_000), .w4_real(24'hfff_000),
.w1_imag(24'h001_000), .w2_imag(24'h000_000), .w3_imag(24'h001_000), .w4_imag(24'h000_000),

.out1_real(con2_00re), .out2_real(con2_02re),
.out1_imag(con2_00im), .out2_imag(con2_02im),

.out3_real(con2_01re), .out4_real(con2_03re),
.out3_imag(con2_01im), .out4_imag(con2_03im),

.out5_real(con2_04re), .out6_real(con2_06re),
.out5_imag(con2_04im), .out6_imag(con2_06im),

.out7_real(con2_05re), .out8_real(con2_07re),
.out7_imag(con2_05im), .out8_imag(con2_07im) 
);

MAC2_Controlled#(.length(length)) MAC_C6(
.clk(clk_100M), .rst(rst),
.d1_real(con11_08re), .d2_real(con11_10re), .d3_real(con11_09re), .d4_real(con11_11re),
.d1_imag(con11_08im), .d2_imag(con11_10im), .d3_imag(con11_09im), .d4_imag(con11_11im),

.d5_real(con11_12re), .d6_real(con11_14re), .d7_real(con11_13re), .d8_real(con11_15re),
.d5_imag(con11_12im), .d6_imag(con11_14im), .d7_imag(con11_13im), .d8_imag(con11_15im),

.w1_real(24'h000_000), .w2_real(24'hfff_000), .w3_real(24'h000_000), .w4_real(24'hfff_000),
.w1_imag(24'h001_000), .w2_imag(24'h000_000), .w3_imag(24'h001_000), .w4_imag(24'h000_000),

.out1_real(con2_08re), .out2_real(con2_10re),
.out1_imag(con2_08im), .out2_imag(con2_10im),

.out3_real(con2_09re), .out4_real(con2_11re),
.out3_imag(con2_09im), .out4_imag(con2_11im),

.out5_real(con2_12re), .out6_real(con2_14re),
.out5_imag(con2_12im), .out6_imag(con2_14im),

.out7_real(con2_13re), .out8_real(con2_15re),
.out7_imag(con2_13im), .out8_imag(con2_15im) 
);


MAC2_Controlled#(.length(length)) MAC_C7(
.clk(clk_100M), .rst(rst),
.d1_real(con11_16re), .d2_real(con11_18re), .d3_real(con11_17re), .d4_real(con11_19re),
.d1_imag(con11_16im), .d2_imag(con11_18im), .d3_imag(con11_17im), .d4_imag(con11_19im),

.d5_real(con11_20re), .d6_real(con11_22re), .d7_real(con11_21re), .d8_real(con11_23re),
.d5_imag(con11_20im), .d6_imag(con11_22im), .d7_imag(con11_21im), .d8_imag(con11_23im),

.w1_real(24'h000_000), .w2_real(24'hfff_000), .w3_real(24'h000_000), .w4_real(24'hfff_000),
.w1_imag(24'h001_000), .w2_imag(24'h000_000), .w3_imag(24'h001_000), .w4_imag(24'h000_000),

.out1_real(con2_16re), .out2_real(con2_18re),
.out1_imag(con2_16im), .out2_imag(con2_18im),

.out3_real(con2_17re), .out4_real(con2_19re),
.out3_imag(con2_17im), .out4_imag(con2_19im),

.out5_real(con2_20re), .out6_real(con2_22re),
.out5_imag(con2_20im), .out6_imag(con2_22im),

.out7_real(con2_21re), .out8_real(con2_23re),
.out7_imag(con2_21im), .out8_imag(con2_23im) 
);

MAC2_Controlled#(.length(length)) MAC_C8(
.clk(clk_100M), .rst(rst),
.d1_real(con11_24re), .d2_real(con11_26re), .d3_real(con11_25re), .d4_real(con11_27re),
.d1_imag(con11_24im), .d2_imag(con11_26im), .d3_imag(con11_25im), .d4_imag(con11_27im),

.d5_real(con11_28re), .d6_real(con11_30re), .d7_real(con11_29re), .d8_real(con11_31re),
.d5_imag(con11_28im), .d6_imag(con11_30im), .d7_imag(con11_29im), .d8_imag(con11_31im),

.w1_real(24'h000_000), .w2_real(24'hfff_000), .w3_real(24'h000_000), .w4_real(24'hfff_000),
.w1_imag(24'h001_000), .w2_imag(24'h000_000), .w3_imag(24'h001_000), .w4_imag(24'h000_000),

.out1_real(con2_24re), .out2_real(con2_26re),
.out1_imag(con2_24im), .out2_imag(con2_26im),

.out3_real(con2_25re), .out4_real(con2_27re),
.out3_imag(con2_25im), .out4_imag(con2_27im),

.out5_real(con2_28re), .out6_real(con2_30re),
.out5_imag(con2_28im), .out6_imag(con2_30im),

.out7_real(con2_29re), .out8_real(con2_31re),
.out7_imag(con2_29im), .out8_imag(con2_31im) 
);

wire [length-1:0] con22_00re,con22_01re,con22_02re,con22_03re,con22_04re,con22_05re,con22_06re,con22_07re ;
wire [length-1:0] con22_08re,con22_09re,con22_10re,con22_11re,con22_12re,con22_13re,con22_14re,con22_15re ;
wire [length-1:0] con22_16re,con22_17re,con22_18re,con22_19re,con22_20re,con22_21re,con22_22re,con22_23re ;
wire [length-1:0] con22_24re,con22_25re,con22_26re,con22_27re,con22_28re,con22_29re,con22_30re,con22_31re ;

wire [length-1:0] con22_00im,con22_01im,con22_02im,con22_03im,con22_04im,con22_05im,con22_06im,con22_07im ;
wire [length-1:0] con22_08im,con22_09im,con22_10im,con22_11im,con22_12im,con22_13im,con22_14im,con22_15im ;
wire [length-1:0] con22_16im,con22_17im,con22_18im,con22_19im,con22_20im,con22_21im,con22_22im,con22_23im ;
wire [length-1:0] con22_24im,con22_25im,con22_26im,con22_27im,con22_28im,con22_29im,con22_30im,con22_31im ;

Register_Bank#(.length(length)) RB2(
.clk(clk_25M), .rst(rst),
.in0_re(con2_00re),.in1_re(con2_01re),.in2_re(con2_02re),.in3_re(con2_03re),.in4_re(con2_04re),.in5_re(con2_05re),.in6_re(con2_06re),.in7_re(con2_07re),.in8_re(con2_08re),.in9_re(con2_09re),.in10_re(con2_10re),
.in11_re(con2_11re),.in12_re(con2_12re),.in13_re(con2_13re),.in14_re(con2_14re),.in15_re(con2_15re),.in16_re(con2_16re),.in17_re(con2_17re),.in18_re(con2_18re),.in19_re(con2_19re),.in20_re(con2_20re),
.in21_re(con2_21re),.in22_re(con2_22re),.in23_re(con2_23re),.in24_re(con2_24re),.in25_re(con2_25re),.in26_re(con2_26re),.in27_re(con2_27re),.in28_re(con2_28re),.in29_re(con2_29re),.in30_re(con2_30re),.in31_re(con2_31re),

.in0_im(con2_00im),.in1_im(con2_01im),.in2_im(con2_02im),.in3_im(con2_03im),.in4_im(con2_04im),.in5_im(con2_05im),.in6_im(con2_06im),.in7_im(con2_07im),.in8_im(con2_08im),.in9_im(con2_09im),.in10_im(con2_10im),
.in11_im(con2_11im),.in12_im(con2_12im),.in13_im(con2_13im),.in14_im(con2_14im),.in15_im(con2_15im),.in16_im(con2_16im),.in17_im(con2_17im),.in18_im(con2_18im),.in19_im(con2_19im),.in20_im(con2_20im),
.in21_im(con2_21im),.in22_im(con2_22im),.in23_im(con2_23im),.in24_im(con2_24im),.in25_im(con2_25im),.in26_im(con2_26im),.in27_im(con2_27im),.in28_im(con2_28im),.in29_im(con2_29im),.in30_im(con2_30im),.in31_im(con2_31im),

.out0_re(con22_00re),.out1_re(con22_01re),.out2_re(con22_02re),.out3_re(con22_03re),.out4_re(con22_04re),.out5_re(con22_05re),.out6_re(con22_06re),.out7_re(con22_07re),.out8_re(con22_08re),.out9_re(con22_09re),
.out10_re(con22_10re),.out11_re(con22_11re),.out12_re(con22_12re),.out13_re(con22_13re),.out14_re(con22_14re),.out15_re(con22_15re),.out16_re(con22_16re),.out17_re(con22_17re),.out18_re(con22_18re),
.out19_re(con22_19re),.out20_re(con22_20re),.out21_re(con22_21re),.out22_re(con22_22re),.out23_re(con22_23re),.out24_re(con22_24re),.out25_re(con22_25re),.out26_re(con22_26re),.out27_re(con22_27re),
.out28_re(con22_28re),.out29_re(con22_29re),.out30_re(con22_30re),.out31_re(con22_31re),

.out0_im(con22_00im),.out1_im(con22_01im),.out2_im(con22_02im),.out3_im(con22_03im),.out4_im(con22_04im),.out5_im(con22_05im),.out6_im(con22_06im),.out7_im(con22_07im),.out8_im(con22_08im),.out9_im(con22_09im),
.out10_im(con22_10im),.out11_im(con22_11im),.out12_im(con22_12im),.out13_im(con22_13im),.out14_im(con22_14im),.out15_im(con22_15im),.out16_im(con22_16im),.out17_im(con22_17im),.out18_im(con22_18im),
.out19_im(con22_19im),.out20_im(con22_20im),.out21_im(con22_21im),.out22_im(con22_22im),.out23_im(con22_23im),.out24_im(con22_24im),.out25_im(con22_25im),.out26_im(con22_26im),.out27_im(con22_27im),
.out28_im(con22_28im),.out29_im(con22_29im),.out30_im(con22_30im),.out31_im(con22_31im)
    );

//////////////////////////////////////////// Layyer 3 //////////////////////////////////////////// 
wire [length-1:0] con3_00re,con3_01re,con3_02re,con3_03re,con3_04re,con3_05re,con3_06re,con3_07re ;
wire [length-1:0] con3_08re,con3_09re,con3_10re,con3_11re,con3_12re,con3_13re,con3_14re,con3_15re ;
wire [length-1:0] con3_16re,con3_17re,con3_18re,con3_19re,con3_20re,con3_21re,con3_22re,con3_23re ;
wire [length-1:0] con3_24re,con3_25re,con3_26re,con3_27re,con3_28re,con3_29re,con3_30re,con3_31re ;

wire [length-1:0] con3_00im,con3_01im,con3_02im,con3_03im,con3_04im,con3_05im,con3_06im,con3_07im ;
wire [length-1:0] con3_08im,con3_09im,con3_10im,con3_11im,con3_12im,con3_13im,con3_14im,con3_15im ;
wire [length-1:0] con3_16im,con3_17im,con3_18im,con3_19im,con3_20im,con3_21im,con3_22im,con3_23im ;
wire [length-1:0] con3_24im,con3_25im,con3_26im,con3_27im,con3_28im,con3_29im,con3_30im,con3_31im ;

MAC2_Controlled#(.length(length)) MAC_C9(
.clk(clk_100M), .rst(rst),
.d1_real(con22_00re), .d2_real(con22_04re), .d3_real(con22_01re), .d4_real(con22_05re),
.d1_imag(con22_00im), .d2_imag(con22_04im), .d3_imag(con22_01im), .d4_imag(con22_05im),

.d5_real(con22_02re), .d6_real(con22_06re), .d7_real(con22_03re), .d8_real(con22_07re),
.d5_imag(con22_02im), .d6_imag(con22_06im), .d7_imag(con22_03im), .d8_imag(con22_07im),

.w1_real(24'h000_b50), .w2_real(24'h000_000), .w3_real(24'hfff_4b0), .w4_real(24'hfff_000),
.w1_imag(24'h000_b50), .w2_imag(24'h001_000), .w3_imag(24'h000_b50), .w4_imag(24'h000_000),

.out1_real(con3_00re), .out2_real(con3_04re),
.out1_imag(con3_00im), .out2_imag(con3_04im),

.out3_real(con3_01re), .out4_real(con3_05re),
.out3_imag(con3_01im), .out4_imag(con3_05im),

.out5_real(con3_02re), .out6_real(con3_06re),
.out5_imag(con3_02im), .out6_imag(con3_06im),

.out7_real(con3_03re), .out8_real(con3_07re),
.out7_imag(con3_03im), .out8_imag(con3_07im) 
);

MAC2_Controlled#(.length(length)) MAC_C10(
.clk(clk_100M), .rst(rst),
.d1_real(con22_08re), .d2_real(con22_12re), .d3_real(con22_09re), .d4_real(con22_13re),
.d1_imag(con22_08im), .d2_imag(con22_12im), .d3_imag(con22_09im), .d4_imag(con22_13im),

.d5_real(con22_10re), .d6_real(con22_14re), .d7_real(con22_11re), .d8_real(con22_15re),
.d5_imag(con22_10im), .d6_imag(con22_14im), .d7_imag(con22_11im), .d8_imag(con22_15im),

.w1_real(24'h000_b50), .w2_real(24'h000_000), .w3_real(24'hfff_4b0), .w4_real(24'hfff_000),
.w1_imag(24'h000_b50), .w2_imag(24'h001_000), .w3_imag(24'h000_b50), .w4_imag(24'h000_000),

.out1_real(con3_08re), .out2_real(con3_12re),
.out1_imag(con3_08im), .out2_imag(con3_12im),

.out3_real(con3_09re), .out4_real(con3_13re),
.out3_imag(con3_09im), .out4_imag(con3_13im),

.out5_real(con3_10re), .out6_real(con3_14re),
.out5_imag(con3_10im), .out6_imag(con3_14im),

.out7_real(con3_11re), .out8_real(con3_15re),
.out7_imag(con3_11im), .out8_imag(con3_15im) 
);


MAC2_Controlled#(.length(length)) MAC_C11(
.clk(clk_100M), .rst(rst),
.d1_real(con22_16re), .d2_real(con22_20re), .d3_real(con22_17re), .d4_real(con22_21re),
.d1_imag(con22_16im), .d2_imag(con22_20im), .d3_imag(con22_17im), .d4_imag(con22_21im),

.d5_real(con22_18re), .d6_real(con22_22re), .d7_real(con22_19re), .d8_real(con22_23re),
.d5_imag(con22_18im), .d6_imag(con22_22im), .d7_imag(con22_19im), .d8_imag(con22_23im),

.w1_real(24'h000_b50), .w2_real(24'h000_000), .w3_real(24'hfff_4b0), .w4_real(24'hfff_000),
.w1_imag(24'h000_b50), .w2_imag(24'h001_000), .w3_imag(24'h000_b50), .w4_imag(24'h000_000),

.out1_real(con3_16re), .out2_real(con3_20re),
.out1_imag(con3_16im), .out2_imag(con3_20im),

.out3_real(con3_17re), .out4_real(con3_21re),
.out3_imag(con3_17im), .out4_imag(con3_21im),

.out5_real(con3_18re), .out6_real(con3_22re),
.out5_imag(con3_18im), .out6_imag(con3_22im),

.out7_real(con3_19re), .out8_real(con3_23re),
.out7_imag(con3_19im), .out8_imag(con3_23im) 
);

MAC2_Controlled#(.length(length)) MAC_C12(
.clk(clk_100M), .rst(rst),
.d1_real(con22_24re), .d2_real(con22_28re), .d3_real(con22_25re), .d4_real(con22_29re),
.d1_imag(con22_24im), .d2_imag(con22_28im), .d3_imag(con22_25im), .d4_imag(con22_29im),

.d5_real(con22_26re), .d6_real(con22_30re), .d7_real(con22_27re), .d8_real(con22_31re),
.d5_imag(con22_26im), .d6_imag(con22_30im), .d7_imag(con22_27im), .d8_imag(con22_31im),

.w1_real(24'h000_b50), .w2_real(24'h000_000), .w3_real(24'hfff_4b0), .w4_real(24'hfff_000),
.w1_imag(24'h000_b50), .w2_imag(24'h001_000), .w3_imag(24'h000_b50), .w4_imag(24'h000_000),

.out1_real(con3_24re), .out2_real(con3_28re),
.out1_imag(con3_24im), .out2_imag(con3_28im),

.out3_real(con3_25re), .out4_real(con3_29re),
.out3_imag(con3_25im), .out4_imag(con3_29im),

.out5_real(con3_26re), .out6_real(con3_30re),
.out5_imag(con3_26im), .out6_imag(con3_30im),

.out7_real(con3_27re), .out8_real(con3_31re),
.out7_imag(con3_27im), .out8_imag(con3_31im) 
);

wire [length-1:0] con33_00re,con33_01re,con33_02re,con33_03re,con33_04re,con33_05re,con33_06re,con33_07re ;
wire [length-1:0] con33_08re,con33_09re,con33_10re,con33_11re,con33_12re,con33_13re,con33_14re,con33_15re ;
wire [length-1:0] con33_16re,con33_17re,con33_18re,con33_19re,con33_20re,con33_21re,con33_22re,con33_23re ;
wire [length-1:0] con33_24re,con33_25re,con33_26re,con33_27re,con33_28re,con33_29re,con33_30re,con33_31re ;

wire [length-1:0] con33_00im,con33_01im,con33_02im,con33_03im,con33_04im,con33_05im,con33_06im,con33_07im ;
wire [length-1:0] con33_08im,con33_09im,con33_10im,con33_11im,con33_12im,con33_13im,con33_14im,con33_15im ;
wire [length-1:0] con33_16im,con33_17im,con33_18im,con33_19im,con33_20im,con33_21im,con33_22im,con33_23im ;
wire [length-1:0] con33_24im,con33_25im,con33_26im,con33_27im,con33_28im,con33_29im,con33_30im,con33_31im ;

Register_Bank#(.length(length)) RB3(
.clk(clk_25M), .rst(rst),
.in0_re(con3_00re),.in1_re(con3_01re),.in2_re(con3_02re),.in3_re(con3_03re),.in4_re(con3_04re),.in5_re(con3_05re),.in6_re(con3_06re),.in7_re(con3_07re),.in8_re(con3_08re),.in9_re(con3_09re),.in10_re(con3_10re),
.in11_re(con3_11re),.in12_re(con3_12re),.in13_re(con3_13re),.in14_re(con3_14re),.in15_re(con3_15re),.in16_re(con3_16re),.in17_re(con3_17re),.in18_re(con3_18re),.in19_re(con3_19re),.in20_re(con3_20re),
.in21_re(con3_21re),.in22_re(con3_22re),.in23_re(con3_23re),.in24_re(con3_24re),.in25_re(con3_25re),.in26_re(con3_26re),.in27_re(con3_27re),.in28_re(con3_28re),.in29_re(con3_29re),.in30_re(con3_30re),.in31_re(con3_31re),

.in0_im(con3_00im),.in1_im(con3_01im),.in2_im(con3_02im),.in3_im(con3_03im),.in4_im(con3_04im),.in5_im(con3_05im),.in6_im(con3_06im),.in7_im(con3_07im),.in8_im(con3_08im),.in9_im(con3_09im),.in10_im(con3_10im),
.in11_im(con3_11im),.in12_im(con3_12im),.in13_im(con3_13im),.in14_im(con3_14im),.in15_im(con3_15im),.in16_im(con3_16im),.in17_im(con3_17im),.in18_im(con3_18im),.in19_im(con3_19im),.in20_im(con3_20im),
.in21_im(con3_21im),.in22_im(con3_22im),.in23_im(con3_23im),.in24_im(con3_24im),.in25_im(con3_25im),.in26_im(con3_26im),.in27_im(con3_27im),.in28_im(con3_28im),.in29_im(con3_29im),.in30_im(con3_30im),.in31_im(con3_31im),

.out0_re(con33_00re),.out1_re(con33_01re),.out2_re(con33_02re),.out3_re(con33_03re),.out4_re(con33_04re),.out5_re(con33_05re),.out6_re(con33_06re),.out7_re(con33_07re),.out8_re(con33_08re),.out9_re(con33_09re),
.out10_re(con33_10re),.out11_re(con33_11re),.out12_re(con33_12re),.out13_re(con33_13re),.out14_re(con33_14re),.out15_re(con33_15re),.out16_re(con33_16re),.out17_re(con33_17re),.out18_re(con33_18re),
.out19_re(con33_19re),.out20_re(con33_20re),.out21_re(con33_21re),.out22_re(con33_22re),.out23_re(con33_23re),.out24_re(con33_24re),.out25_re(con33_25re),.out26_re(con33_26re),.out27_re(con33_27re),
.out28_re(con33_28re),.out29_re(con33_29re),.out30_re(con33_30re),.out31_re(con33_31re),

.out0_im(con33_00im),.out1_im(con33_01im),.out2_im(con33_02im),.out3_im(con33_03im),.out4_im(con33_04im),.out5_im(con33_05im),.out6_im(con33_06im),.out7_im(con33_07im),.out8_im(con33_08im),.out9_im(con33_09im),
.out10_im(con33_10im),.out11_im(con33_11im),.out12_im(con33_12im),.out13_im(con33_13im),.out14_im(con33_14im),.out15_im(con33_15im),.out16_im(con33_16im),.out17_im(con33_17im),.out18_im(con33_18im),
.out19_im(con33_19im),.out20_im(con33_20im),.out21_im(con33_21im),.out22_im(con33_22im),.out23_im(con33_23im),.out24_im(con33_24im),.out25_im(con33_25im),.out26_im(con33_26im),.out27_im(con33_27im),
.out28_im(con33_28im),.out29_im(con33_29im),.out30_im(con33_30im),.out31_im(con33_31im)
    );

//////////////////////////////////////////// Layyer 4 //////////////////////////////////////////// 
wire [length-1:0] con4_00re,con4_01re,con4_02re,con4_03re,con4_04re,con4_05re,con4_06re,con4_07re ;
wire [length-1:0] con4_08re,con4_09re,con4_10re,con4_11re,con4_12re,con4_13re,con4_14re,con4_15re ;
wire [length-1:0] con4_16re,con4_17re,con4_18re,con4_19re,con4_20re,con4_21re,con4_22re,con4_23re ;
wire [length-1:0] con4_24re,con4_25re,con4_26re,con4_27re,con4_28re,con4_29re,con4_30re,con4_31re ;

wire [length-1:0] con4_00im,con4_01im,con4_02im,con4_03im,con4_04im,con4_05im,con4_06im,con4_07im ;
wire [length-1:0] con4_08im,con4_09im,con4_10im,con4_11im,con4_12im,con4_13im,con4_14im,con4_15im ;
wire [length-1:0] con4_16im,con4_17im,con4_18im,con4_19im,con4_20im,con4_21im,con4_22im,con4_23im ;
wire [length-1:0] con4_24im,con4_25im,con4_26im,con4_27im,con4_28im,con4_29im,con4_30im,con4_31im ;

MAC2_Controlled#(.length(length)) MAC_C13(
.clk(clk_100M), .rst(rst),
.d1_real(con33_00re), .d2_real(con33_08re), .d3_real(con33_01re), .d4_real(con33_09re),
.d1_imag(con33_00im), .d2_imag(con33_08im), .d3_imag(con33_01im), .d4_imag(con33_09im),

.d5_real(con33_02re), .d6_real(con33_10re), .d7_real(con33_03re), .d8_real(con33_11re),
.d5_imag(con33_02im), .d6_imag(con33_10im), .d7_imag(con33_03im), .d8_imag(con33_11im),

.w1_real(24'h000_ec7), .w2_real(24'h000_b50), .w3_real(24'h000_61f), .w4_real(24'h000_000),
.w1_imag(24'h000_61f), .w2_imag(24'h000_b50), .w3_imag(24'h000_ec7), .w4_imag(24'h001_000),

.out1_real(con4_00re), .out2_real(con4_08re),
.out1_imag(con4_00im), .out2_imag(con4_08im),

.out3_real(con4_01re), .out4_real(con4_09re),
.out3_imag(con4_01im), .out4_imag(con4_09im),

.out5_real(con4_02re), .out6_real(con4_10re),
.out5_imag(con4_02im), .out6_imag(con4_10im),

.out7_real(con4_03re), .out8_real(con4_11re),
.out7_imag(con4_03im), .out8_imag(con4_11im) 
);

MAC2_Controlled#(.length(length)) MAC_C14(
.clk(clk_100M), .rst(rst),
.d1_real(con33_04re), .d2_real(con33_12re), .d3_real(con33_05re), .d4_real(con33_13re),
.d1_imag(con33_04im), .d2_imag(con33_12im), .d3_imag(con33_05im), .d4_imag(con33_13im),

.d5_real(con33_06re), .d6_real(con33_14re), .d7_real(con33_07re), .d8_real(con33_15re),
.d5_imag(con33_06im), .d6_imag(con33_14im), .d7_imag(con33_07im), .d8_imag(con33_15im),

.w1_real(24'hfff_9e1), .w2_real(24'hfff_4b0), .w3_real(24'hfff_138), .w4_real(24'hfff_000),
.w1_imag(24'h000_ec7), .w2_imag(24'h000_b50), .w3_imag(24'h000_61f), .w4_imag(24'h000_000),

.out1_real(con4_04re), .out2_real(con4_12re),
.out1_imag(con4_04im), .out2_imag(con4_12im),

.out3_real(con4_05re), .out4_real(con4_13re),
.out3_imag(con4_05im), .out4_imag(con4_13im),

.out5_real(con4_06re), .out6_real(con4_14re),
.out5_imag(con4_06im), .out6_imag(con4_14im),

.out7_real(con4_07re), .out8_real(con4_15re),
.out7_imag(con4_07im), .out8_imag(con4_15im) 
);


MAC2_Controlled#(.length(length)) MAC_C15(
.clk(clk_100M), .rst(rst),
.d1_real(con33_16re), .d2_real(con33_24re), .d3_real(con33_17re), .d4_real(con33_25re),
.d1_imag(con33_16im), .d2_imag(con33_24im), .d3_imag(con33_17im), .d4_imag(con33_25im),

.d5_real(con33_18re), .d6_real(con33_26re), .d7_real(con33_19re), .d8_real(con33_27re),
.d5_imag(con33_18im), .d6_imag(con33_26im), .d7_imag(con33_19im), .d8_imag(con33_27im),

.w1_real(24'h000_ec7), .w2_real(24'h000_b50), .w3_real(24'h000_61f), .w4_real(24'h000_000),
.w1_imag(24'h000_61f), .w2_imag(24'h000_b50), .w3_imag(24'h000_ec7), .w4_imag(24'h001_000),

.out1_real(con4_16re), .out2_real(con4_24re),
.out1_imag(con4_16im), .out2_imag(con4_24im),

.out3_real(con4_17re), .out4_real(con4_25re),
.out3_imag(con4_17im), .out4_imag(con4_25im),

.out5_real(con4_18re), .out6_real(con4_26re),
.out5_imag(con4_18im), .out6_imag(con4_26im),

.out7_real(con4_19re), .out8_real(con4_27re),
.out7_imag(con4_19im), .out8_imag(con4_27im) 
);

MAC2_Controlled#(.length(length)) MAC_C16(
.clk(clk_100M), .rst(rst),
.d1_real(con33_20re), .d2_real(con33_28re), .d3_real(con33_21re), .d4_real(con33_29re),
.d1_imag(con33_20im), .d2_imag(con33_28im), .d3_imag(con33_21im), .d4_imag(con33_29im),

.d5_real(con33_22re), .d6_real(con33_30re), .d7_real(con33_23re), .d8_real(con33_31re),
.d5_imag(con33_22im), .d6_imag(con33_30im), .d7_imag(con33_23im), .d8_imag(con33_31im),

.w1_real(24'hfff_9e1), .w2_real(24'hfff_4b0), .w3_real(24'hfff_138), .w4_real(24'hfff_000),
.w1_imag(24'h000_ec7), .w2_imag(24'h000_b50), .w3_imag(24'h000_61f), .w4_imag(24'h000_000),

.out1_real(con4_20re), .out2_real(con4_28re),
.out1_imag(con4_20im), .out2_imag(con4_28im),

.out3_real(con4_21re), .out4_real(con4_29re),
.out3_imag(con4_21im), .out4_imag(con4_29im),

.out5_real(con4_22re), .out6_real(con4_30re),
.out5_imag(con4_22im), .out6_imag(con4_30im),

.out7_real(con4_23re), .out8_real(con4_31re),
.out7_imag(con4_23im), .out8_imag(con4_31im) 
);

wire [length-1:0] con44_00re,con44_01re,con44_02re,con44_03re,con44_04re,con44_05re,con44_06re,con44_07re ;
wire [length-1:0] con44_08re,con44_09re,con44_10re,con44_11re,con44_12re,con44_13re,con44_14re,con44_15re ;
wire [length-1:0] con44_16re,con44_17re,con44_18re,con44_19re,con44_20re,con44_21re,con44_22re,con44_23re ;
wire [length-1:0] con44_24re,con44_25re,con44_26re,con44_27re,con44_28re,con44_29re,con44_30re,con44_31re ;

wire [length-1:0] con44_00im,con44_01im,con44_02im,con44_03im,con44_04im,con44_05im,con44_06im,con44_07im ;
wire [length-1:0] con44_08im,con44_09im,con44_10im,con44_11im,con44_12im,con44_13im,con44_14im,con44_15im ;
wire [length-1:0] con44_16im,con44_17im,con44_18im,con44_19im,con44_20im,con44_21im,con44_22im,con44_23im ;
wire [length-1:0] con44_24im,con44_25im,con44_26im,con44_27im,con44_28im,con44_29im,con44_30im,con44_31im ;

Register_Bank#(.length(length)) RB4(
.clk(clk_25M), .rst(rst),
.in0_re(con4_00re),.in1_re(con4_01re),.in2_re(con4_02re),.in3_re(con4_03re),.in4_re(con4_04re),.in5_re(con4_05re),.in6_re(con4_06re),.in7_re(con4_07re),.in8_re(con4_08re),.in9_re(con4_09re),.in10_re(con4_10re),
.in11_re(con4_11re),.in12_re(con4_12re),.in13_re(con4_13re),.in14_re(con4_14re),.in15_re(con4_15re),.in16_re(con4_16re),.in17_re(con4_17re),.in18_re(con4_18re),.in19_re(con4_19re),.in20_re(con4_20re),
.in21_re(con4_21re),.in22_re(con4_22re),.in23_re(con4_23re),.in24_re(con4_24re),.in25_re(con4_25re),.in26_re(con4_26re),.in27_re(con4_27re),.in28_re(con4_28re),.in29_re(con4_29re),.in30_re(con4_30re),.in31_re(con4_31re),

.in0_im(con4_00im),.in1_im(con4_01im),.in2_im(con4_02im),.in3_im(con4_03im),.in4_im(con4_04im),.in5_im(con4_05im),.in6_im(con4_06im),.in7_im(con4_07im),.in8_im(con4_08im),.in9_im(con4_09im),.in10_im(con4_10im),
.in11_im(con4_11im),.in12_im(con4_12im),.in13_im(con4_13im),.in14_im(con4_14im),.in15_im(con4_15im),.in16_im(con4_16im),.in17_im(con4_17im),.in18_im(con4_18im),.in19_im(con4_19im),.in20_im(con4_20im),
.in21_im(con4_21im),.in22_im(con4_22im),.in23_im(con4_23im),.in24_im(con4_24im),.in25_im(con4_25im),.in26_im(con4_26im),.in27_im(con4_27im),.in28_im(con4_28im),.in29_im(con4_29im),.in30_im(con4_30im),.in31_im(con4_31im),

.out0_re(con44_00re),.out1_re(con44_01re),.out2_re(con44_02re),.out3_re(con44_03re),.out4_re(con44_04re),.out5_re(con44_05re),.out6_re(con44_06re),.out7_re(con44_07re),.out8_re(con44_08re),.out9_re(con44_09re),
.out10_re(con44_10re),.out11_re(con44_11re),.out12_re(con44_12re),.out13_re(con44_13re),.out14_re(con44_14re),.out15_re(con44_15re),.out16_re(con44_16re),.out17_re(con44_17re),.out18_re(con44_18re),
.out19_re(con44_19re),.out20_re(con44_20re),.out21_re(con44_21re),.out22_re(con44_22re),.out23_re(con44_23re),.out24_re(con44_24re),.out25_re(con44_25re),.out26_re(con44_26re),.out27_re(con44_27re),
.out28_re(con44_28re),.out29_re(con44_29re),.out30_re(con44_30re),.out31_re(con44_31re),

.out0_im(con44_00im),.out1_im(con44_01im),.out2_im(con44_02im),.out3_im(con44_03im),.out4_im(con44_04im),.out5_im(con44_05im),.out6_im(con44_06im),.out7_im(con44_07im),.out8_im(con44_08im),.out9_im(con44_09im),
.out10_im(con44_10im),.out11_im(con44_11im),.out12_im(con44_12im),.out13_im(con44_13im),.out14_im(con44_14im),.out15_im(con44_15im),.out16_im(con44_16im),.out17_im(con44_17im),.out18_im(con44_18im),
.out19_im(con44_19im),.out20_im(con44_20im),.out21_im(con44_21im),.out22_im(con44_22im),.out23_im(con44_23im),.out24_im(con44_24im),.out25_im(con44_25im),.out26_im(con44_26im),.out27_im(con44_27im),
.out28_im(con44_28im),.out29_im(con44_29im),.out30_im(con44_30im),.out31_im(con44_31im)
    );
    
//////////////////////////////////////////// Layyer 5 //////////////////////////////////////////// 
wire [length-1:0] con5_00re,con5_01re,con5_02re,con5_03re,con5_04re,con5_05re,con5_06re,con5_07re ;
wire [length-1:0] con5_08re,con5_09re,con5_10re,con5_11re,con5_12re,con5_13re,con5_14re,con5_15re ;
wire [length-1:0] con5_16re,con5_17re,con5_18re,con5_19re,con5_20re,con5_21re,con5_22re,con5_23re ;
wire [length-1:0] con5_24re,con5_25re,con5_26re,con5_27re,con5_28re,con5_29re,con5_30re,con5_31re ;

wire [length-1:0] con5_00im,con5_01im,con5_02im,con5_03im,con5_04im,con5_05im,con5_06im,con5_07im ;
wire [length-1:0] con5_08im,con5_09im,con5_10im,con5_11im,con5_12im,con5_13im,con5_14im,con5_15im ;
wire [length-1:0] con5_16im,con5_17im,con5_18im,con5_19im,con5_20im,con5_21im,con5_22im,con5_23im ;
wire [length-1:0] con5_24im,con5_25im,con5_26im,con5_27im,con5_28im,con5_29im,con5_30im,con5_31im ;

MAC2_Controlled#(.length(length)) MAC_C17(
.clk(clk_100M), .rst(rst),
.d1_real(con44_00re), .d2_real(con44_16re), .d3_real(con44_01re), .d4_real(con44_17re),
.d1_imag(con44_00im), .d2_imag(con44_16im), .d3_imag(con44_01im), .d4_imag(con44_17im),

.d5_real(con44_02re), .d6_real(con44_18re), .d7_real(con44_03re), .d8_real(con44_19re),
.d5_imag(con44_02im), .d6_imag(con44_18im), .d7_imag(con44_03im), .d8_imag(con44_19im),

.w1_real(24'h000_fb1), .w2_real(24'h000_ec7), .w3_real(24'h000_d4d), .w4_real(24'h000_b50),
.w1_imag(24'h000_31f), .w2_imag(24'h000_61f), .w3_imag(24'h000_8e3), .w4_imag(24'h000_b50),

.out1_real(con5_00re), .out2_real(con5_16re),
.out1_imag(con5_00im), .out2_imag(con5_16im),

.out3_real(con5_01re), .out4_real(con5_17re),
.out3_imag(con5_01im), .out4_imag(con5_17im),

.out5_real(con5_02re), .out6_real(con5_18re),
.out5_imag(con5_02im), .out6_imag(con5_18im),

.out7_real(con5_03re), .out8_real(con5_19re),
.out7_imag(con5_03im), .out8_imag(con5_19im) 
);

MAC2_Controlled#(.length(length)) MAC_C18(
.clk(clk_100M), .rst(rst),
.d1_real(con44_04re), .d2_real(con44_20re), .d3_real(con44_05re), .d4_real(con44_21re),
.d1_imag(con44_04im), .d2_imag(con44_20im), .d3_imag(con44_05im), .d4_imag(con44_21im),

.d5_real(con44_06re), .d6_real(con44_22re), .d7_real(con44_07re), .d8_real(con44_23re),
.d5_imag(con44_06im), .d6_imag(con44_22im), .d7_imag(con44_07im), .d8_imag(con44_23im),

.w1_real(24'h000_8e3), .w2_real(24'h000_61f), .w3_real(24'h000_31f), .w4_real(24'h000_000),
.w1_imag(24'h000_d4d), .w2_imag(24'h000_ec7), .w3_imag(24'h000_fb1), .w4_imag(24'h001_000),

.out1_real(con5_04re), .out2_real(con5_20re),
.out1_imag(con5_04im), .out2_imag(con5_20im),

.out3_real(con5_05re), .out4_real(con5_21re),
.out3_imag(con5_05im), .out4_imag(con5_21im),

.out5_real(con5_06re), .out6_real(con5_22re),
.out5_imag(con5_06im), .out6_imag(con5_22im),

.out7_real(con5_07re), .out8_real(con5_23re),
.out7_imag(con5_07im), .out8_imag(con5_23im) 
);

MAC2_Controlled#(.length(length)) MAC_C19(
.clk(clk_100M), .rst(rst),
.d1_real(con44_08re), .d2_real(con44_24re), .d3_real(con44_09re), .d4_real(con44_25re),
.d1_imag(con44_08im), .d2_imag(con44_24im), .d3_imag(con44_09im), .d4_imag(con44_25im),

.d5_real(con44_10re), .d6_real(con44_26re), .d7_real(con44_11re), .d8_real(con44_27re),
.d5_imag(con44_10im), .d6_imag(con44_26im), .d7_imag(con44_11im), .d8_imag(con44_27im),

.w1_real(24'hfff_ce1), .w2_real(24'hfff_9e1), .w3_real(24'hfff_71d), .w4_real(24'hfff_4b0),
.w1_imag(24'h000_fb1), .w2_imag(24'h000_ec7), .w3_imag(24'h000_d4d), .w4_imag(24'h000_b50),

.out1_real(con5_08re), .out2_real(con5_24re),
.out1_imag(con5_08im), .out2_imag(con5_24im),

.out3_real(con5_09re), .out4_real(con5_25re),
.out3_imag(con5_09im), .out4_imag(con5_25im),

.out5_real(con5_10re), .out6_real(con5_26re),
.out5_imag(con5_10im), .out6_imag(con5_26im),

.out7_real(con5_11re), .out8_real(con5_27re),
.out7_imag(con5_11im), .out8_imag(con5_27im) 
);

MAC2_Controlled#(.length(length)) MAC_C120(
.clk(clk_100M), .rst(rst),
.d1_real(con44_12re), .d2_real(con44_28re), .d3_real(con44_13re), .d4_real(con44_29re),
.d1_imag(con44_12im), .d2_imag(con44_28im), .d3_imag(con44_13im), .d4_imag(con44_29im),

.d5_real(con44_14re), .d6_real(con44_30re), .d7_real(con44_15re), .d8_real(con44_31re),
.d5_imag(con44_14im), .d6_imag(con44_30im), .d7_imag(con44_15im), .d8_imag(con44_31im),

.w1_real(24'hfff_2b3), .w2_real(24'hfff_138), .w3_real(24'hfff_04e), .w4_real(24'hfff_000),
.w1_imag(24'h000_8e3), .w2_imag(24'h000_61f), .w3_imag(24'h000_31f), .w4_imag(24'h000_000),

.out1_real(con5_12re), .out2_real(con5_28re),
.out1_imag(con5_12im), .out2_imag(con5_28im),

.out3_real(con5_13re), .out4_real(con5_29re),
.out3_imag(con5_13im), .out4_imag(con5_29im),

.out5_real(con5_14re), .out6_real(con5_30re),
.out5_imag(con5_14im), .out6_imag(con5_30im),

.out7_real(con5_15re), .out8_real(con5_31re),
.out7_imag(con5_15im), .out8_imag(con5_31im) 
);

Register_Bank#(.length(length)) RB5(
.clk(clk_25M), .rst(rst),
.in0_re(con5_00re),.in1_re(con5_01re),.in2_re(con5_02re),.in3_re(con5_03re),.in4_re(con5_04re),.in5_re(con5_05re),.in6_re(con5_06re),.in7_re(con5_07re),.in8_re(con5_08re),.in9_re(con5_09re),.in10_re(con5_10re),
.in11_re(con5_11re),.in12_re(con5_12re),.in13_re(con5_13re),.in14_re(con5_14re),.in15_re(con5_15re),.in16_re(con5_16re),.in17_re(con5_17re),.in18_re(con5_18re),.in19_re(con5_19re),.in20_re(con5_20re),
.in21_re(con5_21re),.in22_re(con5_22re),.in23_re(con5_23re),.in24_re(con5_24re),.in25_re(con5_25re),.in26_re(con5_26re),.in27_re(con5_27re),.in28_re(con5_28re),.in29_re(con5_29re),.in30_re(con5_30re),.in31_re(con5_31re),

.in0_im(con5_00im),.in1_im(con5_01im),.in2_im(con5_02im),.in3_im(con5_03im),.in4_im(con5_04im),.in5_im(con5_05im),.in6_im(con5_06im),.in7_im(con5_07im),.in8_im(con5_08im),.in9_im(con5_09im),.in10_im(con5_10im),
.in11_im(con5_11im),.in12_im(con5_12im),.in13_im(con5_13im),.in14_im(con5_14im),.in15_im(con5_15im),.in16_im(con5_16im),.in17_im(con5_17im),.in18_im(con5_18im),.in19_im(con5_19im),.in20_im(con5_20im),
.in21_im(con5_21im),.in22_im(con5_22im),.in23_im(con5_23im),.in24_im(con5_24im),.in25_im(con5_25im),.in26_im(con5_26im),.in27_im(con5_27im),.in28_im(con5_28im),.in29_im(con5_29im),.in30_im(con5_30im),.in31_im(con5_31im),

.out0_re(out0_re),.out1_re(out1_re),.out2_re(out2_re),.out3_re(out3_re),.out4_re(out4_re),.out5_re(out5_re),.out6_re(out6_re),.out7_re(out7_re),.out8_re(out8_re),.out9_re(out9_re),
.out10_re(out10_re),.out11_re(out11_re),.out12_re(out12_re),.out13_re(out13_re),.out14_re(out14_re),.out15_re(out15_re),.out16_re(out16_re),.out17_re(out17_re),.out18_re(out18_re),
.out19_re(out19_re),.out20_re(out20_re),.out21_re(out21_re),.out22_re(out22_re),.out23_re(out23_re),.out24_re(out24_re),.out25_re(out25_re),.out26_re(out26_re),.out27_re(out27_re),
.out28_re(out28_re),.out29_re(out29_re),.out30_re(out30_re),.out31_re(out31_re),

.out0_im(out0_im),.out1_im(out1_im),.out2_im(out2_im),.out3_im(out3_im),.out4_im(out4_im),.out5_im(out5_im),.out6_im(out6_im),.out7_im(out7_im),.out8_im(out8_im),.out9_im(out9_im),
.out10_im(out10_im),.out11_im(out11_im),.out12_im(out12_im),.out13_im(out13_im),.out14_im(out14_im),.out15_im(out15_im),.out16_im(out16_im),.out17_im(out17_im),.out18_im(out18_im),
.out19_im(out19_im),.out20_im(out20_im),.out21_im(out21_im),.out22_im(out22_im),.out23_im(out23_im),.out24_im(out24_im),.out25_im(out25_im),.out26_im(out26_im),.out27_im(out27_im),
.out28_im(out28_im),.out29_im(out29_im),.out30_im(out30_im),.out31_im(out31_im)
    );
    
endmodule















