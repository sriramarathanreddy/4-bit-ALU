* SPICE3 file created from NAND4.ext - technology: scmos

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
C0 C a_245_51# 0.19fF
C1 B OUT 0.10fF
C2 w_269_137# VDD 0.09fF
C3 w_325_137# VDD 0.09fF
C4 w_269_137# OUT 0.06fF
C5 a_245_51# a_245_11# 0.22fF
C6 A VDD 0.06fF
C7 w_325_137# OUT 0.06fF
C8 B w_269_137# 0.06fF
C9 A OUT 0.47fF
C10 a_245_11# D 0.19fF
C11 D VDD 0.06fF
C12 D OUT 0.10fF
C13 a_245_11# Gnd 0.22fF
C14 OUT a_245_91# 0.21fF
C15 B a_245_91# 0.19fF
C16 C OUT 0.10fF
C17 a_245_51# a_245_91# 0.21fF
C18 w_325_137# C 0.06fF
C19 OUT VDD 1.22fF
C20 Gnd Gnd 0.32fF
C21 a_245_11# Gnd 0.19fF
C22 a_245_51# Gnd 0.20fF
C23 a_245_91# Gnd 0.16fF
C24 OUT Gnd 0.91fF
C25 D Gnd 0.56fF
C26 C Gnd 0.56fF
C27 B Gnd 0.93fF
C28 A Gnd 0.62fF
C29 w_325_137# Gnd 1.16fF
C30 w_269_137# Gnd 1.16fF
C31 VDD Gnd 2.83fF

.tran 1n 160n
.control
run
set color0 = white
set color1 = black
plot v(A) v(B)+2 v(C)+4 v(D)+6 v(OUT)+8
.endc
.end