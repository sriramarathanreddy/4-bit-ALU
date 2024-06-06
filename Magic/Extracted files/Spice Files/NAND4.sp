* SPICE3 file created from nand4.ext - technology: scmos

.include TSMC_180nm.txt
.param SUPPLY = 1.8
.global Gnd
Vdd VDD Gnd 'SUPPLY'

.option scale=0.09u

vinA A Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 5n 10n)
VinB B Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10n 20n)
VinC C Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 20n 40n)
VinD D Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 40n 80n)

M1000 OUT D VDD VDD CMOSP w=20 l=2
+  ad=880 pd=248 as=880 ps=248
M1001 OUT C VDD w_325_137# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1002 OUT B VDD w_269_137# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1003 OUT A VDD VDD CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1004 OUT A a_245_91# Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=440 ps=124
M1005 a_245_91# B a_245_51# Gnd CMOSN w=20 l=4
+  ad=0 pd=0 as=440 ps=124
M1006 a_245_51# C a_245_11# Gnd CMOSN w=20 l=4
+  ad=0 pd=0 as=440 ps=124
M1007 a_245_11# D Gnd Gnd CMOSN w=20 l=4
+  ad=0 pd=0 as=220 ps=62
C0 OUT D 0.16fF
C1 A VDD 0.06fF
C2 OUT w_269_137# 0.06fF
C3 a_245_11# Gnd 0.22fF
C4 w_325_137# C 0.06fF
C5 OUT a_245_91# 0.21fF
C6 w_325_137# OUT 0.06fF
C7 a_245_91# a_245_51# 0.21fF
C8 OUT VDD 1.22fF
C9 OUT B 0.16fF
C10 D VDD 0.06fF
C11 VDD w_269_137# 0.09fF
C12 a_245_51# a_245_11# 0.22fF
C13 B w_269_137# 0.06fF
C14 OUT A 0.29fF
C15 OUT C 0.16fF
C16 w_325_137# VDD 0.09fF
C17 Gnd Gnd 0.32fF
C18 D Gnd 0.48fF
C19 a_245_11# Gnd 0.21fF
C20 C Gnd 0.50fF
C21 a_245_51# Gnd 0.22fF
C22 B Gnd 0.44fF
C23 a_245_91# Gnd 0.18fF
C24 A Gnd 0.50fF
C25 OUT Gnd 0.95fF
C26 w_325_137# Gnd 1.16fF
C27 w_269_137# Gnd 1.16fF
C28 VDD Gnd 2.83fF

.tran 1n 160n
.control
run
set color0 = white
set color1 = black
plot v(A) v(B)+2 v(C)+4 v(D)+6 v(OUT)+8
.endc
.end