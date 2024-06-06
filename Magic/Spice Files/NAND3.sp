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
C0 C a_196_10# 0.19fF
C1 w_220_96# OUT 0.06fF
C2 VDD OUT 0.95fF
C3 Gnd a_196_10# 0.22fF
C4 VDD A 0.06fF
C5 C OUT 0.10fF
C6 VDD w_220_96# 0.09fF
C7 a_196_50# a_196_10# 0.21fF
C8 B OUT 0.10fF
C9 a_196_50# B 0.19fF
C10 C VDD 0.06fF
C11 B w_220_96# 0.06fF
C12 a_196_50# OUT 0.21fF
C13 A OUT 0.47fF
C14 Gnd Gnd 0.32fF
C15 a_196_10# Gnd 0.20fF
C16 a_196_50# Gnd 0.20fF
C17 OUT Gnd 0.36fF
C18 C Gnd 0.56fF
C19 B Gnd 0.49fF
C20 A Gnd 0.26fF
C21 w_220_96# Gnd 0.93fF
C22 VDD Gnd 1.37fF

.tran 1n 40n
.control
run
set color0 = white
set color1 = black
plot v(A) v(B)+2 v(C)+4 v(OUT)+6
.endc
.end