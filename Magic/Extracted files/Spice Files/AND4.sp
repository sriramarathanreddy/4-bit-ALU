* SPICE3 file created from AND4.ext - technology: scmos

.include TSMC_180nm.txt
.param SUPPLY = 1.8
.global Gnd
Vdd VDD Gnd 'SUPPLY'

.option scale=0.09u

vinA A Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 5n 10n)
VinB B Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10n 20n)
VinC C Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 20n 40n)
VinD D Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 40n 80n)

M1000 OUT a_296_181# Gnd Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=440 ps=124
M1001 a_296_181# A a_309_129# Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=440 ps=124
M1002 OUT a_296_181# VDD w_497_166# CMOSP w=20 l=2
+  ad=220 pd=62 as=1100 ps=310
M1003 a_296_181# C VDD w_389_175# CMOSP w=20 l=2
+  ad=880 pd=248 as=0 ps=0
M1004 a_309_49# D Gnd Gnd CMOSN w=20 l=4
+  ad=440 pd=124 as=0 ps=0
M1005 a_296_181# D VDD VDD CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1006 a_309_129# B a_309_89# Gnd CMOSN w=20 l=4
+  ad=0 pd=0 as=440 ps=124
M1007 a_296_181# B VDD w_333_175# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1008 a_296_181# A VDD VDD CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1009 a_309_89# C a_309_49# Gnd CMOSN w=20 l=4
+  ad=0 pd=0 as=0 ps=0
C0 C a_296_181# 0.16fF
C1 VDD w_497_166# 0.06fF
C2 w_389_175# VDD 0.09fF
C3 A VDD 0.06fF
C4 w_497_166# OUT 0.06fF
C5 a_309_129# a_296_181# 0.21fF
C6 D a_296_181# 0.16fF
C7 VDD OUT 0.21fF
C8 C w_389_175# 0.06fF
C9 w_333_175# VDD 0.09fF
C10 a_309_49# Gnd 0.22fF
C11 B w_333_175# 0.06fF
C12 a_309_89# a_309_129# 0.21fF
C13 w_497_166# a_296_181# 0.06fF
C14 w_389_175# a_296_181# 0.06fF
C15 Gnd OUT 0.14fF
C16 A a_296_181# 0.29fF
C17 VDD a_296_181# 1.22fF
C18 B a_296_181# 0.16fF
C19 w_333_175# a_296_181# 0.06fF
C20 D VDD 0.06fF
C21 a_309_89# a_309_49# 0.22fF
C22 D Gnd 0.39fF
C23 a_309_49# Gnd 0.21fF
C24 C Gnd 0.50fF
C25 a_309_89# Gnd 0.22fF
C26 B Gnd 0.33fF
C27 Gnd Gnd 0.32fF
C28 a_309_129# Gnd 0.18fF
C29 A Gnd 0.50fF
C30 OUT Gnd 0.13fF
C31 a_296_181# Gnd 1.26fF
C32 w_497_166# Gnd 1.16fF
C33 w_389_175# Gnd 1.16fF
C34 w_333_175# Gnd 1.16fF
C35 VDD Gnd 3.03fF

.tran 1n 160n
.control
run
set color0 = white
set color1 = black
plot v(A) v(B)+2 v(C)+4 v(D)+6 v(OUT)+8
.endc
.end