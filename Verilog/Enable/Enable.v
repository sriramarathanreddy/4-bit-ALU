module Enable (
    // input EN,
    input D,A3,A2,A1,A0,B3,B2,B1,B0,
    output in0,in1,in2,in3,in4,in5,in6,in7
);
    wire in0,in1,in2,in3,in4,in5,in6,in7;

    and a12(in0,/*EN,*/D,A0);
    and a13(in1,/*EN,*/D,A1);
    and a14(in2,/*EN,*/D,A2);
    and a15(in3,/*EN,*/D,A3);
    and a16(in4,/*EN,*/D,B0);
    and a17(in5,/*EN,*/D,B1);
    and a18(in6,/*EN,*/D,B2);
    and a19(in7,/*EN,*/D,B3);
endmodule