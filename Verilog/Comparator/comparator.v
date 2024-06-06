module comparator (
    input A3,A2,A1,A0,B3,B2,B1,B0,
    output g,e,l
);
    // A = B
    wire xn0,xn1,xn2,xn3;
    xnor exn1(xn0,A0,B0);
    xnor exn2(xn1,A1,B1);
    xnor exn3(xn2,A2,B2);
    xnor exn4(xn3,A3,B3);
    and a7(e,xn0,xn1,xn2,xn3);

    // A > B
    wire an0,an1,an2,an3,b0,b1,b2,b3;
    not n1(b0,B0);
    not n2(b1,B1);
    not n3(b2,B2);
    not n4(b3,B3);
    nand na1(an0,A3,b3);
    nand na2(an1,xn3,A2,b2);
    nand na3(an2,xn3,xn2,A1,b1);
    nand na4(an3,xn3,xn2,xn1,A0,b0);
    nand na5(g,an0,an1,an2,an3);

    // A < B
    nor(l,e,g);
endmodule