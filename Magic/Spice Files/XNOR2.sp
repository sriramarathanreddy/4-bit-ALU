* SPICE3 file created from XNOR2.ext - technology: scmos

.include TSMC_180nm.txt
.param SUPPLY = 1.8
.global Gnd
Vdd VDD Gnd 'SUPPLY'

.option scale=0.09u

vinA A Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 5n 10n)
VinB B Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10n 20n)

M1000 VDD A a_421_43# VDD CMOSP w=10 l=2
+  ad=140 pd=68 as=70 ps=34
M1001 a_421_43# A Gnd Gnd CMOSN w=10 l=4
+  ad=60 pd=32 as=120 ps=64
M1002 Out a_421_43# a_491_39# Gnd CMOSN w=10 l=4
+  ad=120 pd=64 as=120 ps=64
M1003 a_491_39# B Gnd Gnd CMOSN w=10 l=4
+  ad=0 pd=0 as=0 ps=0
M1004 B A Out Gnd CMOSN w=10 l=4
+  ad=60 pd=32 as=0 ps=0
M1005 VDD B a_491_39# VDD CMOSP w=10 l=2
+  ad=0 pd=0 as=140 ps=68
M1006 Out A a_491_39# VDD CMOSP w=10 l=2
+  ad=140 pd=68 as=0 ps=0
M1007 B a_421_43# Out VDD CMOSP w=10 l=2
+  ad=70 pd=34 as=0 ps=0
C0 a_421_43# Gnd 0.17fF
C1 Out a_491_39# 0.23fF
C2 Out B 0.23fF
C3 a_491_39# VDD 0.61fF
C4 A a_421_43# 0.14fF
C5 VDD B 0.42fF
C6 VDD A 0.27fF
C7 Out a_421_43# 0.09fF
C8 Out VDD 0.19fF
C9 VDD a_421_43# 0.17fF
C10 a_491_39# Gnd 0.07fF
C11 B Gnd 0.12fF
C12 A Gnd 0.28fF
C13 a_491_39# B 0.01fF
C14 a_491_39# A 0.02fF
C15 A B 0.19fF
C16 Gnd Gnd 0.36fF
C17 B Gnd 0.78fF
C18 a_421_43# Gnd 0.21fF
C19 a_491_39# Gnd 0.57fF
C20 Out Gnd 0.62fF
C21 A Gnd 0.36fF
C22 VDD Gnd 3.85fF

.tran 1n 20n
.control
run
set color0 = white
set color1 = black
plot v(A) v(B)+2 v(OUT)+4
.endc
.end