* SPICE3 file created from decoder.ext - technology: scmos

.include TSMC_180nm.txt
.param SUPPLY = 1.8
.global Gnd
Vdd VDD Gnd 'SUPPLY'

.option scale=0.09u

vinS0 S0 Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 5n 10n)
VinS1 S1 Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10n 20n)

M1000 S1not S1 VDD w_154_n20# CMOSP w=20 l=2
+  ad=220 pd=62 as=3080 ps=868
M1001 D1 a_231_n96# VDD w_323_n111# CMOSP w=20 l=2
+  ad=220 pd=62 as=0 ps=0
M1002 a_401_n96# S1not a_414_n148# Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=440 ps=124
M1003 a_231_n96# S1not VDD VDD CMOSP w=20 l=2
+  ad=440 pd=124 as=0 ps=0
M1004 D3 a_231_42# VDD w_323_27# CMOSP w=20 l=2
+  ad=220 pd=62 as=0 ps=0
M1005 a_414_n10# S0not Gnd Gnd CMOSN w=20 l=4
+  ad=440 pd=124 as=2200 ps=620
M1006 a_244_n148# S0 Gnd Gnd CMOSN w=20 l=4
+  ad=440 pd=124 as=0 ps=0
M1007 a_231_n96# S0 VDD VDD CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1008 a_231_42# S0 VDD VDD CMOSP w=20 l=2
+  ad=440 pd=124 as=0 ps=0
M1009 D2 a_401_42# VDD w_493_27# CMOSP w=20 l=2
+  ad=220 pd=62 as=0 ps=0
M1010 S0not S0 Gnd Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=0 ps=0
M1011 a_231_42# S1 a_244_n10# Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=440 ps=124
M1012 D0 a_401_n96# Gnd Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=0 ps=0
M1013 a_401_42# S1 VDD VDD CMOSP w=20 l=2
+  ad=440 pd=124 as=0 ps=0
M1014 a_401_42# S0not VDD VDD CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1015 D3 a_231_42# Gnd Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=0 ps=0
M1016 S0not S0 VDD w_154_n158# CMOSP w=20 l=2
+  ad=220 pd=62 as=0 ps=0
M1017 a_231_n96# S1not a_244_n148# Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=0 ps=0
M1018 D0 a_401_n96# VDD w_493_n111# CMOSP w=20 l=2
+  ad=220 pd=62 as=0 ps=0
M1019 a_231_42# S1 VDD VDD CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1020 a_401_42# S1 a_414_n10# Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=0 ps=0
M1021 D2 a_401_42# Gnd Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=0 ps=0
M1022 a_401_n96# S0not VDD VDD CMOSP w=20 l=2
+  ad=440 pd=124 as=0 ps=0
M1023 a_401_n96# S1not VDD VDD CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1024 S1not S1 Gnd Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=0 ps=0
M1025 a_244_n10# S0 Gnd Gnd CMOSN w=20 l=4
+  ad=0 pd=0 as=0 ps=0
M1026 a_414_n148# S0not Gnd Gnd CMOSN w=20 l=4
+  ad=0 pd=0 as=0 ps=0
M1027 D1 a_231_n96# Gnd Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=0 ps=0
C0 VDD S1 0.13fF
C1 D0 VDD 0.21fF
C2 VDD D2 0.21fF
C3 a_231_n96# VDD 0.67fF
C4 VDD w_154_n158# 0.06fF
C5 VDD w_154_n20# 0.06fF
C6 a_231_n96# a_244_n148# 0.21fF
C7 a_414_n10# Gnd 0.21fF
C8 a_231_42# S1 0.29fF
C9 S0 VDD 0.13fF
C10 a_414_n10# a_401_42# 0.21fF
C11 a_401_n96# w_493_n111# 0.06fF
C12 VDD w_323_27# 0.06fF
C13 a_231_n96# w_323_n111# 0.06fF
C14 w_493_27# a_401_42# 0.06fF
C15 a_414_n148# Gnd 0.21fF
C16 a_401_n96# a_414_n148# 0.21fF
C17 VDD Gnd 2.30fF
C18 a_401_n96# VDD 0.67fF
C19 a_231_n96# S1not 0.29fF
C20 S0not w_154_n158# 0.06fF
C21 S0 a_231_42# 0.16fF
C22 VDD a_401_42# 0.67fF
C23 w_323_27# D3 0.06fF
C24 w_323_27# a_231_42# 0.06fF
C25 VDD w_493_n111# 0.06fF
C26 a_244_n148# Gnd 0.21fF
C27 S1not w_154_n20# 0.06fF
C28 VDD w_493_27# 0.06fF
C29 a_244_n10# Gnd 0.21fF
C30 D1 Gnd 0.14fF
C31 D3 Gnd 0.14fF
C32 w_154_n20# S1 0.06fF
C33 S0not Gnd 0.21fF
C34 a_401_n96# S0not 0.16fF
C35 S1not Gnd 0.21fF
C36 S0not a_401_42# 0.16fF
C37 a_231_n96# S0 0.16fF
C38 a_401_n96# S1not 0.29fF
C39 D1 VDD 0.21fF
C40 S0 w_154_n158# 0.06fF
C41 VDD D3 0.21fF
C42 VDD a_231_42# 0.67fF
C43 VDD w_323_n111# 0.06fF
C44 D0 Gnd 0.14fF
C45 D2 Gnd 0.14fF
C46 a_401_42# S1 0.29fF
C47 S0not VDD 0.34fF
C48 a_231_42# a_244_n10# 0.21fF
C49 D0 w_493_n111# 0.06fF
C50 S1not VDD 0.34fF
C51 D1 w_323_n111# 0.06fF
C52 w_493_27# D2 0.06fF
C53 S0not Gnd 0.83fF
C54 S0 Gnd 1.15fF
C55 S1not Gnd 0.91fF
C56 a_244_n148# Gnd 0.22fF
C57 D0 Gnd 0.13fF
C58 a_401_n96# Gnd 0.80fF
C59 D1 Gnd 0.13fF
C60 a_231_n96# Gnd 0.80fF
C61 a_414_n10# Gnd 0.22fF
C62 S1 Gnd 0.92fF
C63 Gnd Gnd 0.26fF
C64 a_244_n10# Gnd 0.22fF
C65 D2 Gnd 0.03fF
C66 a_401_42# Gnd 0.17fF
C67 D3 Gnd 0.11fF
C68 a_231_42# Gnd 0.47fF
C69 w_154_n158# Gnd 1.16fF
C70 w_493_n111# Gnd 0.17fF
C71 w_154_n20# Gnd 1.16fF
C72 w_493_27# Gnd 0.93fF
C73 VDD Gnd 12.68fF

.tran 1n 20n
.control
run
set color0 = white
set color1 = black
plot v(D3) v(D2)+2 v(D1)+4 v(D0)+6 v(S1)+8 v(S0)+10
.endc
.end