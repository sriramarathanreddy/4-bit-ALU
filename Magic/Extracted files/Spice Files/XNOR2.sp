* SPICE3 file created from XNOR2.ext - technology: scmos

.include TSMC_180nm.txt
.param SUPPLY = 1.8
.global Gnd
Vdd VDD Gnd 'SUPPLY'

.option scale=0.09u

vinA A Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 5n 10n)
VinB B Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10n 20n)

M1000 OUT B A Gnd CMOSN w=20 l=4
+  ad=420 pd=122 as=220 ps=62
M1001 Anot A Gnd Gnd CMOSN w=20 l=4
+  ad=440 pd=124 as=440 ps=124
M1002 Anot A VDD VDD CMOSP w=20 l=2
+  ad=440 pd=124 as=440 ps=124
M1003 Anot B OUT w_258_135# CMOSP w=20 l=2
+  ad=0 pd=0 as=440 ps=124
M1004 A Bnot OUT w_259_50# CMOSP w=20 l=2
+  ad=220 pd=62 as=0 ps=0
M1005 Bnot B Gnd Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=0 ps=0
M1006 OUT Bnot Anot Gnd CMOSN w=20 l=4
+  ad=0 pd=0 as=0 ps=0
M1007 Bnot B VDD VDD CMOSP w=20 l=2
+  ad=220 pd=62 as=0 ps=0
C0 Bnot Gnd 0.21fF
C1 OUT A 0.68fF
C2 w_258_135# B 0.06fF
C3 w_259_50# A 0.06fF
C4 VDD Gnd 0.19fF
C5 Anot OUT 0.68fF
C6 w_258_135# OUT 0.09fF
C7 VDD Bnot 0.34fF
C8 Bnot B 0.04fF
C9 Bnot OUT 0.25fF
C10 VDD B 0.06fF
C11 w_259_50# Bnot 0.06fF
C12 w_258_135# Anot 0.06fF
C13 Anot Gnd 0.21fF
C14 Anot Bnot 0.01fF
C15 w_259_50# OUT 0.09fF
C16 VDD A 0.06fF
C17 VDD Anot 0.34fF
C18 B Gnd 0.62fF
C19 Gnd Gnd 0.28fF
C20 A Gnd 0.43fF
C21 OUT Gnd 0.10fF
C22 Bnot Gnd 0.47fF
C23 Anot Gnd 0.15fF
C24 w_259_50# Gnd 0.61fF
C25 VDD Gnd 2.47fF
C26 w_258_135# Gnd 0.67fF

.tran 1n 20n
.control
run
set color0 = white
set color1 = black
plot v(A) v(B)+2 v(OUT)+4
.endc
.end