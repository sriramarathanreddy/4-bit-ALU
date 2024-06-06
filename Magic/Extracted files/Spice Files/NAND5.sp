* SPICE3 file created from NAND5.ext - technology: scmos

.include TSMC_180nm.txt
.param SUPPLY = 1.8
.global Gnd
Vdd VDD Gnd 'SUPPLY'

.option scale=0.09u

vinA A Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 5n 10n)
VinB B Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10n 20n)
VinC C Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 20n 40n)
VinD D Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 40n 80n)
VinE E Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 80n 160n)

M1000 a_310_128# B a_310_88# Gnd CMOSN w=20 l=4
+  ad=440 pd=124 as=440 ps=124
M1001 a_310_9# E Gnd Gnd CMOSN w=20 l=4
+  ad=440 pd=124 as=220 ps=62
M1002 OUT A a_310_128# Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=0 ps=0
M1003 a_310_88# C a_310_48# Gnd CMOSN w=20 l=4
+  ad=0 pd=0 as=440 ps=124
M1004 OUT C VDD w_390_174# CMOSP w=20 l=2
+  ad=1100 pd=310 as=1100 ps=310
M1005 OUT E VDD VDD CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1006 OUT D VDD w_446_174# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1007 OUT B VDD w_334_174# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1008 OUT A VDD VDD CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1009 a_310_48# D a_310_9# Gnd CMOSN w=20 l=4
+  ad=0 pd=0 as=0 ps=0
C0 OUT E 0.16fF
C1 OUT A 0.29fF
C2 w_390_174# OUT 0.06fF
C3 a_310_88# a_310_48# 0.22fF
C4 OUT B 0.16fF
C5 VDD w_446_174# 0.09fF
C6 w_334_174# B 0.06fF
C7 a_310_48# a_310_9# 0.22fF
C8 OUT D 0.16fF
C9 VDD E 0.06fF
C10 VDD A 0.06fF
C11 w_334_174# OUT 0.06fF
C12 w_390_174# C 0.06fF
C13 VDD w_390_174# 0.09fF
C14 a_310_9# Gnd 0.22fF
C15 OUT a_310_128# 0.21fF
C16 a_310_128# a_310_88# 0.21fF
C17 w_446_174# D 0.06fF
C18 w_446_174# OUT 0.06fF
C19 OUT C 0.16fF
C20 VDD OUT 1.50fF
C21 VDD w_334_174# 0.09fF
C22 Gnd Gnd 0.32fF
C23 E Gnd 0.51fF
C24 a_310_9# Gnd 0.21fF
C25 D Gnd 0.50fF
C26 a_310_48# Gnd 0.21fF
C27 C Gnd 0.45fF
C28 a_310_88# Gnd 0.18fF
C29 B Gnd 0.51fF
C30 a_310_128# Gnd 0.22fF
C31 A Gnd 0.51fF
C32 OUT Gnd 0.20fF
C33 w_446_174# Gnd 0.55fF
C34 w_390_174# Gnd 1.16fF
C35 w_334_174# Gnd 0.93fF
C36 VDD Gnd 1.37fF

.tran 1n 160n
.control
run
set color0 = white
set color1 = black
plot v(A) v(B)+2 v(C)+4 v(D)+6 v(E)+8 v(OUT)+10
.endc
.end