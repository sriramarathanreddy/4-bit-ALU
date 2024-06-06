* SPICE3 file created from XOR2.ext - technology: scmos

.include TSMC_180nm.txt
.param SUPPLY = 1.8
.global Gnd
Vdd VDD Gnd 'SUPPLY'

.option scale=0.09u

vinA A Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 5n 10n)
VinB B Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10n 20n)

M1000 Anot A VDD VDD CMOSP w=20 l=2
+  ad=440 pd=124 as=440 ps=124
M1001 OUT B Anot Gnd CMOSN w=20 l=4
+  ad=420 pd=122 as=440 ps=124
M1002 Bnot B VDD VDD CMOSP w=20 l=2
+  ad=220 pd=62 as=0 ps=0
M1003 Anot Bnot OUT w_212_28# CMOSP w=20 l=2
+  ad=0 pd=0 as=440 ps=124
M1004 Anot A Gnd Gnd CMOSN w=20 l=4
+  ad=0 pd=0 as=440 ps=124
M1005 A B OUT w_211_113# CMOSP w=20 l=2
+  ad=220 pd=62 as=0 ps=0
M1006 Bnot B Gnd Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=0 ps=0
M1007 OUT Bnot A Gnd CMOSN w=20 l=4
+  ad=0 pd=0 as=220 ps=62
C0 Bnot Anot 0.01fF
C1 A w_211_113# 0.06fF
C2 w_211_113# B 0.06fF
C3 w_211_113# OUT 0.09fF
C4 VDD Gnd 0.19fF
C5 w_212_28# OUT 0.09fF
C6 VDD Bnot 0.34fF
C7 Bnot B 0.04fF
C8 Bnot OUT 0.25fF
C9 VDD Anot 0.34fF
C10 w_212_28# Bnot 0.06fF
C11 OUT Anot 0.68fF
C12 Bnot Gnd 0.21fF
C13 VDD A 0.06fF
C14 VDD B 0.06fF
C15 w_212_28# Anot 0.06fF
C16 A OUT 0.68fF
C17 Anot Gnd 0.21fF
C18 B Gnd 0.62fF
C19 Gnd Gnd 0.28fF
C20 Anot Gnd 0.25fF
C21 OUT Gnd 0.10fF
C22 Bnot Gnd 0.47fF
C23 A Gnd 0.34fF
C24 w_212_28# Gnd 0.61fF
C25 VDD Gnd 2.47fF
C26 w_211_113# Gnd 0.67fF

.tran 1n 20n
.control
run
set color0 = white
set color1 = black
plot v(A) v(B)+2 v(OUT)+4
.endc
.end