* SPICE3 file created from AND2.ext - technology: scmos

.include TSMC_180nm.txt
.param SUPPLY = 1.8
.global Gnd
Vdd VDD Gnd 'SUPPLY'

.option scale=0.09u

vinA A Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 5n 10n)
VinB B Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10n 20n)

M1000 a_191_104# A a_204_52# Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=440 ps=124
M1001 a_204_52# B Gnd Gnd CMOSN w=20 l=4
+  ad=0 pd=0 as=440 ps=124
M1002 a_191_104# A VDD VDD CMOSP w=20 l=2
+  ad=440 pd=124 as=660 ps=186
M1003 a_191_104# B VDD VDD CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1004 Out a_191_104# Gnd Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=0 ps=0
M1005 Out a_191_104# VDD w_283_89# CMOSP w=20 l=2
+  ad=220 pd=62 as=0 ps=0
C0 Out Gnd 0.14fF
C1 Out VDD 0.21fF
C2 B a_191_104# 0.10fF
C3 a_204_52# a_191_104# 0.21fF
C4 VDD a_191_104# 0.67fF
C5 a_204_52# B 0.19fF
C6 a_204_52# Gnd 0.21fF
C7 B VDD 0.06fF
C8 w_283_89# Out 0.06fF
C9 w_283_89# a_191_104# 0.06fF
C10 w_283_89# VDD 0.06fF
C11 A a_191_104# 0.47fF
C12 A VDD 0.06fF
C13 Gnd Gnd 0.32fF
C14 a_204_52# Gnd 0.20fF
C15 Out Gnd 0.13fF
C16 a_191_104# Gnd 0.78fF
C17 B Gnd 0.99fF
C18 A Gnd 0.62fF
C19 w_283_89# Gnd 1.16fF
C20 VDD Gnd 2.75fF

.tran 1n 20n
.control
run
set color0 = white
set color1 = black
plot v(A) v(B)+2 v(OUT)+4
.endc
.end