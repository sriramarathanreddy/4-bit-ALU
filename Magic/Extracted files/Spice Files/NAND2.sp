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
C0 B VDD 0.06fF
C1 Gnd a_32_n46# 0.21fF
C2 VDD OUT 0.67fF
C3 B OUT 0.16fF
C4 VDD A 0.06fF
C5 OUT a_32_n46# 0.21fF
C6 OUT A 0.29fF
C7 Gnd Gnd 0.32fF
C8 B Gnd 0.50fF
C9 a_32_n46# Gnd 0.22fF
C10 A Gnd 0.50fF
C11 OUT Gnd 0.48fF
C12 VDD Gnd 2.54fF

.tran 1n 20n
.control
run
set color0 = white
set color1 = black
plot v(A) v(B)+2 v(OUT)+4
.endc
.end