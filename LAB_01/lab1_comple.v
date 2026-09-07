module Lab1_complem(a,b);
input [3:0] a;
output [3:0] b;
assign b=~a;
endmodule
module Lab1_complem_tb;
reg [3:0] a;
wire [3:0] b;
Lab1_complem uut(a, b);
initial
begin
    a = 4'b0000;
    #50;
    a = 4'b0001;
    #50;
    a = 4'b0101;
    #50;
    a = 4'b1010;
    #50;
    a = 4'b1111;
end
endmodule
