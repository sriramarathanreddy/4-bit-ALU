* SPICE3 file created from AND3.ext - technology: scmos

.include TSMC_180nm.txt
.param SUPPLY = 1.8
.global Gnd
Vdd VDD Gnd 'SUPPLY'

.option scale=0.09u

vinA A Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 5n 10n)
VinB B Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10n 20n)
VinC C Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 20n 40n)

M1000 a_220_142# A VDD VDD CMOSP w=20 l=2
+  ad=660 pd=186 as=880 ps=248
M1001 a_233_50# C Gnd Gnd CMOSN w=20 l=4
+  ad=440 pd=124 as=440 ps=124
M1002 OUT a_220_142# VDD w_365_127# CMOSP w=20 l=2
+  ad=220 pd=62 as=0 ps=0
M1003 a_220_142# B VDD w_257_136# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1004 a_220_142# C VDD VDD CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1005 a_220_142# A a_233_90# Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=440 ps=124
M1006 OUT a_220_142# Gnd Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=0 ps=0
M1007 a_233_90# B a_233_50# Gnd CMOSN w=20 l=4
+  ad=0 pd=0 as=0 ps=0
C0 OUT Gnd 0.14fF
C1 a_220_142# B 0.16fF
C2 a_220_142# w_365_127# 0.06fF
C3 A VDD 0.06fF
C4 w_257_136# B 0.06fF
C5 a_233_90# a_220_142# 0.21fF
C6 a_220_142# C 0.16fF
C7 OUT VDD 0.21fF
C8 a_220_142# w_257_136# 0.06fF
C9 w_365_127# VDD 0.06fF
C10 A a_220_142# 0.29fF
C11 a_220_142# VDD 0.95fF
C12 OUT w_365_127# 0.06fF
C13 a_233_90# a_233_50# 0.21fF
C14 a_233_50# Gnd 0.22fF
C15 VDD C 0.06fF
C16 w_257_136# VDD 0.09fF
C17 C Gnd 0.51fF
C18 a_233_50# Gnd 0.22fF
C19 B Gnd 0.51fF
C20 Gnd Gnd 0.32fF
C21 a_233_90# Gnd 0.22fF
C22 A Gnd 0.45fF
C23 a_220_142# Gnd 0.41fF
C24 w_365_127# Gnd 1.16fF
C25 w_257_136# Gnd 0.93fF
C26 VDD Gnd 1.37fF

.tran 1n 40n
.control
run
set color0 = white
set color1 = black
plot v(A) v(B)+2 v(C)+4 v(OUT)+6
.endc
.end