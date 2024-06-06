* SPICE3 file created from OR2.ext - technology: scmos

.include TSMC_180nm.txt
.param SUPPLY = 1.8
.global Gnd
Vdd VDD Gnd 'SUPPLY'

.option scale=0.09u

vinA A Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 5n 10n)
VinB B Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10n 20n)

M1000 a_293_66# A VDD VDD CMOSP w=20 l=2
+  ad=440 pd=124 as=440 ps=124
M1001 a_282_20# B a_293_66# w_287_60# CMOSP w=20 l=2
+  ad=220 pd=62 as=0 ps=0
M1002 Gnd A a_282_20# Gnd CMOSN w=20 l=4
+  ad=660 pd=186 as=440 ps=124
M1003 Gnd B a_282_20# Gnd CMOSN w=20 l=4
+  ad=0 pd=0 as=0 ps=0
M1004 OUT a_282_20# Gnd Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=0 ps=0
M1005 OUT a_282_20# VDD w_375_53# CMOSP w=20 l=2
+  ad=220 pd=62 as=0 ps=0
C0 VDD OUT 0.21fF
C1 a_282_20# Gnd 0.41fF
C2 B a_282_20# 0.54fF
C3 w_287_60# a_293_66# 0.09fF
C4 VDD A 0.06fF
C5 a_293_66# A 0.05fF
C6 a_293_66# a_282_20# 0.27fF
C7 VDD w_375_53# 0.06fF
C8 w_287_60# a_282_20# 0.06fF
C9 w_375_53# OUT 0.06fF
C10 A a_282_20# 0.05fF
C11 OUT Gnd 0.14fF
C12 w_287_60# B 0.06fF
C13 w_375_53# a_282_20# 0.06fF
C14 A Gnd 0.22fF
C15 VDD a_293_66# 0.34fF
C16 Gnd Gnd 0.40fF
C17 OUT Gnd 0.13fF
C18 a_282_20# Gnd 0.42fF
C19 B Gnd 0.90fF
C20 a_293_66# Gnd 0.13fF
C21 A Gnd 0.29fF
C22 w_375_53# Gnd 1.16fF
C23 w_287_60# Gnd 1.16fF
C24 VDD Gnd 1.86fF

.tran 1n 20n
.control
run
set color0 = white
set color1 = black
plot v(A) v(B)+2 v(OUT)+4
.endc
.end