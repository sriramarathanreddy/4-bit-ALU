* SPICE3 file created from NOR2.ext - technology: scmos

.include TSMC_180nm.txt
.param SUPPLY = 1.8
.global Gnd
Vdd VDD Gnd 'SUPPLY'

.option scale=0.09u

vinA A Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 5n 10n)
VinB B Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10n 20n)

M1000 Gnd B OUT Gnd CMOSN w=20 l=4
+  ad=440 pd=124 as=440 ps=124
M1001 a_19_n50# A VDD VDD CMOSP w=20 l=2
+  ad=440 pd=124 as=220 ps=62
M1002 OUT B a_19_n50# w_13_n56# CMOSP w=20 l=2
+  ad=220 pd=62 as=0 ps=0
M1003 Gnd A OUT Gnd CMOSN w=20 l=4
+  ad=0 pd=0 as=0 ps=0
C0 OUT A 0.05fF
C1 OUT B 0.54fF
C2 VDD a_19_n50# 0.34fF
C3 OUT a_19_n50# 0.27fF
C4 Gnd A 0.32fF
C5 B w_13_n56# 0.06fF
C6 w_13_n56# a_19_n50# 0.09fF
C7 Gnd OUT 0.41fF
C8 A a_19_n50# 0.05fF
C9 VDD A 0.06fF
C10 OUT w_13_n56# 0.06fF
C11 Gnd Gnd 0.39fF
C12 OUT Gnd 0.42fF
C13 B Gnd 0.90fF
C14 a_19_n50# Gnd 0.13fF
C15 A Gnd 0.29fF
C16 w_13_n56# Gnd 1.16fF
C17 VDD Gnd 1.46fF

.tran 1n 20n
.control
run
set color0 = white
set color1 = black
plot v(A) v(B)+2 v(OUT)+4
.endc
.end