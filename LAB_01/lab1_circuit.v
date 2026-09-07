module Lab1_circuit(a,b,g);
input a;
input b;
output g;
wire c,d,e,f;
not (c,a);
not (d,b);
and (e,c,b);
and (f,a,d);
or (g,e,f);
endmodule
module Lab1_circuit_tb();
 reg x;
 reg y;
wire z;
Lab1_circuit uut(x,y,z);
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

