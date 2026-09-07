module add_sub(a,b,c,ct);
input [3:0]a;
input [3:0]b;
input ct;
output reg [3:0]c;
always @ *
begin
if (ct==0)
c=a+b;
else
c=a-b;
end
endmodule

module add_sub_tb;
reg [3:0]a;
reg [3:0]b;
reg ct;
wire [3:0]c;
add_sub uut(
.a(a),
.b(b),
.ct(ct),
.c(c)

);
initial
begin 
a=4'b0010;
b=4'b0001;
ct=0;
#50;
a=4'b0010;
b=4'b0001;
ct=1;
#50;
a=4'b1010;
b=4'b0001;
ct=0;
#50;
a=4'b1010;
b=4'b0001;
ct=1;
#50;
a=4'b1010;
b=4'b0011;
ct=0;
#50;
a=4'b1010;
b=4'b0011;
ct=1;
#50;
end
endmodule


		
