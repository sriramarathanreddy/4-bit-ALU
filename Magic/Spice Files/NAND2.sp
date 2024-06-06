* SPICE3 file created from NAND2.ext - technology: scmos

.include TSMC_180nm.txt
.param SUPPLY = 1.8
.global Gnd
Vdd VDD Gnd 'SUPPLY'

.option scale=0.09u

vinA A Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 5n 10n)
VinB B Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10n 20n)

M1000 OUT A VDD VDD CMOSP w=20 l=2
+  ad=440 pd=124 as=440 ps=124
M1001 OUT A a_32_n46# Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=440 ps=124
M1002 OUT B VDD VDD CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1003 a_32_n46# B Gnd Gnd CMOSN w=20 l=4
+  ad=0 pd=0 as=220 ps=62
C0 OUT a_32_n46# 0.21fF
C1 B VDD 0.06fF
C2 A VDD 0.06fF
C3 OUT B 0.10fF
C4 a_32_n46# Gnd 0.21fF
C5 a_32_n46# B 0.19fF
C6 OUT A 0.47fF
C7 OUT VDD 0.67fF
C8 Gnd Gnd 0.32fF
C9 a_32_n46# Gnd 0.20fF
C10 OUT Gnd 0.47fF
C11 B Gnd 0.99fF
C12 A Gnd 0.62fF
C13 VDD Gnd 2.54fF

.tran 1n 20n
.control
run
set color0 = white
set color1 = black
plot v(A) v(B)+2 v(OUT)+4
.endc
.end