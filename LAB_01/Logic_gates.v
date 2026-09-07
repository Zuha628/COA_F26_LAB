module Logic_gates(a,b,c);
input a;
input b;
output c;
assign c=~(a&b);
endmodule
module testbench();
 reg x;
 reg y;
wire z;
Logic_gates uut(x,z);
initial
begin
x=0;y=0;
#50
x=0; y=1;
#50
x=1; y=0;
#50
x=1; y=1;
end
endmodule

