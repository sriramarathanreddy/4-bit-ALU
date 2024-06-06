* SPICE3 file created from decoder.ext - technology: scmos

.include TSMC_180nm.txt
.param SUPPLY = 1.8
.global Gnd
Vdd VDD Gnd 'SUPPLY'

.option scale=0.09u

vinS0 S0 Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 5n 10n)
VinS1 S1 Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10n 20n)

M1000 D3 a_518_n239# VDD w_610_n254# CMOSP w=20 l=2
+  ad=220 pd=62 as=3080 ps=868
M1001 a_518_n239# S1 a_531_n291# Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=440 ps=124
M1002 D0 a_334_n96# VDD w_426_n111# CMOSP w=20 l=2
+  ad=220 pd=62 as=0 ps=0
M1003 a_519_n96# S1not a_532_n148# Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=440 ps=124
M1004 D2 a_333_n239# VDD w_425_n254# CMOSP w=20 l=2
+  ad=220 pd=62 as=0 ps=0
M1005 S0not S0 Gnd Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=2200 ps=620
M1006 a_519_n96# S1not VDD VDD CMOSP w=20 l=2
+  ad=440 pd=124 as=0 ps=0
M1007 a_346_n291# S0not Gnd Gnd CMOSN w=20 l=4
+  ad=440 pd=124 as=0 ps=0
M1008 a_334_n96# S0not VDD VDD CMOSP w=20 l=2
+  ad=440 pd=124 as=0 ps=0
M1009 a_347_n148# S0not Gnd Gnd CMOSN w=20 l=4
+  ad=440 pd=124 as=0 ps=0
M1010 a_518_n239# S0 VDD VDD CMOSP w=20 l=2
+  ad=440 pd=124 as=0 ps=0
M1011 a_334_n96# S1not VDD VDD CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1012 a_519_n96# S0 VDD VDD CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1013 a_333_n239# S1 a_346_n291# Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=0 ps=0
M1014 D1 a_519_n96# Gnd Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=0 ps=0
M1015 a_334_n96# S1not a_347_n148# Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=0 ps=0
M1016 a_518_n239# S1 VDD VDD CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1017 D3 a_518_n239# Gnd Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=0 ps=0
M1018 D0 a_334_n96# Gnd Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=0 ps=0
M1019 S0not S0 VDD VDD CMOSP w=20 l=2
+  ad=220 pd=62 as=0 ps=0
M1020 a_333_n239# S0not VDD VDD CMOSP w=20 l=2
+  ad=440 pd=124 as=0 ps=0
M1021 D2 a_333_n239# Gnd Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=0 ps=0
M1022 S1not S1 VDD VDD CMOSP w=20 l=2
+  ad=220 pd=62 as=0 ps=0
M1023 a_333_n239# S1 VDD VDD CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1024 a_531_n291# S0 Gnd Gnd CMOSN w=20 l=4
+  ad=0 pd=0 as=0 ps=0
M1025 S1not S1 Gnd Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=0 ps=0
M1026 D1 a_519_n96# VDD w_611_n111# CMOSP w=20 l=2
+  ad=220 pd=62 as=0 ps=0
M1027 a_532_n148# S0 Gnd Gnd CMOSN w=20 l=4
+  ad=0 pd=0 as=0 ps=0
C0 S1 VDD 0.40fF
C1 D3 VDD 0.21fF
C2 a_519_n96# S1not 0.47fF
C3 a_347_n148# S0not 0.19fF
C4 Gnd S0 0.31fF
C5 S1 S0not 0.25fF
C6 a_518_n239# w_610_n254# 0.06fF
C7 VDD w_426_n111# 0.06fF
C8 a_532_n148# S0 0.19fF
C9 D3 w_610_n254# 0.06fF
C10 Gnd D1 0.14fF
C11 a_334_n96# VDD 0.67fF
C12 D2 Gnd 0.14fF
C13 S0 VDD 0.40fF
C14 a_346_n291# Gnd 0.21fF
C15 a_532_n148# Gnd 0.21fF
C16 S0not a_334_n96# 0.10fF
C17 S1 a_333_n239# 0.47fF
C18 D1 VDD 0.21fF
C19 S0 S0not 0.54fF
C20 D2 w_425_n254# 0.06fF
C21 Gnd VDD 0.09fF
C22 D2 VDD 0.21fF
C23 a_519_n96# S0 0.10fF
C24 Gnd S0not 0.54fF
C25 VDD w_425_n254# 0.06fF
C26 a_346_n291# S0not 0.19fF
C27 S1 S1not 1.43fF
C28 S0not VDD 0.47fF
C29 a_531_n291# a_518_n239# 0.21fF
C30 a_532_n148# a_519_n96# 0.21fF
C31 w_610_n254# VDD 0.06fF
C32 S1 a_518_n239# 0.47fF
C33 a_346_n291# a_333_n239# 0.21fF
C34 D1 w_611_n111# 0.06fF
C35 S1not a_334_n96# 0.47fF
C36 a_519_n96# VDD 0.67fF
C37 S0 S1not 0.10fF
C38 a_333_n239# w_425_n254# 0.06fF
C39 D0 w_426_n111# 0.06fF
C40 a_333_n239# VDD 0.67fF
C41 a_347_n148# a_334_n96# 0.21fF
C42 Gnd S1not 0.42fF
C43 a_518_n239# S0 0.10fF
C44 a_333_n239# S0not 0.10fF
C45 VDD w_611_n111# 0.06fF
C46 a_531_n291# S0 0.19fF
C47 a_334_n96# w_426_n111# 0.06fF
C48 Gnd a_347_n148# 0.21fF
C49 D0 Gnd 0.14fF
C50 S1not VDD 0.57fF
C51 a_531_n291# Gnd 0.21fF
C52 S1 Gnd 0.21fF
C53 D3 Gnd 0.14fF
C54 a_519_n96# w_611_n111# 0.06fF
C55 S1not S0not 0.16fF
C56 a_518_n239# VDD 0.67fF
C57 D0 VDD 0.21fF
C58 a_531_n291# Gnd 0.20fF
C59 a_346_n291# Gnd 0.20fF
C60 D3 Gnd 0.09fF
C61 a_518_n239# Gnd 0.27fF
C62 D2 Gnd 0.07fF
C63 a_333_n239# Gnd 0.78fF
C64 S1 Gnd 5.17fF
C65 a_532_n148# Gnd 0.20fF
C66 D1 Gnd 0.13fF
C67 a_519_n96# Gnd 0.78fF
C68 a_347_n148# Gnd 0.20fF
C69 Gnd Gnd 4.86fF
C70 D0 Gnd 0.13fF
C71 a_334_n96# Gnd 0.78fF
C72 S0not Gnd 5.98fF
C73 S1not Gnd 5.09fF
C74 S0 Gnd 11.35fF
C75 w_610_n254# Gnd 1.16fF
C76 w_425_n254# Gnd 1.16fF
C77 w_611_n111# Gnd 1.16fF
C78 w_426_n111# Gnd 1.16fF
C79 VDD Gnd 15.49fF

.tran 1n 20n
.control
run
set color0 = white
set color1 = black
plot v(D3) v(D2)+2 v(D1)+4 v(D0)+6 v(S0)+8 v(S1)+10
.endc
.end