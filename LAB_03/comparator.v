module comparator(a,b,g,e,l);
input [1:0]a;
input [1:0]b;
output reg g;
output reg e;
output reg l;
always @*
begin
g=2'b00;
l=2'b00;
e=2'b00;
if(a>b)
g=1;
else if(a==b)
e=1;
else
l=1;
end
endmodule;
module comparator_tb;
reg [1:0]a;
reg [1:0]b;
wire g,e,l;
comparator uut(
.a(a),
.b(b),
.g(g),
.l(l),
.e(e)
);
initial
begin
a=2'b00;
b=2'b01;
#50;
a=2'b11;
b=2'b01;
#50;
a=2'b01;
b=2'b01;
#50;
a=2'b10;
b=2'b01;
#50;
end
endmodule

