* SPICE3 file created from NAND3.ext - technology: scmos

.include TSMC_180nm.txt
.param SUPPLY = 1.8
.global Gnd
Vdd VDD Gnd 'SUPPLY'

.option scale=0.09u

vinA A Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 5n 10n)
VinB B Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10n 20n)
VinC C Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 20n 40n)

M1000 OUT C VDD VDD CMOSP w=20 l=2
+  ad=660 pd=186 as=660 ps=186
M1001 OUT A VDD VDD CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1002 OUT A a_196_50# Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=440 ps=124
M1003 a_196_10# C Gnd Gnd CMOSN w=20 l=4
+  ad=440 pd=124 as=220 ps=62
M1004 a_196_50# B a_196_10# Gnd CMOSN w=20 l=4
+  ad=0 pd=0 as=0 ps=0
M1005 OUT B VDD w_220_96# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
C0 OUT B 0.16fF
C1 OUT w_220_96# 0.06fF
C2 A VDD 0.06fF
C3 OUT C 0.16fF
C4 OUT a_196_50# 0.21fF
C5 VDD w_220_96# 0.09fF
C6 a_196_10# Gnd 0.22fF
C7 OUT VDD 0.95fF
C8 C VDD 0.06fF
C9 OUT A 0.29fF
C10 a_196_50# a_196_10# 0.21fF
C11 B w_220_96# 0.06fF
C12 Gnd Gnd 0.32fF
C13 C Gnd 0.51fF
C14 a_196_10# Gnd 0.22fF
C15 B Gnd 0.51fF
C16 a_196_50# Gnd 0.22fF
C17 A Gnd 0.45fF
C18 OUT Gnd 0.41fF
C19 w_220_96# Gnd 0.93fF
C20 VDD Gnd 1.37fF

.tran 1n 40n
.control
run
set color0 = white
set color1 = black
plot v(A) v(B)+2 v(C)+4 v(OUT)+6
.endc
.end