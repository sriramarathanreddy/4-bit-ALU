* SPICE3 file created from Xor.ext - technology: scmos

.include TSMC_180nm.txt
.param SUPPLY = 1.8
.global Gnd
Vdd VDD Gnd 'SUPPLY'

.option scale=0.09u

vinA A Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 5n 10n)
VinB B Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10n 20n)

M1000 a_n110_n23# A Gnd Gnd CMOSN w=10 l=4
+  ad=60 pd=32 as=120 ps=64
M1001 VDD A a_n110_n23# VDD CMOSP w=10 l=2
+  ad=140 pd=68 as=70 ps=34
M1002 Out A B VDD CMOSP w=10 l=2
+  ad=140 pd=68 as=70 ps=34
M1003 a_n40_n27# A Out Gnd CMOSN w=10 l=4
+  ad=120 pd=64 as=120 ps=64
M1004 VDD B a_n40_n27# VDD CMOSP w=10 l=2
+  ad=0 pd=0 as=140 ps=68
M1005 a_n40_n27# a_n110_n23# Out VDD CMOSP w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1006 Out a_n110_n23# B Gnd CMOSN w=10 l=4
+  ad=0 pd=0 as=60 ps=32
M1007 a_n40_n27# B Gnd Gnd CMOSN w=10 l=4
+  ad=0 pd=0 as=0 ps=0
C0 VDD A 0.41fF
C1 a_n40_n27# Out 0.23fF
C2 B Gnd 0.02fF
C3 a_n110_n23# Gnd 0.17fF
C4 B VDD 0.91fF
C5 a_n40_n27# Gnd 0.07fF
C6 a_n110_n23# VDD 0.17fF
C7 a_n110_n23# A 0.14fF
C8 VDD Out 0.19fF
C9 a_n40_n27# VDD 0.67fF
C10 B Out 0.23fF
C11 Gnd A 0.28fF
C12 a_n110_n23# Out 0.09fF
C13 Gnd Gnd 0.36fF
C14 a_n40_n27# Gnd 0.30fF
C15 a_n110_n23# Gnd 0.21fF
C16 B Gnd 0.70fF
C17 A Gnd 0.36fF
C18 Out Gnd 0.62fF
C19 VDD Gnd 3.86fF

.tran 1n 20n
.control
run
set color0 = white
set color1 = black
plot v(A) v(B)+2 v(OUT)+4
.endc
.end