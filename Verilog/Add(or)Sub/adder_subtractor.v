module adder_subtractor (
    input A3,A2,A1,A0,B3,B2,B1,B0,M,
    output carry,out3,out2,out1,out0
);
    wire c0,c1,c2,c3;
    wire m0,m1,m2,m3;

    xor ex1(m0,B0,M);
    xor ex2(m1,B1,M);
    xor ex3(m2,B2,M);
    xor ex4(m3,B3,M);

    fulladder FA1(A0,m0,M,out0,c0);
    fulladder FA2(A1,m1,c0,out1,c1);
    fulladder FA3(A2,m2,c1,out2,c2);
    fulladder FA4(A3,m3,c2,out3,carry);
endmodule

module fulladder (
    input a,b,cin,
    output sout,cout
);
    wire s1,c1,c2,c3;

    xor ex5(s1,a,b);
    xor ex6(sout,s1,cin);
    and a5(c1,a,b);
    and a6(c2,s1,cin);
    or r1(cout,c1,c2);
endmodule