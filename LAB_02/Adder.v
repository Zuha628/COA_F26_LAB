module half_adder(a,b,sum,carry);
input a,b;
output sum,carry;
assign sum=a^b;
assign carry=a&b;
endmodule
module full_adder(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
wire s1,c1,c2;
half_adder ha1(a,b,s1,c1);
half_adder ha2(s1,c,sum,c2);
or(carry,c1,c2);
endmodule
module full_adder_tb;
reg a;
reg b;
reg c;
wire sum;
wire carry;

full_adder uut(a,b,c,sum,carry);
initial 
 begin
a=0;b=0;c=0;
#50;
a=0;b=0;b=1;
#50;
a=0;b=1;c=0;
#50
a=0;b=1;c=1;
#50
a=1;b=0;c=0;
#50;
a=1;b=0;b=1;
#50;
a=1;b=1;c=0;
#50
a=1;b=1;c=1;
end
endmodule

