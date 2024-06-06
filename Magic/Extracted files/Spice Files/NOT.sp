* SPICE3 file created from NOT.ext - technology: scmos

.include TSMC_180nm.txt
.param SUPPLY = 1.8
.global Gnd
Vdd VDD Gnd 'SUPPLY'

.option scale=0.09u

vinA In Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 5n 10n)

M1000 Out In Gnd Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=220 ps=62
M1001 Out In VDD VDD CMOSP w=20 l=2
+  ad=220 pd=62 as=220 ps=62
C0 VDD In 0.06fF
C1 Out Gnd 0.21fF
C2 VDD Out 0.34fF
C3 Gnd Gnd 0.17fF
C4 Out Gnd 0.13fF
C5 In Gnd 0.31fF
C6 VDD Gnd 1.24fF

.tran 1n 20n
.control
run
set color0 = white
set color1 = black
plot v(in) v(OUT)+2
.endc
.end