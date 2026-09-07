module mux2x1(a,b,c,s);
input a,b,s;
output reg c;
always @*
begin
 if(s==0)
    c=a&b;
 else
    c=a|b;
end
endmodule

module mux2x1_tb;
reg a,b,s;
wire c;
mux2x1 uut(
.a(a),
.b(b),
.s(s),
.c(c)
 );
initial
 begin
   a=0;
   b=1;
   s=0;
#50;
   a=0;
   b=1;
   s=1;
#50;
   a=1;
   b=1;
   s=0;
#50;
   a=1;
   b=1;
   s=1;
#50;
   a=0;
   b=0;
   s=0;
#50;
   a=0;
   b=0;
   s=1;
#50;
 end
endmodule
