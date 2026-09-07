module mux8to1_gate(
    I0, I1, I2, I3, I4, I5, I6, I7,
    SEL2, SEL1, SEL0, OUT
);

input I0, I1, I2, I3, I4, I5, I6, I7;
input SEL2, SEL1, SEL0;
output OUT;

wire NSEL2, NSEL1, NSEL0;
wire W0, W1, W2, W3, W4, W5, W6, W7;
not (NSEL2, SEL2);
not (NSEL1, SEL1);
not (NSEL0, SEL0);
and (W0, NSEL2, NSEL1, NSEL0, I0);
and (W1, NSEL2, NSEL1, SEL0,  I1);
and (W2, NSEL2, SEL1,  NSEL0, I2);
and (W3, NSEL2, SEL1,  SEL0,  I3);
and (W4, SEL2,  NSEL1, NSEL0, I4);
and (W5, SEL2,  NSEL1, SEL0,  I5);
and (W6, SEL2, SEL1,  NSEL0, I6);
and (W7, SEL2, SEL1,  SEL0,  I7);
or (OUT, W0, W1, W2, W3, W4, W5, W6, W7);

endmodule


module mux8to1_gate_tb;

reg IN0, IN1, IN2, IN3, IN4, IN5, IN6, IN7;
reg SEL0_TB, SEL1_TB, SEL2_TB;
wire OUT_TB;

mux8to1_gate uut(
    IN0, IN1, IN2, IN3, IN4, IN5, IN6, IN7,
    SEL2_TB, SEL1_TB, SEL0_TB, OUT_TB
);

initial
begin
    IN0=0; IN1=1; IN2=0; IN3=1;
    IN4=0; IN5=1; IN6=0; IN7=1;

    SEL2_TB=0; SEL1_TB=0; SEL0_TB=0;
    #50;

    SEL2_TB=0; SEL1_TB=0; SEL0_TB=1;
    #50;

    SEL2_TB=0; SEL1_TB=1; SEL0_TB=0;
    #50;

    SEL2_TB=0; SEL1_TB=1; SEL0_TB=1;
    #50;

    SEL2_TB=1; SEL1_TB=0; SEL0_TB=0;
    #50;

    SEL2_TB=1; SEL1_TB=0; SEL0_TB=1;
    #50;

    SEL2_TB=1; SEL1_TB=1; SEL0_TB=0;
    #50;

    SEL2_TB=1; SEL1_TB=1; SEL0_TB=1;
    #50;
end

endmodule
