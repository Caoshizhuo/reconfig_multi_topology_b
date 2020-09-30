module reconfig_multi_topology_b(
input[7:0]					a1,
input[7:0]					a2,
input[7:0]					b,

input							s0,
input							s1,

output[8:0]					y

);


//reg wire define here
wire									carry_0;
wire									carry_1;
wire									carry_2;
wire									carry_3;
wire									carry_4;
wire									carry_5;
wire									carry_6;
wire									carry_7;
wire									lut_out0;
wire									lut_out1;
wire									lut_out2;
wire									lut_out3;
wire									lut_out4;
wire									lut_out5;
wire									lut_out6;
wire									lut_out7;
wire									lut_b_out0;
wire									lut_b_out1;
wire									lut_b_out2;
wire									lut_b_out3;
wire									lut_b_out4;
wire									lut_b_out5;
wire									lut_b_out6;
wire									lut_b_out7;
wire									f0;
wire									f1;
wire									f2;
wire									f3;
wire									f4;
wire									f5;
wire									f6;
wire									f7;
wire[2:0]							sigma;


//sigmas_s logic   
assign sigma  =	(s0==0 & s1==0) 	?	3'd0:
						(s0==0 & s1==1)	?	3'd1:
						(s0==1 & s1==0)	?	3'd2: 
						(s0==1 & s1==1)   ?  3'd4: 3'd0;
						
						
mux_5 mux_5_u_0(
.din_1(a1[0]),
.din_2(~a1[0]),
.din_3(a2[0]),
.din_4(~a2[0]),
.din_5(1'b0),
.sel(sigma),
.dout(lut_out0)
);


mux_5 mux_5_u_1(
.din_1(a1[1]),
.din_2(~a1[1]),
.din_3(a2[1]),
.din_4(~a2[1]),
.din_5(1'b0),
.sel(sigma),
.dout(lut_out1)
);

mux_5 mux_5_u_2(
.din_1(a1[2]),
.din_2(~a1[2]),
.din_3(a2[2]),
.din_4(~a2[2]),
.din_5(1'b0),
.sel(sigma),
.dout(lut_out2)
);
mux_5 mux_5_u_3(
.din_1(a1[3]),
.din_2(~a1[3]),
.din_3(a2[3]),
.din_4(~a2[3]),
.din_5(1'b0),
.sel(sigma),
.dout(lut_out3)
);
mux_5 mux_5_u_4(
.din_1(a1[4]),
.din_2(~a1[4]),
.din_3(a2[4]),
.din_4(~a2[4]),
.din_5(1'b0),
.sel(sigma),
.dout(lut_out4)
);
mux_5 mux_5_u_5(
.din_1(a1[5]),
.din_2(~a1[5]),
.din_3(a2[5]),
.din_4(~a2[5]),
.din_5(1'b0),
.sel(sigma),
.dout(lut_out5)
);
mux_5 mux_5_u_6(
.din_1(a1[6]),
.din_2(~a1[6]),
.din_3(a2[6]),
.din_4(~a2[6]),
.din_5(1'b0),
.sel(sigma),
.dout(lut_out6)
);
mux_5 mux_5_u_7(
.din_1(a1[7]),
.din_2(~a1[7]),
.din_3(a2[7]),
.din_4(~a2[7]),
.din_5(1'b0),
.sel(sigma),
.dout(lut_out7)
);						

//mux_logic for b select
mux_3 u_mux_3_0(
.din_1(b[0]),
.din_2(~b[0]),
.din_3(1'b0),
.sel(sigma),
.dout(lut_b_out0)
);
mux_3 u_mux_3_1(
.din_1(b[1]),
.din_2(~b[1]),
.din_3(1'b0),
.sel(sigma),
.dout(lut_b_out1)
);
mux_3 u_mux_3_2(
.din_1(b[2]),
.din_2(~b[2]),
.din_3(1'b0),
.sel(sigma),
.dout(lut_b_out2)
);
mux_3 u_mux_3_3(
.din_1(b[3]),
.din_2(~b[3]),
.din_3(1'b0),
.sel(sigma),
.dout(lut_b_out3)
);
mux_3 u_mux_3_4(
.din_1(b[4]),
.din_2(~b[4]),
.din_3(1'b0),
.sel(sigma),
.dout(lut_b_out4)
);
mux_3 u_mux_3_5(
.din_1(b[5]),
.din_2(~b[5]),
.din_3(1'b0),
.sel(sigma),
.dout(lut_b_out5)
);
mux_3 u_mux_3_6(
.din_1(b[6]),
.din_2(~b[6]),
.din_3(1'b0),
.sel(sigma),
.dout(lut_b_out6)
);
mux_3 u_mux_3_7(
.din_1(b[7]),
.din_2(~b[7]),
.din_3(1'b0),
.sel(sigma),
.dout(lut_b_out7)
);


assign f0 = lut_b_out0 ^ lut_out0;
assign f1 = lut_b_out1 ^ lut_out1;
assign f2 = lut_b_out2 ^ lut_out2;
assign f3 = lut_b_out3 ^ lut_out3;
assign f4 = lut_b_out4 ^ lut_out4;
assign f5 = lut_b_out5 ^ lut_out5;
assign f6 = lut_b_out6 ^ lut_out6;
assign f7 = lut_b_out7 ^ lut_out7; 


assign carry_0 =  f0	? 1'b0		: 	lut_out0;
assign carry_1 = 	f1	? carry_0 	:	lut_out1;
assign carry_2 = 	f2	? carry_1	:	lut_out2;
assign carry_3 = 	f3	? carry_2	:	lut_out3;
assign carry_4 = 	f4	? carry_3	:	lut_out4;
assign carry_5 = 	f5	? carry_4	:	lut_out5;
assign carry_6 = 	f6	? carry_5	:	lut_out6;
assign carry_7 = 	f7	? carry_6	:	lut_out7;


assign y[0] = f0 ^ 1'b0 ;
assign y[1] = f1 ^ carry_0;
assign y[2] = f2 ^ carry_1;
assign y[3] = f3 ^ carry_2;
assign y[4] = f4 ^ carry_3;
assign y[5] = f5 ^ carry_4;
assign y[6] = f6 ^ carry_5;
assign y[7] = f7 ^ carry_6;
assign y[8] = carry_7;










endmodule 