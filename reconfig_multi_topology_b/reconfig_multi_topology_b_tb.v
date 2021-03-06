`timescale 1 ns/ 1 ns

module reconfig_multi_topology_b_tb();


reg[7:0]					a1;
reg[7:0]					a2;
reg[7:0]					b;
reg						s0;
reg						s1;


initial begin
	a1 = 8'b1111_0000;//240
	a2 = 8'b0000_0001;//1
	b =8'b0011_1111;//63
	s0=1'b0;
	s1=1'b0;
	#10000;
	s0=1'b0;
	s1=1'b1;
	#10000;
	s0=1'b1;
	s1=1'b0;
	#10000;
	s0=1'b1;
	s1=1'b1;
	#10000;

end
wire[8:0]		y;
reconfig_multi_topology_b u_reconfig_multi_topology_b(
.a1(a1),
.a2(a2),
.b(b),
.s0(s0),
.s1(s1),
.y(y)
);
endmodule
