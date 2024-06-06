module and_4bit (
    input A3,A2,A1,A0,B3,B2,B1,B0,
    output out3,out2,out1,out0
);

    and a1(out0,A0,B0);
    and a2(out1,A1,B1);
    and a3(out2,A2,B2);
    and a4(out3,A3,B3);

endmodule