module decoder (
    input S0,S1,
    output D0,D1,D2,D3
);
    wire s0,s1;

    not n7(s0,S0);
    not n8(s1,S1);
    and a8(D3,S0,S1);
    and a9(D2,s0,S1);
    and a10(D1,S0,s1);
    and a11(D0,s0,s1);

endmodule