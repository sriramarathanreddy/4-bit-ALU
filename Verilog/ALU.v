`include "Enable/2:4_decoder.v"
`include "Enable/Enable.v"
`include "Add(or)Sub/adder_subtractor.v"
`include "Comparator/comparator.v"
`include "AND/and_4bit.v"

module ALU (
    // input EN,
    input A3,A2,A1,A0,B3,B2,B1,B0,S1,S0,
    output OASC,OAS3,OAS2,OAS1,OAS0,OCg,OCe,OCl,OA3,OA2,OA1,OA0
);
    wire das,D0,D1,D2,D3;
    decoder d1(S0,S1,D0,D1,D2,D3);

    or r2(das,D0,D1);
    wire inas0,inas1,inas2,inas3,inas4,inas5,inas6,inas7;
    Enable E1(/*EN,*/das,A3,A2,A1,A0,B3,B2,B1,B0,inas0,inas1,inas2,inas3,inas4,inas5,inas6,inas7);
    adder_subtractor AS(inas3,inas2,inas1,inas0,inas7,inas6,inas5,inas4,D1,OASC,OAS3,OAS2,OAS1,OAS0);

    wire inc0,inc1,inc2,inc3,inc4,inc5,inc6,inc7,un_e;
    Enable E2(/*EN,*/D2,A3,A2,A1,A0,B3,B2,B1,B0,inc0,inc1,inc2,inc3,inc4,inc5,inc6,inc7);
    comparator C(inc3,inc2,inc1,inc0,inc7,inc6,inc5,inc4,OCg,un_e,OCl);
    and a25 (OCe,D2,un_e);

    wire ina0,ina1,ina2,ina3,ina4,ina5,ina6,ina7;
    Enable E3(/*EN,*/D3,A3,A2,A1,A0,B3,B2,B1,B0,ina0,ina1,ina2,ina3,ina4,ina5,ina6,ina7);
    and_4bit A(ina3,ina2,ina1,ina0,ina7,ina6,ina5,ina4,OA3,OA2,OA1,OA0);

endmodule