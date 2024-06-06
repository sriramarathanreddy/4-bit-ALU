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
C0 a_310_128# B 0.19fF
C1 w_334_174# OUT 0.06fF
C2 OUT w_446_174# 0.06fF
C3 a_310_88# a_310_48# 0.22fF
C4 E OUT 0.10fF
C5 OUT w_390_174# 0.06fF
C6 C w_390_174# 0.06fF
C7 E a_310_9# 0.19fF
C8 a_310_128# a_310_88# 0.21fF
C9 OUT B 0.10fF
C10 a_310_48# a_310_9# 0.22fF
C11 OUT a_310_128# 0.21fF
C12 D OUT 0.10fF
C13 VDD A 0.06fF
C14 VDD OUT 1.50fF
C15 C a_310_88# 0.19fF
C16 w_334_174# B 0.06fF
C17 OUT A 0.47fF
C18 a_310_9# Gnd 0.22fF
C19 D w_446_174# 0.06fF
C20 C OUT 0.10fF
C21 VDD w_334_174# 0.09fF
C22 VDD w_446_174# 0.09fF
C23 VDD E 0.06fF
C24 VDD w_390_174# 0.09fF
C25 D a_310_48# 0.19fF
C26 Gnd Gnd 0.32fF
C27 a_310_9# Gnd 0.19fF
C28 a_310_48# Gnd 0.19fF
C29 a_310_88# Gnd 0.16fF
C30 a_310_128# Gnd 0.20fF
C31 OUT Gnd 0.20fF
C32 E Gnd 0.56fF
C33 D Gnd 0.56fF
C34 C Gnd 0.49fF
C35 B Gnd 0.82fF
C36 A Gnd 0.25fF
C37 w_446_174# Gnd 0.55fF
C38 w_390_174# Gnd 1.16fF
C39 w_334_174# Gnd 0.93fF
C40 VDD Gnd 1.37fF

.tran 1n 160n
.control
run
set color0 = white
set color1 = black
plot v(A) v(B)+2 v(C)+4 v(D)+6 v(E)+8 v(OUT)+10
.endc
.end