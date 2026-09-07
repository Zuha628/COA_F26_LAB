module decoder3x8(a, b, c, en, y0, y1, y2, y3, y4, y5, y6, y7);
input a, b, c, en;
output y0, y1, y2, y3, y4, y5, y6, y7;
wire na, nb, nc;
assign na=~a;
assign nb=~b;
assign nc=~c;
assign y0=en&na&nb&nc;
assign y1=en&na&nb&c;
assign y2=en&na&b&nc;
assign y3=en&na&b&c;
assign y4=en&a&nb&nc;
assign y5=en&a&nb&c;
assign y6=en&a&b&nc;
assign y7=en&a&b&c;
endmodule

module decoder_tb;
reg a;
reg b;
reg c;
reg en;
wire y0, y1, y2, y3;
wire y4, y5, y6, y7;
decoder3x8 uut(a, b, c, en,y0, y1, y2, y3,y4, y5, y6, y7);
initial
begin
en=0; a=0; b=0; c=0;
#50;
en=1; a=0; b=0; c=0;
#50;
a=0; b=0; c=1;
#50;
a=0; b=1; c=0;
#50;
a=0; b=1; c=1;
#50;
a=1; b=0; c=0;
#50;
a=1; b=0; c=1;
#50;
a=1; b=1; c=0;
#50;
a=1; b=1; c=1;
#50;
en=0;
#50;
end
endmodule